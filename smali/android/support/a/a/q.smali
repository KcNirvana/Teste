.class final Landroid/support/a/a/q;
.super Landroid/support/a/a/o;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/support/a/a/r$i;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/a/a/o;-><init>(Landroid/support/a/a/r$i;Landroid/support/a/a/p;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$j;

    iget-object v1, p0, Landroid/support/a/a/q;->a:Landroid/support/a/a/r$i;

    invoke-virtual {v1, p1}, Landroid/support/a/a/r$i;->h(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Landroid/support/a/a/r$j;->topMargin:I

    sub-int v0, v1, v0

    return v0
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/q;->a:Landroid/support/a/a/r$i;

    invoke-virtual {v0, p1}, Landroid/support/a/a/r$i;->g(I)V

    return-void
.end method

.method public b(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$j;

    iget-object v1, p0, Landroid/support/a/a/q;->a:Landroid/support/a/a/r$i;

    invoke-virtual {v1, p1}, Landroid/support/a/a/r$i;->j(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Landroid/support/a/a/r$j;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/q;->a:Landroid/support/a/a/r$i;

    invoke-virtual {v0}, Landroid/support/a/a/r$i;->u()I

    move-result v0

    return v0
.end method

.method public c(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$j;

    iget-object v1, p0, Landroid/support/a/a/q;->a:Landroid/support/a/a/r$i;

    invoke-virtual {v1, p1}, Landroid/support/a/a/r$i;->f(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/a/a/r$j;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/support/a/a/r$j;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public d()I
    .locals 2

    iget-object v0, p0, Landroid/support/a/a/q;->a:Landroid/support/a/a/r$i;

    invoke-virtual {v0}, Landroid/support/a/a/r$i;->s()I

    move-result v0

    iget-object v1, p0, Landroid/support/a/a/q;->a:Landroid/support/a/a/r$i;

    invoke-virtual {v1}, Landroid/support/a/a/r$i;->w()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public d(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$j;

    iget-object v1, p0, Landroid/support/a/a/q;->a:Landroid/support/a/a/r$i;

    invoke-virtual {v1, p1}, Landroid/support/a/a/r$i;->e(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/a/a/r$j;->leftMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/support/a/a/r$j;->rightMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/q;->a:Landroid/support/a/a/r$i;

    invoke-virtual {v0}, Landroid/support/a/a/r$i;->s()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, Landroid/support/a/a/q;->a:Landroid/support/a/a/r$i;

    invoke-virtual {v0}, Landroid/support/a/a/r$i;->s()I

    move-result v0

    iget-object v1, p0, Landroid/support/a/a/q;->a:Landroid/support/a/a/r$i;

    invoke-virtual {v1}, Landroid/support/a/a/r$i;->u()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/a/a/q;->a:Landroid/support/a/a/r$i;

    invoke-virtual {v1}, Landroid/support/a/a/r$i;->w()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/q;->a:Landroid/support/a/a/r$i;

    invoke-virtual {v0}, Landroid/support/a/a/r$i;->w()I

    move-result v0

    return v0
.end method
