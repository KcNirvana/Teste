.class Landroid/support/a/a/z;
.super Landroid/support/v4/e/a;
.source "SourceFile"


# instance fields
.field final synthetic b:Landroid/support/a/a/y;


# direct methods
.method constructor <init>(Landroid/support/a/a/y;)V
    .locals 0

    iput-object p1, p0, Landroid/support/a/a/z;->b:Landroid/support/a/a/y;

    invoke-direct {p0}, Landroid/support/v4/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/e/a/c;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/e/a;->a(Landroid/view/View;Landroid/support/v4/e/a/c;)V

    iget-object v0, p0, Landroid/support/a/a/z;->b:Landroid/support/a/a/y;

    invoke-static {v0}, Landroid/support/a/a/y;->a(Landroid/support/a/a/y;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/z;->b:Landroid/support/a/a/y;

    iget-object v0, v0, Landroid/support/a/a/y;->b:Landroid/support/a/a/r;

    invoke-virtual {v0}, Landroid/support/a/a/r;->getLayoutManager()Landroid/support/a/a/r$i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/z;->b:Landroid/support/a/a/y;

    iget-object v0, v0, Landroid/support/a/a/y;->b:Landroid/support/a/a/r;

    invoke-virtual {v0}, Landroid/support/a/a/r;->getLayoutManager()Landroid/support/a/a/r$i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/a/a/r$i;->a(Landroid/view/View;Landroid/support/v4/e/a/c;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/e/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/z;->b:Landroid/support/a/a/y;

    invoke-static {v0}, Landroid/support/a/a/y;->a(Landroid/support/a/a/y;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/a/a/z;->b:Landroid/support/a/a/y;

    iget-object v0, v0, Landroid/support/a/a/y;->b:Landroid/support/a/a/r;

    invoke-virtual {v0}, Landroid/support/a/a/r;->getLayoutManager()Landroid/support/a/a/r$i;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/a/a/z;->b:Landroid/support/a/a/y;

    iget-object v0, v0, Landroid/support/a/a/y;->b:Landroid/support/a/a/r;

    invoke-virtual {v0}, Landroid/support/a/a/r;->getLayoutManager()Landroid/support/a/a/r$i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/a/a/r$i;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
