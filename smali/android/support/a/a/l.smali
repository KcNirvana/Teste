.class public Landroid/support/a/a/l;
.super Landroid/support/a/a/r$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/a/a/l$b;,
        Landroid/support/a/a/l$a;,
        Landroid/support/a/a/l$d;,
        Landroid/support/a/a/l$c;
    }
.end annotation


# instance fields
.field a:I

.field b:Landroid/support/a/a/o;

.field c:Z

.field d:I

.field e:I

.field f:Landroid/support/a/a/l$d;

.field final g:Landroid/support/a/a/l$a;

.field private k:Landroid/support/a/a/l$c;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z


# direct methods
.method private A()V
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/a/a/l;->a:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/a/a/l;->e()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/support/a/a/l;->m:Z

    iput-boolean v0, p0, Landroid/support/a/a/l;->c:Z

    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Landroid/support/a/a/l;->m:Z

    if-nez v1, :cond_2

    :goto_1
    iput-boolean v0, p0, Landroid/support/a/a/l;->c:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private B()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroid/support/a/a/l;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/a/a/l;->q()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/a/a/l;->e(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private C()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroid/support/a/a/l;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/a/a/l;->e(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/a/a/l;->q()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private a(ILandroid/support/a/a/r$o;Landroid/support/a/a/r$t;Z)I
    .locals 3

    iget-object v0, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v0}, Landroid/support/a/a/o;->d()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_1

    neg-int v0, v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/support/a/a/l;->c(ILandroid/support/a/a/r$o;Landroid/support/a/a/r$t;)I

    move-result v0

    neg-int v0, v0

    add-int v1, p1, v0

    if-eqz p4, :cond_0

    iget-object v2, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v2}, Landroid/support/a/a/o;->d()I

    move-result v2

    sub-int v1, v2, v1

    if-lez v1, :cond_0

    iget-object v2, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v2, v1}, Landroid/support/a/a/o;->a(I)V

    add-int/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(ZZ)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Landroid/support/a/a/l;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/a/a/l;->q()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/a/a/l;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/a/a/l;->q()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/a/a/l;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private a(IIZLandroid/support/a/a/r$t;)V
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    invoke-virtual {p0, p4}, Landroid/support/a/a/l;->a(Landroid/support/a/a/r$t;)I

    move-result v3

    iput v3, v2, Landroid/support/a/a/l$c;->h:I

    iget-object v2, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iput p1, v2, Landroid/support/a/a/l$c;->f:I

    if-ne p1, v1, :cond_2

    iget-object v2, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget v3, v2, Landroid/support/a/a/l$c;->h:I

    iget-object v4, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v4}, Landroid/support/a/a/o;->g()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/support/a/a/l$c;->h:I

    invoke-direct {p0}, Landroid/support/a/a/l;->C()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget-boolean v4, p0, Landroid/support/a/a/l;->c:Z

    if-eqz v4, :cond_1

    :goto_0
    iput v0, v3, Landroid/support/a/a/l$c;->e:I

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    invoke-virtual {p0, v2}, Landroid/support/a/a/l;->d(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget v3, v3, Landroid/support/a/a/l$c;->e:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/support/a/a/l$c;->d:I

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget-object v1, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v1, v2}, Landroid/support/a/a/o;->b(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/a/a/l$c;->b:I

    iget-object v0, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v0, v2}, Landroid/support/a/a/o;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v1}, Landroid/support/a/a/o;->d()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_1
    iget-object v1, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iput p2, v1, Landroid/support/a/a/l$c;->c:I

    if-eqz p3, :cond_0

    iget-object v1, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget v2, v1, Landroid/support/a/a/l$c;->c:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/support/a/a/l$c;->c:I

    :cond_0
    iget-object v1, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iput v0, v1, Landroid/support/a/a/l$c;->g:I

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/support/a/a/l;->B()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget v4, v3, Landroid/support/a/a/l$c;->h:I

    iget-object v5, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v5}, Landroid/support/a/a/o;->c()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/a/a/l$c;->h:I

    iget-object v3, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget-boolean v4, p0, Landroid/support/a/a/l;->c:Z

    if-eqz v4, :cond_3

    :goto_2
    iput v1, v3, Landroid/support/a/a/l$c;->e:I

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    invoke-virtual {p0, v2}, Landroid/support/a/a/l;->d(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget v3, v3, Landroid/support/a/a/l$c;->e:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/support/a/a/l$c;->d:I

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget-object v1, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v1, v2}, Landroid/support/a/a/o;->a(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/a/a/l$c;->b:I

    iget-object v0, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v0, v2}, Landroid/support/a/a/o;->a(Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v1}, Landroid/support/a/a/o;->c()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_2
.end method

.method private a(Landroid/support/a/a/l$a;)V
    .locals 2

    iget v0, p1, Landroid/support/a/a/l$a;->a:I

    iget v1, p1, Landroid/support/a/a/l$a;->b:I

    invoke-direct {p0, v0, v1}, Landroid/support/a/a/l;->b(II)V

    return-void
.end method

.method private a(Landroid/support/a/a/r$o;I)V
    .locals 5

    const/4 v1, 0x0

    if-gez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/support/a/a/l;->q()I

    move-result v2

    iget-boolean v0, p0, Landroid/support/a/a/l;->c:Z

    if-eqz v0, :cond_3

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/a/a/l;->e(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v3, v1}, Landroid/support/a/a/o;->b(Landroid/view/View;)I

    move-result v1

    if-le v1, p2, :cond_2

    add-int/lit8 v1, v2, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/a/a/l;->a(Landroid/support/a/a/r$o;II)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_2
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/a/a/l;->e(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v4, v3}, Landroid/support/a/a/o;->b(Landroid/view/View;)I

    move-result v3

    if-le v3, p2, :cond_4

    invoke-direct {p0, p1, v1, v0}, Landroid/support/a/a/l;->a(Landroid/support/a/a/r$o;II)V

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private a(Landroid/support/a/a/r$o;II)V
    .locals 1

    if-ne p2, p3, :cond_1

    :cond_0
    return-void

    :cond_1
    if-le p3, p2, :cond_2

    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_0

    invoke-virtual {p0, v0, p1}, Landroid/support/a/a/l;->a(ILandroid/support/a/a/r$o;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-le p2, p3, :cond_0

    invoke-virtual {p0, p2, p1}, Landroid/support/a/a/l;->a(ILandroid/support/a/a/r$o;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1
.end method

.method private a(Landroid/support/a/a/r$o;Landroid/support/a/a/l$c;)V
    .locals 2

    iget-boolean v0, p2, Landroid/support/a/a/l$c;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p2, Landroid/support/a/a/l$c;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p2, Landroid/support/a/a/l$c;->g:I

    invoke-direct {p0, p1, v0}, Landroid/support/a/a/l;->b(Landroid/support/a/a/r$o;I)V

    goto :goto_0

    :cond_1
    iget v0, p2, Landroid/support/a/a/l$c;->g:I

    invoke-direct {p0, p1, v0}, Landroid/support/a/a/l;->a(Landroid/support/a/a/r$o;I)V

    goto :goto_0
.end method

.method private a(Landroid/support/a/a/r$t;Landroid/support/a/a/l$a;)Z
    .locals 6

    const/4 v5, -0x1

    const/high16 v4, -0x80000000

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/support/a/a/r$t;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/a/a/l;->d:I

    if-ne v0, v5, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget v0, p0, Landroid/support/a/a/l;->d:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/support/a/a/l;->d:I

    invoke-virtual {p1}, Landroid/support/a/a/r$t;->d()I

    move-result v3

    if-lt v0, v3, :cond_3

    :cond_2
    iput v5, p0, Landroid/support/a/a/l;->d:I

    iput v4, p0, Landroid/support/a/a/l;->e:I

    move v1, v2

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/support/a/a/l;->d:I

    iput v0, p2, Landroid/support/a/a/l$a;->a:I

    iget-object v0, p0, Landroid/support/a/a/l;->f:Landroid/support/a/a/l$d;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/a/a/l;->f:Landroid/support/a/a/l$d;

    invoke-virtual {v0}, Landroid/support/a/a/l$d;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/a/a/l;->f:Landroid/support/a/a/l$d;

    iget-boolean v0, v0, Landroid/support/a/a/l$d;->c:Z

    iput-boolean v0, p2, Landroid/support/a/a/l$a;->c:Z

    iget-boolean v0, p2, Landroid/support/a/a/l$a;->c:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v0}, Landroid/support/a/a/o;->d()I

    move-result v0

    iget-object v2, p0, Landroid/support/a/a/l;->f:Landroid/support/a/a/l$d;

    iget v2, v2, Landroid/support/a/a/l$d;->b:I

    sub-int/2addr v0, v2

    iput v0, p2, Landroid/support/a/a/l$a;->b:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v0}, Landroid/support/a/a/o;->c()I

    move-result v0

    iget-object v2, p0, Landroid/support/a/a/l;->f:Landroid/support/a/a/l$d;

    iget v2, v2, Landroid/support/a/a/l$d;->b:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/support/a/a/l$a;->b:I

    goto :goto_0

    :cond_5
    iget v0, p0, Landroid/support/a/a/l;->e:I

    if-ne v0, v4, :cond_e

    iget v0, p0, Landroid/support/a/a/l;->d:I

    invoke-virtual {p0, v0}, Landroid/support/a/a/l;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v3, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v3, v0}, Landroid/support/a/a/o;->c(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v4}, Landroid/support/a/a/o;->f()I

    move-result v4

    if-le v3, v4, :cond_6

    invoke-virtual {p2}, Landroid/support/a/a/l$a;->b()V

    goto :goto_0

    :cond_6
    iget-object v3, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v3, v0}, Landroid/support/a/a/o;->a(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v4}, Landroid/support/a/a/o;->c()I

    move-result v4

    sub-int/2addr v3, v4

    if-gez v3, :cond_7

    iget-object v0, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v0}, Landroid/support/a/a/o;->c()I

    move-result v0

    iput v0, p2, Landroid/support/a/a/l$a;->b:I

    iput-boolean v2, p2, Landroid/support/a/a/l$a;->c:Z

    goto :goto_0

    :cond_7
    iget-object v2, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v2}, Landroid/support/a/a/o;->d()I

    move-result v2

    iget-object v3, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v3, v0}, Landroid/support/a/a/o;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    if-gez v2, :cond_8

    iget-object v0, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v0}, Landroid/support/a/a/o;->d()I

    move-result v0

    iput v0, p2, Landroid/support/a/a/l$a;->b:I

    iput-boolean v1, p2, Landroid/support/a/a/l$a;->c:Z

    goto/16 :goto_0

    :cond_8
    iget-boolean v2, p2, Landroid/support/a/a/l$a;->c:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v2, v0}, Landroid/support/a/a/o;->b(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v2}, Landroid/support/a/a/o;->b()I

    move-result v2

    add-int/2addr v0, v2

    :goto_1
    iput v0, p2, Landroid/support/a/a/l$a;->b:I

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v2, v0}, Landroid/support/a/a/o;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, Landroid/support/a/a/l;->q()I

    move-result v0

    if-lez v0, :cond_c

    invoke-virtual {p0, v2}, Landroid/support/a/a/l;->e(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/a/a/l;->d(Landroid/view/View;)I

    move-result v0

    iget v3, p0, Landroid/support/a/a/l;->d:I

    if-ge v3, v0, :cond_d

    move v0, v1

    :goto_2
    iget-boolean v3, p0, Landroid/support/a/a/l;->c:Z

    if-ne v0, v3, :cond_b

    move v2, v1

    :cond_b
    iput-boolean v2, p2, Landroid/support/a/a/l$a;->c:Z

    :cond_c
    invoke-virtual {p2}, Landroid/support/a/a/l$a;->b()V

    goto/16 :goto_0

    :cond_d
    move v0, v2

    goto :goto_2

    :cond_e
    iget-boolean v0, p0, Landroid/support/a/a/l;->c:Z

    iput-boolean v0, p2, Landroid/support/a/a/l$a;->c:Z

    iget-boolean v0, p0, Landroid/support/a/a/l;->c:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v0}, Landroid/support/a/a/o;->d()I

    move-result v0

    iget v2, p0, Landroid/support/a/a/l;->e:I

    sub-int/2addr v0, v2

    iput v0, p2, Landroid/support/a/a/l$a;->b:I

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v0}, Landroid/support/a/a/o;->c()I

    move-result v0

    iget v2, p0, Landroid/support/a/a/l;->e:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/support/a/a/l$a;->b:I

    goto/16 :goto_0
.end method

.method private b(ILandroid/support/a/a/r$o;Landroid/support/a/a/r$t;Z)I
    .locals 4

    iget-object v0, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v0}, Landroid/support/a/a/o;->c()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v0, p2, p3}, Landroid/support/a/a/l;->c(ILandroid/support/a/a/r$o;Landroid/support/a/a/r$t;)I

    move-result v0

    neg-int v0, v0

    add-int v1, p1, v0

    if-eqz p4, :cond_0

    iget-object v2, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v2}, Landroid/support/a/a/o;->c()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    iget-object v2, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Landroid/support/a/a/o;->a(I)V

    sub-int/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(ZZ)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Landroid/support/a/a/l;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/a/a/l;->q()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/a/a/l;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/a/a/l;->q()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/a/a/l;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private b(II)V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget-object v2, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v2}, Landroid/support/a/a/o;->d()I

    move-result v2

    sub-int/2addr v2, p2

    iput v2, v0, Landroid/support/a/a/l$c;->c:I

    iget-object v2, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget-boolean v0, p0, Landroid/support/a/a/l;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, v2, Landroid/support/a/a/l$c;->e:I

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iput p1, v0, Landroid/support/a/a/l$c;->d:I

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iput v1, v0, Landroid/support/a/a/l$c;->f:I

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iput p2, v0, Landroid/support/a/a/l$c;->b:I

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/a/a/l$c;->g:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private b(Landroid/support/a/a/l$a;)V
    .locals 2

    iget v0, p1, Landroid/support/a/a/l$a;->a:I

    iget v1, p1, Landroid/support/a/a/l$a;->b:I

    invoke-direct {p0, v0, v1}, Landroid/support/a/a/l;->c(II)V

    return-void
.end method

.method private b(Landroid/support/a/a/r$o;I)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/a/a/l;->q()I

    move-result v2

    if-gez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v0}, Landroid/support/a/a/o;->e()I

    move-result v0

    sub-int v3, v0, p2

    iget-boolean v0, p0, Landroid/support/a/a/l;->c:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/a/a/l;->e(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v5, v4}, Landroid/support/a/a/o;->a(Landroid/view/View;)I

    move-result v4

    if-ge v4, v3, :cond_2

    invoke-direct {p0, p1, v1, v0}, Landroid/support/a/a/l;->a(Landroid/support/a/a/r$o;II)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v2, -0x1

    :goto_2
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/a/a/l;->e(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v4, v1}, Landroid/support/a/a/o;->a(Landroid/view/View;)I

    move-result v1

    if-ge v1, v3, :cond_4

    add-int/lit8 v1, v2, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/a/a/l;->a(Landroid/support/a/a/r$o;II)V

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method private b(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;II)V
    .locals 9

    invoke-virtual {p2}, Landroid/support/a/a/r$t;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/a/a/l;->q()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/support/a/a/r$t;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/a/a/l;->l()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/support/a/a/r$o;->b()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/a/a/l;->e(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/a/a/l;->d(Landroid/view/View;)I

    move-result v7

    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-ge v4, v6, :cond_6

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$w;

    invoke-virtual {v0}, Landroid/support/a/a/r$w;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    move v1, v3

    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v3, v1

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/support/a/a/r$w;->d()I

    move-result v1

    if-ge v1, v7, :cond_3

    const/4 v1, 0x1

    :goto_3
    iget-boolean v8, p0, Landroid/support/a/a/l;->c:Z

    if-eq v1, v8, :cond_4

    const/4 v1, -0x1

    :goto_4
    const/4 v8, -0x1

    if-ne v1, v8, :cond_5

    iget-object v1, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    iget-object v0, v0, Landroid/support/a/a/r$w;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/a/a/o;->c(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v3

    move v1, v0

    move v0, v2

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    iget-object v1, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    iget-object v0, v0, Landroid/support/a/a/r$w;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/a/a/o;->c(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    move v1, v3

    goto :goto_2

    :cond_6
    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iput-object v5, v0, Landroid/support/a/a/l$c;->k:Ljava/util/List;

    if-lez v3, :cond_7

    invoke-direct {p0}, Landroid/support/a/a/l;->B()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/a/a/l;->d(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/support/a/a/l;->c(II)V

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iput v3, v0, Landroid/support/a/a/l$c;->h:I

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/a/a/l$c;->c:I

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    invoke-virtual {v0}, Landroid/support/a/a/l$c;->a()V

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/a/a/l;->a(Landroid/support/a/a/r$o;Landroid/support/a/a/l$c;Landroid/support/a/a/r$t;Z)I

    :cond_7
    if-lez v2, :cond_8

    invoke-direct {p0}, Landroid/support/a/a/l;->C()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/a/a/l;->d(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, p4}, Landroid/support/a/a/l;->b(II)V

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iput v2, v0, Landroid/support/a/a/l$c;->h:I

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/a/a/l$c;->c:I

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    invoke-virtual {v0}, Landroid/support/a/a/l$c;->a()V

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/a/a/l;->a(Landroid/support/a/a/r$o;Landroid/support/a/a/l$c;Landroid/support/a/a/r$t;Z)I

    :cond_8
    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/a/a/l$c;->k:Ljava/util/List;

    goto/16 :goto_0
.end method

.method private b(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;Landroid/support/a/a/l$a;)V
    .locals 1

    invoke-direct {p0, p2, p3}, Landroid/support/a/a/l;->a(Landroid/support/a/a/r$t;Landroid/support/a/a/l$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/support/a/a/l;->c(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;Landroid/support/a/a/l$a;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/support/a/a/l$a;->b()V

    iget-boolean v0, p0, Landroid/support/a/a/l;->n:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/support/a/a/r$t;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    iput v0, p3, Landroid/support/a/a/l$a;->a:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private c(II)V
    .locals 3

    const/4 v1, -0x1

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget-object v2, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v2}, Landroid/support/a/a/o;->c()I

    move-result v2

    sub-int v2, p2, v2

    iput v2, v0, Landroid/support/a/a/l$c;->c:I

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iput p1, v0, Landroid/support/a/a/l$c;->d:I

    iget-object v2, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget-boolean v0, p0, Landroid/support/a/a/l;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v2, Landroid/support/a/a/l$c;->e:I

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iput v1, v0, Landroid/support/a/a/l$c;->f:I

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iput p2, v0, Landroid/support/a/a/l$c;->b:I

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/a/a/l$c;->g:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private c(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;Landroid/support/a/a/l$a;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/a/a/l;->q()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/a/a/l;->x()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {p3, v2, p2}, Landroid/support/a/a/l$a;->a(Landroid/support/a/a/l$a;Landroid/view/View;Landroid/support/a/a/r$t;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p3, v2}, Landroid/support/a/a/l$a;->a(Landroid/view/View;)V

    move v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Landroid/support/a/a/l;->l:Z

    iget-boolean v3, p0, Landroid/support/a/a/l;->n:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p3, Landroid/support/a/a/l$a;->c:Z

    if-eqz v2, :cond_6

    invoke-direct {p0, p1, p2}, Landroid/support/a/a/l;->f(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;)Landroid/view/View;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {p3, v2}, Landroid/support/a/a/l$a;->b(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/support/a/a/r$t;->a()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Landroid/support/a/a/l;->l()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v3, v2}, Landroid/support/a/a/o;->a(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v4}, Landroid/support/a/a/o;->d()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v3, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v3, v2}, Landroid/support/a/a/o;->b(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v3}, Landroid/support/a/a/o;->c()I

    move-result v3

    if-ge v2, v3, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    if-eqz v0, :cond_5

    iget-boolean v0, p3, Landroid/support/a/a/l$a;->c:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v0}, Landroid/support/a/a/o;->d()I

    move-result v0

    :goto_2
    iput v0, p3, Landroid/support/a/a/l$a;->b:I

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1, p2}, Landroid/support/a/a/l;->g(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_7
    iget-object v0, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v0}, Landroid/support/a/a/o;->c()I

    move-result v0

    goto :goto_2
.end method

.method private f(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;)Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroid/support/a/a/l;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/a/a/l;->h(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/a/a/l;->i(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private g(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;)Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroid/support/a/a/l;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/a/a/l;->i(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/a/a/l;->h(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private h(Landroid/support/a/a/r$t;)I
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/support/a/a/l;->q()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p0}, Landroid/support/a/a/l;->f()V

    iget-object v1, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    iget-boolean v0, p0, Landroid/support/a/a/l;->o:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-direct {p0, v0, v3}, Landroid/support/a/a/l;->a(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/a/a/l;->o:Z

    if-nez v0, :cond_1

    move v4, v3

    :cond_1
    invoke-direct {p0, v4, v3}, Landroid/support/a/a/l;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/a/a/l;->o:Z

    iget-boolean v6, p0, Landroid/support/a/a/l;->c:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Landroid/support/a/a/aa;->a(Landroid/support/a/a/r$t;Landroid/support/a/a/o;Landroid/view/View;Landroid/view/View;Landroid/support/a/a/r$i;ZZ)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private h(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;)Landroid/view/View;
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/a/a/l;->q()I

    move-result v4

    invoke-virtual {p2}, Landroid/support/a/a/r$t;->d()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/a/a/l;->a(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private i(I)I
    .locals 4

    const/4 v0, -0x1

    const/4 v2, 0x1

    const/high16 v1, -0x80000000

    sparse-switch p1, :sswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    move v0, v2

    goto :goto_0

    :sswitch_2
    iget v3, p0, Landroid/support/a/a/l;->a:I

    if-eq v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_3
    iget v0, p0, Landroid/support/a/a/l;->a:I

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    move v0, v1

    goto :goto_0

    :sswitch_4
    iget v2, p0, Landroid/support/a/a/l;->a:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_5
    iget v0, p0, Landroid/support/a/a/l;->a:I

    if-nez v0, :cond_2

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method private i(Landroid/support/a/a/r$t;)I
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/support/a/a/l;->q()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p0}, Landroid/support/a/a/l;->f()V

    iget-object v1, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    iget-boolean v0, p0, Landroid/support/a/a/l;->o:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-direct {p0, v0, v3}, Landroid/support/a/a/l;->a(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/a/a/l;->o:Z

    if-nez v0, :cond_1

    move v4, v3

    :cond_1
    invoke-direct {p0, v4, v3}, Landroid/support/a/a/l;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/a/a/l;->o:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/a/a/aa;->a(Landroid/support/a/a/r$t;Landroid/support/a/a/o;Landroid/view/View;Landroid/view/View;Landroid/support/a/a/r$i;Z)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private i(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;)Landroid/view/View;
    .locals 6

    invoke-virtual {p0}, Landroid/support/a/a/l;->q()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    const/4 v4, -0x1

    invoke-virtual {p2}, Landroid/support/a/a/r$t;->d()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/a/a/l;->a(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private j(Landroid/support/a/a/r$t;)I
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/support/a/a/l;->q()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p0}, Landroid/support/a/a/l;->f()V

    iget-object v1, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    iget-boolean v0, p0, Landroid/support/a/a/l;->o:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-direct {p0, v0, v3}, Landroid/support/a/a/l;->a(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/a/a/l;->o:Z

    if-nez v0, :cond_1

    move v4, v3

    :cond_1
    invoke-direct {p0, v4, v3}, Landroid/support/a/a/l;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/a/a/l;->o:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/a/a/aa;->b(Landroid/support/a/a/r$t;Landroid/support/a/a/o;Landroid/view/View;Landroid/view/View;Landroid/support/a/a/r$i;Z)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method


# virtual methods
.method public a(ILandroid/support/a/a/r$o;Landroid/support/a/a/r$t;)I
    .locals 2

    iget v0, p0, Landroid/support/a/a/l;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/a/a/l;->c(ILandroid/support/a/a/r$o;Landroid/support/a/a/r$t;)I

    move-result v0

    goto :goto_0
.end method

.method a(Landroid/support/a/a/r$o;Landroid/support/a/a/l$c;Landroid/support/a/a/r$t;Z)I
    .locals 7

    const/high16 v6, -0x80000000

    iget v1, p2, Landroid/support/a/a/l$c;->c:I

    iget v0, p2, Landroid/support/a/a/l$c;->g:I

    if-eq v0, v6, :cond_1

    iget v0, p2, Landroid/support/a/a/l$c;->c:I

    if-gez v0, :cond_0

    iget v0, p2, Landroid/support/a/a/l$c;->g:I

    iget v2, p2, Landroid/support/a/a/l$c;->c:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/support/a/a/l$c;->g:I

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/a/a/l;->a(Landroid/support/a/a/r$o;Landroid/support/a/a/l$c;)V

    :cond_1
    iget v0, p2, Landroid/support/a/a/l$c;->c:I

    iget v2, p2, Landroid/support/a/a/l$c;->h:I

    add-int/2addr v0, v2

    new-instance v2, Landroid/support/a/a/l$b;

    invoke-direct {v2}, Landroid/support/a/a/l$b;-><init>()V

    :cond_2
    if-lez v0, :cond_3

    invoke-virtual {p2, p3}, Landroid/support/a/a/l$c;->a(Landroid/support/a/a/r$t;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/support/a/a/l$b;->a()V

    invoke-virtual {p0, p1, p3, p2, v2}, Landroid/support/a/a/l;->a(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;Landroid/support/a/a/l$c;Landroid/support/a/a/l$b;)V

    iget-boolean v3, v2, Landroid/support/a/a/l$b;->b:Z

    if-eqz v3, :cond_4

    :cond_3
    :goto_0
    iget v0, p2, Landroid/support/a/a/l$c;->c:I

    sub-int v0, v1, v0

    return v0

    :cond_4
    iget v3, p2, Landroid/support/a/a/l$c;->b:I

    iget v4, v2, Landroid/support/a/a/l$b;->a:I

    iget v5, p2, Landroid/support/a/a/l$c;->f:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/a/a/l$c;->b:I

    iget-boolean v3, v2, Landroid/support/a/a/l$b;->c:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget-object v3, v3, Landroid/support/a/a/l$c;->k:Ljava/util/List;

    if-nez v3, :cond_5

    invoke-virtual {p3}, Landroid/support/a/a/r$t;->a()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    iget v3, p2, Landroid/support/a/a/l$c;->c:I

    iget v4, v2, Landroid/support/a/a/l$b;->a:I

    sub-int/2addr v3, v4

    iput v3, p2, Landroid/support/a/a/l$c;->c:I

    iget v3, v2, Landroid/support/a/a/l$b;->a:I

    sub-int/2addr v0, v3

    :cond_6
    iget v3, p2, Landroid/support/a/a/l$c;->g:I

    if-eq v3, v6, :cond_8

    iget v3, p2, Landroid/support/a/a/l$c;->g:I

    iget v4, v2, Landroid/support/a/a/l$b;->a:I

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/a/a/l$c;->g:I

    iget v3, p2, Landroid/support/a/a/l$c;->c:I

    if-gez v3, :cond_7

    iget v3, p2, Landroid/support/a/a/l$c;->g:I

    iget v4, p2, Landroid/support/a/a/l$c;->c:I

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/a/a/l$c;->g:I

    :cond_7
    invoke-direct {p0, p1, p2}, Landroid/support/a/a/l;->a(Landroid/support/a/a/r$o;Landroid/support/a/a/l$c;)V

    :cond_8
    if-eqz p4, :cond_2

    iget-boolean v3, v2, Landroid/support/a/a/l$b;->d:Z

    if-eqz v3, :cond_2

    goto :goto_0
.end method

.method protected a(Landroid/support/a/a/r$t;)I
    .locals 1

    invoke-virtual {p1}, Landroid/support/a/a/r$t;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v0}, Landroid/support/a/a/o;->f()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Landroid/support/a/a/r$j;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/support/a/a/r$j;

    invoke-direct {v0, v1, v1}, Landroid/support/a/a/r$j;-><init>(II)V

    return-object v0
.end method

.method public a(I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroid/support/a/a/l;->q()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/a/a/l;->e(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/a/a/l;->d(Landroid/view/View;)I

    move-result v1

    sub-int v1, p1, v1

    if-ltz v1, :cond_2

    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/support/a/a/l;->e(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/a/a/l;->d(Landroid/view/View;)I

    move-result v1

    if-eq v1, p1, :cond_0

    :cond_2
    invoke-super {p0, p1}, Landroid/support/a/a/r$i;->a(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method a(IIZZ)Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Landroid/support/a/a/l;->f()V

    iget-object v0, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v0}, Landroid/support/a/a/o;->c()I

    move-result v3

    iget-object v0, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v0}, Landroid/support/a/a/o;->d()I

    move-result v4

    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-eq p1, p2, :cond_3

    invoke-virtual {p0, p1}, Landroid/support/a/a/l;->e(I)Landroid/view/View;

    move-result-object v1

    iget-object v5, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v5, v1}, Landroid/support/a/a/o;->a(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v6, v1}, Landroid/support/a/a/o;->b(Landroid/view/View;)I

    move-result v6

    if-ge v5, v4, :cond_4

    if-le v6, v3, :cond_4

    if-eqz p3, :cond_0

    if-lt v5, v3, :cond_2

    if-gt v6, v4, :cond_2

    :cond_0
    :goto_2
    return-object v1

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_4

    if-nez v2, :cond_4

    :goto_3
    add-int/2addr p1, v0

    move-object v2, v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    goto :goto_2

    :cond_4
    move-object v1, v2

    goto :goto_3
.end method

.method a(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;III)Landroid/view/View;
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/a/a/l;->f()V

    iget-object v0, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v0}, Landroid/support/a/a/o;->c()I

    move-result v5

    iget-object v0, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v0}, Landroid/support/a/a/o;->d()I

    move-result v6

    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    move-object v4, v2

    :goto_1
    if-eq p3, p4, :cond_3

    invoke-virtual {p0, p3}, Landroid/support/a/a/l;->e(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/a/a/l;->d(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_6

    if-ge v0, p5, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$j;

    invoke-virtual {v0}, Landroid/support/a/a/r$j;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v4, :cond_6

    move-object v0, v2

    :goto_2
    add-int/2addr p3, v1

    move-object v2, v0

    move-object v4, v3

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v0, v3}, Landroid/support/a/a/o;->a(Landroid/view/View;)I

    move-result v0

    if-ge v0, v6, :cond_2

    iget-object v0, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v0, v3}, Landroid/support/a/a/o;->b(Landroid/view/View;)I

    move-result v0

    if-ge v0, v5, :cond_4

    :cond_2
    if-nez v2, :cond_6

    move-object v0, v3

    move-object v3, v4

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_5

    :goto_3
    move-object v3, v2

    :cond_4
    return-object v3

    :cond_5
    move-object v2, v4

    goto :goto_3

    :cond_6
    move-object v0, v2

    move-object v3, v4

    goto :goto_2
.end method

.method public a(Landroid/view/View;ILandroid/support/a/a/r$o;Landroid/support/a/a/r$t;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/high16 v5, -0x80000000

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/a/a/l;->A()V

    invoke-virtual {p0}, Landroid/support/a/a/l;->q()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p2}, Landroid/support/a/a/l;->i(I)I

    move-result v3

    if-eq v3, v5, :cond_0

    invoke-virtual {p0}, Landroid/support/a/a/l;->f()V

    if-ne v3, v6, :cond_2

    invoke-direct {p0, p3, p4}, Landroid/support/a/a/l;->g(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/support/a/a/l;->f()V

    const v1, 0x3ea8f5c3    # 0.33f

    iget-object v4, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v4}, Landroid/support/a/a/o;->f()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-direct {p0, v3, v1, v7, p4}, Landroid/support/a/a/l;->a(IIZLandroid/support/a/a/r$t;)V

    iget-object v1, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iput v5, v1, Landroid/support/a/a/l$c;->g:I

    iget-object v1, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iput-boolean v7, v1, Landroid/support/a/a/l$c;->a:Z

    iget-object v1, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    const/4 v4, 0x1

    invoke-virtual {p0, p3, v1, p4, v4}, Landroid/support/a/a/l;->a(Landroid/support/a/a/r$o;Landroid/support/a/a/l$c;Landroid/support/a/a/r$t;Z)I

    if-ne v3, v6, :cond_3

    invoke-direct {p0}, Landroid/support/a/a/l;->B()Landroid/view/View;

    move-result-object v1

    :goto_2
    if-eq v1, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p3, p4}, Landroid/support/a/a/l;->f(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Landroid/support/a/a/l;->C()Landroid/view/View;

    move-result-object v1

    goto :goto_2
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroid/support/a/a/l$d;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/a/a/l$d;

    iput-object p1, p0, Landroid/support/a/a/l;->f:Landroid/support/a/a/l$d;

    invoke-virtual {p0}, Landroid/support/a/a/l;->m()V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;)V
    .locals 9

    const/4 v8, 0x1

    const/high16 v7, -0x80000000

    const/4 v6, -0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/a/a/l;->f:Landroid/support/a/a/l$d;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/a/a/l;->d:I

    if-eq v0, v6, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/support/a/a/r$t;->d()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/a/a/l;->c(Landroid/support/a/a/r$o;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/a/a/l;->f:Landroid/support/a/a/l$d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/a/a/l;->f:Landroid/support/a/a/l$d;

    invoke-virtual {v0}, Landroid/support/a/a/l$d;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/a/a/l;->f:Landroid/support/a/a/l$d;

    iget v0, v0, Landroid/support/a/a/l$d;->a:I

    iput v0, p0, Landroid/support/a/a/l;->d:I

    :cond_2
    invoke-virtual {p0}, Landroid/support/a/a/l;->f()V

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iput-boolean v1, v0, Landroid/support/a/a/l$c;->a:Z

    invoke-direct {p0}, Landroid/support/a/a/l;->A()V

    iget-object v0, p0, Landroid/support/a/a/l;->g:Landroid/support/a/a/l$a;

    invoke-virtual {v0}, Landroid/support/a/a/l$a;->a()V

    iget-object v0, p0, Landroid/support/a/a/l;->g:Landroid/support/a/a/l$a;

    iget-boolean v2, p0, Landroid/support/a/a/l;->c:Z

    iget-boolean v3, p0, Landroid/support/a/a/l;->n:Z

    xor-int/2addr v2, v3

    iput-boolean v2, v0, Landroid/support/a/a/l$a;->c:Z

    iget-object v0, p0, Landroid/support/a/a/l;->g:Landroid/support/a/a/l$a;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/a/a/l;->b(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;Landroid/support/a/a/l$a;)V

    invoke-virtual {p0, p2}, Landroid/support/a/a/l;->a(Landroid/support/a/a/r$t;)I

    move-result v0

    iget-object v2, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget v2, v2, Landroid/support/a/a/l$c;->j:I

    if-ltz v2, :cond_8

    move v2, v1

    :goto_1
    iget-object v3, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v3}, Landroid/support/a/a/o;->c()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v3}, Landroid/support/a/a/o;->g()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p2}, Landroid/support/a/a/r$t;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/support/a/a/l;->d:I

    if-eq v3, v6, :cond_3

    iget v3, p0, Landroid/support/a/a/l;->e:I

    if-eq v3, v7, :cond_3

    iget v3, p0, Landroid/support/a/a/l;->d:I

    invoke-virtual {p0, v3}, Landroid/support/a/a/l;->a(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-boolean v4, p0, Landroid/support/a/a/l;->c:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v4}, Landroid/support/a/a/o;->d()I

    move-result v4

    iget-object v5, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v5, v3}, Landroid/support/a/a/o;->b(Landroid/view/View;)I

    move-result v3

    sub-int v3, v4, v3

    iget v4, p0, Landroid/support/a/a/l;->e:I

    sub-int/2addr v3, v4

    :goto_2
    if-lez v3, :cond_a

    add-int/2addr v2, v3

    :cond_3
    :goto_3
    iget-object v3, p0, Landroid/support/a/a/l;->g:Landroid/support/a/a/l$a;

    invoke-virtual {p0, p1, p2, v3}, Landroid/support/a/a/l;->a(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;Landroid/support/a/a/l$a;)V

    invoke-virtual {p0, p1}, Landroid/support/a/a/l;->a(Landroid/support/a/a/r$o;)V

    iget-object v3, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    invoke-virtual {p2}, Landroid/support/a/a/r$t;->a()Z

    move-result v4

    iput-boolean v4, v3, Landroid/support/a/a/l$c;->i:Z

    iget-object v3, p0, Landroid/support/a/a/l;->g:Landroid/support/a/a/l$a;

    iget-boolean v3, v3, Landroid/support/a/a/l$a;->c:Z

    if-eqz v3, :cond_b

    iget-object v3, p0, Landroid/support/a/a/l;->g:Landroid/support/a/a/l$a;

    invoke-direct {p0, v3}, Landroid/support/a/a/l;->b(Landroid/support/a/a/l$a;)V

    iget-object v3, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iput v2, v3, Landroid/support/a/a/l$c;->h:I

    iget-object v2, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    invoke-virtual {p0, p1, v2, p2, v1}, Landroid/support/a/a/l;->a(Landroid/support/a/a/r$o;Landroid/support/a/a/l$c;Landroid/support/a/a/r$t;Z)I

    iget-object v2, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget v2, v2, Landroid/support/a/a/l$c;->b:I

    iget-object v3, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget v4, v3, Landroid/support/a/a/l$c;->d:I

    iget-object v3, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget v3, v3, Landroid/support/a/a/l$c;->c:I

    if-lez v3, :cond_4

    iget-object v3, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget v3, v3, Landroid/support/a/a/l$c;->c:I

    add-int/2addr v0, v3

    :cond_4
    iget-object v3, p0, Landroid/support/a/a/l;->g:Landroid/support/a/a/l$a;

    invoke-direct {p0, v3}, Landroid/support/a/a/l;->a(Landroid/support/a/a/l$a;)V

    iget-object v3, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iput v0, v3, Landroid/support/a/a/l$c;->h:I

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget v3, v0, Landroid/support/a/a/l$c;->d:I

    iget-object v5, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget v5, v5, Landroid/support/a/a/l$c;->e:I

    add-int/2addr v3, v5

    iput v3, v0, Landroid/support/a/a/l$c;->d:I

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/a/a/l;->a(Landroid/support/a/a/r$o;Landroid/support/a/a/l$c;Landroid/support/a/a/r$t;Z)I

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget v3, v0, Landroid/support/a/a/l$c;->b:I

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget v0, v0, Landroid/support/a/a/l$c;->c:I

    if-lez v0, :cond_e

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget v0, v0, Landroid/support/a/a/l$c;->c:I

    invoke-direct {p0, v4, v2}, Landroid/support/a/a/l;->c(II)V

    iget-object v2, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iput v0, v2, Landroid/support/a/a/l$c;->h:I

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/a/a/l;->a(Landroid/support/a/a/r$o;Landroid/support/a/a/l$c;Landroid/support/a/a/r$t;Z)I

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget v0, v0, Landroid/support/a/a/l$c;->b:I

    :goto_4
    move v2, v0

    move v0, v3

    :cond_5
    :goto_5
    invoke-virtual {p0}, Landroid/support/a/a/l;->q()I

    move-result v3

    if-lez v3, :cond_6

    iget-boolean v3, p0, Landroid/support/a/a/l;->c:Z

    iget-boolean v4, p0, Landroid/support/a/a/l;->n:Z

    xor-int/2addr v3, v4

    if-eqz v3, :cond_d

    invoke-direct {p0, v0, p1, p2, v8}, Landroid/support/a/a/l;->a(ILandroid/support/a/a/r$o;Landroid/support/a/a/r$t;Z)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v3

    invoke-direct {p0, v2, p1, p2, v1}, Landroid/support/a/a/l;->b(ILandroid/support/a/a/r$o;Landroid/support/a/a/r$t;Z)I

    move-result v1

    add-int/2addr v2, v1

    add-int/2addr v0, v1

    :cond_6
    :goto_6
    invoke-direct {p0, p1, p2, v2, v0}, Landroid/support/a/a/l;->b(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;II)V

    invoke-virtual {p2}, Landroid/support/a/a/r$t;->a()Z

    move-result v0

    if-nez v0, :cond_7

    iput v6, p0, Landroid/support/a/a/l;->d:I

    iput v7, p0, Landroid/support/a/a/l;->e:I

    iget-object v0, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v0}, Landroid/support/a/a/o;->a()V

    :cond_7
    iget-boolean v0, p0, Landroid/support/a/a/l;->n:Z

    iput-boolean v0, p0, Landroid/support/a/a/l;->l:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/a/a/l;->f:Landroid/support/a/a/l$d;

    goto/16 :goto_0

    :cond_8
    move v2, v0

    move v0, v1

    goto/16 :goto_1

    :cond_9
    iget-object v4, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v4, v3}, Landroid/support/a/a/o;->a(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v4}, Landroid/support/a/a/o;->c()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/a/a/l;->e:I

    sub-int v3, v4, v3

    goto/16 :goto_2

    :cond_a
    sub-int/2addr v0, v3

    goto/16 :goto_3

    :cond_b
    iget-object v3, p0, Landroid/support/a/a/l;->g:Landroid/support/a/a/l$a;

    invoke-direct {p0, v3}, Landroid/support/a/a/l;->a(Landroid/support/a/a/l$a;)V

    iget-object v3, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iput v0, v3, Landroid/support/a/a/l$c;->h:I

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/a/a/l;->a(Landroid/support/a/a/r$o;Landroid/support/a/a/l$c;Landroid/support/a/a/r$t;Z)I

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget v0, v0, Landroid/support/a/a/l$c;->b:I

    iget-object v3, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget v3, v3, Landroid/support/a/a/l$c;->d:I

    iget-object v4, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget v4, v4, Landroid/support/a/a/l$c;->c:I

    if-lez v4, :cond_c

    iget-object v4, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget v4, v4, Landroid/support/a/a/l$c;->c:I

    add-int/2addr v2, v4

    :cond_c
    iget-object v4, p0, Landroid/support/a/a/l;->g:Landroid/support/a/a/l$a;

    invoke-direct {p0, v4}, Landroid/support/a/a/l;->b(Landroid/support/a/a/l$a;)V

    iget-object v4, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iput v2, v4, Landroid/support/a/a/l$c;->h:I

    iget-object v2, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget v4, v2, Landroid/support/a/a/l$c;->d:I

    iget-object v5, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget v5, v5, Landroid/support/a/a/l$c;->e:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/support/a/a/l$c;->d:I

    iget-object v2, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    invoke-virtual {p0, p1, v2, p2, v1}, Landroid/support/a/a/l;->a(Landroid/support/a/a/r$o;Landroid/support/a/a/l$c;Landroid/support/a/a/r$t;Z)I

    iget-object v2, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget v2, v2, Landroid/support/a/a/l$c;->b:I

    iget-object v4, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget v4, v4, Landroid/support/a/a/l$c;->c:I

    if-lez v4, :cond_5

    iget-object v4, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget v4, v4, Landroid/support/a/a/l$c;->c:I

    invoke-direct {p0, v3, v0}, Landroid/support/a/a/l;->b(II)V

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iput v4, v0, Landroid/support/a/a/l$c;->h:I

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/a/a/l;->a(Landroid/support/a/a/r$o;Landroid/support/a/a/l$c;Landroid/support/a/a/r$t;Z)I

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget v0, v0, Landroid/support/a/a/l$c;->b:I

    goto/16 :goto_5

    :cond_d
    invoke-direct {p0, v2, p1, p2, v8}, Landroid/support/a/a/l;->b(ILandroid/support/a/a/r$o;Landroid/support/a/a/r$t;Z)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v3

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/a/a/l;->a(ILandroid/support/a/a/r$o;Landroid/support/a/a/r$t;Z)I

    move-result v1

    add-int/2addr v2, v1

    add-int/2addr v0, v1

    goto/16 :goto_6

    :cond_e
    move v0, v2

    goto/16 :goto_4
.end method

.method a(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;Landroid/support/a/a/l$a;)V
    .locals 0

    return-void
.end method

.method a(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;Landroid/support/a/a/l$c;Landroid/support/a/a/l$b;)V
    .locals 9

    const/4 v4, -0x1

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-virtual {p3, p1}, Landroid/support/a/a/l$c;->a(Landroid/support/a/a/r$o;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    iput-boolean v7, p4, Landroid/support/a/a/l$b;->b:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/a/a/r$j;

    iget-object v0, p3, Landroid/support/a/a/l$c;->k:Ljava/util/List;

    if-nez v0, :cond_5

    iget-boolean v3, p0, Landroid/support/a/a/l;->c:Z

    iget v0, p3, Landroid/support/a/a/l$c;->f:I

    if-ne v0, v4, :cond_3

    move v0, v7

    :goto_1
    if-ne v3, v0, :cond_4

    invoke-virtual {p0, v1}, Landroid/support/a/a/l;->b(Landroid/view/View;)V

    :goto_2
    invoke-virtual {p0, v1, v2, v2}, Landroid/support/a/a/l;->a(Landroid/view/View;II)V

    iget-object v0, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v0, v1}, Landroid/support/a/a/o;->c(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Landroid/support/a/a/l$b;->a:I

    iget v0, p0, Landroid/support/a/a/l;->a:I

    if-ne v0, v7, :cond_a

    invoke-virtual {p0}, Landroid/support/a/a/l;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/support/a/a/l;->r()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/a/a/l;->v()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v2, v1}, Landroid/support/a/a/o;->d(Landroid/view/View;)I

    move-result v2

    sub-int v2, v0, v2

    :goto_3
    iget v3, p3, Landroid/support/a/a/l$c;->f:I

    if-ne v3, v4, :cond_9

    iget v3, p3, Landroid/support/a/a/l$c;->b:I

    iget v4, p3, Landroid/support/a/a/l$c;->b:I

    iget v5, p4, Landroid/support/a/a/l$b;->a:I

    sub-int/2addr v4, v5

    move v8, v3

    move v3, v4

    move v4, v0

    move v0, v8

    :goto_4
    iget v5, v6, Landroid/support/a/a/r$j;->leftMargin:I

    add-int/2addr v2, v5

    iget v5, v6, Landroid/support/a/a/r$j;->topMargin:I

    add-int/2addr v3, v5

    iget v5, v6, Landroid/support/a/a/r$j;->rightMargin:I

    sub-int/2addr v4, v5

    iget v5, v6, Landroid/support/a/a/r$j;->bottomMargin:I

    sub-int v5, v0, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/a/a/l;->a(Landroid/view/View;IIII)V

    invoke-virtual {v6}, Landroid/support/a/a/r$j;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6}, Landroid/support/a/a/r$j;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iput-boolean v7, p4, Landroid/support/a/a/l$b;->c:Z

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v0

    iput-boolean v0, p4, Landroid/support/a/a/l$b;->d:Z

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1, v2}, Landroid/support/a/a/l;->b(Landroid/view/View;I)V

    goto :goto_2

    :cond_5
    iget-boolean v3, p0, Landroid/support/a/a/l;->c:Z

    iget v0, p3, Landroid/support/a/a/l$c;->f:I

    if-ne v0, v4, :cond_6

    move v0, v7

    :goto_5
    if-ne v3, v0, :cond_7

    invoke-virtual {p0, v1}, Landroid/support/a/a/l;->a(Landroid/view/View;)V

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_5

    :cond_7
    invoke-virtual {p0, v1, v2}, Landroid/support/a/a/l;->a(Landroid/view/View;I)V

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Landroid/support/a/a/l;->t()I

    move-result v2

    iget-object v0, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v0, v1}, Landroid/support/a/a/o;->d(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_3

    :cond_9
    iget v4, p3, Landroid/support/a/a/l$c;->b:I

    iget v3, p3, Landroid/support/a/a/l$c;->b:I

    iget v5, p4, Landroid/support/a/a/l$b;->a:I

    add-int/2addr v3, v5

    move v8, v3

    move v3, v4

    move v4, v0

    move v0, v8

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Landroid/support/a/a/l;->u()I

    move-result v3

    iget-object v0, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v0, v1}, Landroid/support/a/a/o;->d(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v3

    iget v2, p3, Landroid/support/a/a/l$c;->f:I

    if-ne v2, v4, :cond_b

    iget v2, p3, Landroid/support/a/a/l$c;->b:I

    iget v4, p3, Landroid/support/a/a/l$c;->b:I

    iget v5, p4, Landroid/support/a/a/l$b;->a:I

    sub-int/2addr v4, v5

    move v8, v2

    move v2, v4

    move v4, v8

    goto :goto_4

    :cond_b
    iget v4, p3, Landroid/support/a/a/l$c;->b:I

    iget v2, p3, Landroid/support/a/a/l$c;->b:I

    iget v5, p4, Landroid/support/a/a/l$b;->a:I

    add-int/2addr v2, v5

    move v8, v2

    move v2, v4

    move v4, v8

    goto :goto_4
.end method

.method public a(Landroid/support/a/a/r;Landroid/support/a/a/r$o;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/a/a/r$i;->a(Landroid/support/a/a/r;Landroid/support/a/a/r$o;)V

    iget-boolean v0, p0, Landroid/support/a/a/l;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Landroid/support/a/a/l;->c(Landroid/support/a/a/r$o;)V

    invoke-virtual {p2}, Landroid/support/a/a/r$o;->a()V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/a/a/r$i;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroid/support/a/a/l;->q()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Landroid/support/v4/e/a/a;->a(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/e/a/o;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/a/a/l;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/e/a/o;->b(I)V

    invoke-virtual {p0}, Landroid/support/a/a/l;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/e/a/o;->c(I)V

    :cond_0
    return-void
.end method

.method public b(ILandroid/support/a/a/r$o;Landroid/support/a/a/r$t;)I
    .locals 1

    iget v0, p0, Landroid/support/a/a/l;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/a/a/l;->c(ILandroid/support/a/a/r$o;Landroid/support/a/a/r$t;)I

    move-result v0

    goto :goto_0
.end method

.method public b(Landroid/support/a/a/r$t;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/a/a/l;->h(Landroid/support/a/a/r$t;)I

    move-result v0

    return v0
.end method

.method public b()Landroid/os/Parcelable;
    .locals 4

    iget-object v0, p0, Landroid/support/a/a/l;->f:Landroid/support/a/a/l$d;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/a/a/l$d;

    iget-object v1, p0, Landroid/support/a/a/l;->f:Landroid/support/a/a/l$d;

    invoke-direct {v0, v1}, Landroid/support/a/a/l$d;-><init>(Landroid/support/a/a/l$d;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/a/a/l$d;

    invoke-direct {v0}, Landroid/support/a/a/l$d;-><init>()V

    invoke-virtual {p0}, Landroid/support/a/a/l;->q()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Landroid/support/a/a/l;->f()V

    iget-boolean v1, p0, Landroid/support/a/a/l;->l:Z

    iget-boolean v2, p0, Landroid/support/a/a/l;->c:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Landroid/support/a/a/l$d;->c:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/support/a/a/l;->C()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v2}, Landroid/support/a/a/o;->d()I

    move-result v2

    iget-object v3, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v3, v1}, Landroid/support/a/a/o;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/support/a/a/l$d;->b:I

    invoke-virtual {p0, v1}, Landroid/support/a/a/l;->d(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/a/a/l$d;->a:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/support/a/a/l;->B()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/a/a/l;->d(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Landroid/support/a/a/l$d;->a:I

    iget-object v2, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v2, v1}, Landroid/support/a/a/o;->a(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    invoke-virtual {v2}, Landroid/support/a/a/o;->c()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/support/a/a/l$d;->b:I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/support/a/a/l$d;->b()V

    goto :goto_0
.end method

.method public b(I)V
    .locals 1

    iput p1, p0, Landroid/support/a/a/l;->d:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/a/a/l;->e:I

    iget-object v0, p0, Landroid/support/a/a/l;->f:Landroid/support/a/a/l$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/l;->f:Landroid/support/a/a/l$d;

    invoke-virtual {v0}, Landroid/support/a/a/l$d;->b()V

    :cond_0
    invoke-virtual {p0}, Landroid/support/a/a/l;->m()V

    return-void
.end method

.method c(ILandroid/support/a/a/r$o;Landroid/support/a/a/r$t;)I
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/a/a/l;->q()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move p1, v2

    :goto_0
    return p1

    :cond_1
    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iput-boolean v1, v0, Landroid/support/a/a/l$c;->a:Z

    invoke-virtual {p0}, Landroid/support/a/a/l;->f()V

    if-lez p1, :cond_2

    move v0, v1

    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-direct {p0, v0, v3, v1, p3}, Landroid/support/a/a/l;->a(IIZLandroid/support/a/a/r$t;)V

    iget-object v1, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iget v1, v1, Landroid/support/a/a/l$c;->g:I

    iget-object v4, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    invoke-virtual {p0, p2, v4, p3, v2}, Landroid/support/a/a/l;->a(Landroid/support/a/a/r$o;Landroid/support/a/a/l$c;Landroid/support/a/a/r$t;Z)I

    move-result v4

    add-int/2addr v1, v4

    if-gez v1, :cond_3

    move p1, v2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    if-le v3, v1, :cond_4

    mul-int p1, v0, v1

    :cond_4
    iget-object v0, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/a/a/o;->a(I)V

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    iput p1, v0, Landroid/support/a/a/l$c;->j:I

    goto :goto_0
.end method

.method public c(Landroid/support/a/a/r$t;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/a/a/l;->h(Landroid/support/a/a/r$t;)I

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    iget v0, p0, Landroid/support/a/a/l;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Landroid/support/a/a/r$t;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/a/a/l;->i(Landroid/support/a/a/r$t;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/a/a/l;->a:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Landroid/support/a/a/r$t;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/a/a/l;->i(Landroid/support/a/a/r$t;)I

    move-result v0

    return v0
.end method

.method protected e()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/support/a/a/l;->o()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Landroid/support/a/a/r$t;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/a/a/l;->j(Landroid/support/a/a/r$t;)I

    move-result v0

    return v0
.end method

.method f()V
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/a/a/l;->g()Landroid/support/a/a/l$c;

    move-result-object v0

    iput-object v0, p0, Landroid/support/a/a/l;->k:Landroid/support/a/a/l$c;

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/a/a/l;->a:I

    invoke-static {p0, v0}, Landroid/support/a/a/o;->a(Landroid/support/a/a/r$i;I)Landroid/support/a/a/o;

    move-result-object v0

    iput-object v0, p0, Landroid/support/a/a/l;->b:Landroid/support/a/a/o;

    :cond_1
    return-void
.end method

.method public g(Landroid/support/a/a/r$t;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/a/a/l;->j(Landroid/support/a/a/r$t;)I

    move-result v0

    return v0
.end method

.method g()Landroid/support/a/a/l$c;
    .locals 1

    new-instance v0, Landroid/support/a/a/l$c;

    invoke-direct {v0}, Landroid/support/a/a/l$c;-><init>()V

    return-object v0
.end method

.method public h()I
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/a/a/l;->q()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v2, v1}, Landroid/support/a/a/l;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/a/a/l;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public i()I
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/a/a/l;->q()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v1, v2}, Landroid/support/a/a/l;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/a/a/l;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public j()I
    .locals 4

    const/4 v0, -0x1

    invoke-virtual {p0}, Landroid/support/a/a/l;->q()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/support/a/a/l;->a(IIZZ)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/a/a/l;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public k()I
    .locals 4

    const/4 v0, -0x1

    invoke-virtual {p0}, Landroid/support/a/a/l;->q()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/support/a/a/l;->a(IIZZ)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/a/a/l;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public l()Z
    .locals 2

    iget-object v0, p0, Landroid/support/a/a/l;->f:Landroid/support/a/a/l$d;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/a/a/l;->l:Z

    iget-boolean v1, p0, Landroid/support/a/a/l;->n:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
