.class Landroid/support/a/a/i;
.super Landroid/support/a/a/c$c;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/a/a/r$w;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Landroid/support/v4/e/ai;

.field final synthetic e:Landroid/support/a/a/c;


# direct methods
.method constructor <init>(Landroid/support/a/a/c;Landroid/support/a/a/r$w;IILandroid/support/v4/e/ai;)V
    .locals 1

    iput-object p1, p0, Landroid/support/a/a/i;->e:Landroid/support/a/a/c;

    iput-object p2, p0, Landroid/support/a/a/i;->a:Landroid/support/a/a/r$w;

    iput p3, p0, Landroid/support/a/a/i;->b:I

    iput p4, p0, Landroid/support/a/a/i;->c:I

    iput-object p5, p0, Landroid/support/a/a/i;->d:Landroid/support/v4/e/ai;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/a/a/c$c;-><init>(Landroid/support/a/a/d;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/a/a/i;->e:Landroid/support/a/a/c;

    iget-object v1, p0, Landroid/support/a/a/i;->a:Landroid/support/a/a/r$w;

    invoke-virtual {v0, v1}, Landroid/support/a/a/c;->h(Landroid/support/a/a/r$w;)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/a/a/i;->d:Landroid/support/v4/e/ai;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/e/ai;->a(Landroid/support/v4/e/an;)Landroid/support/v4/e/ai;

    iget-object v0, p0, Landroid/support/a/a/i;->e:Landroid/support/a/a/c;

    iget-object v1, p0, Landroid/support/a/a/i;->a:Landroid/support/a/a/r$w;

    invoke-virtual {v0, v1}, Landroid/support/a/a/c;->e(Landroid/support/a/a/r$w;)V

    iget-object v0, p0, Landroid/support/a/a/i;->e:Landroid/support/a/a/c;

    invoke-static {v0}, Landroid/support/a/a/c;->g(Landroid/support/a/a/c;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/a/a/i;->a:Landroid/support/a/a/r$w;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/a/a/i;->e:Landroid/support/a/a/c;

    invoke-static {v0}, Landroid/support/a/a/c;->e(Landroid/support/a/a/c;)V

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Landroid/support/a/a/i;->b:I

    if-eqz v0, :cond_0

    invoke-static {p1, v1}, Landroid/support/v4/e/w;->a(Landroid/view/View;F)V

    :cond_0
    iget v0, p0, Landroid/support/a/a/i;->c:I

    if-eqz v0, :cond_1

    invoke-static {p1, v1}, Landroid/support/v4/e/w;->b(Landroid/view/View;F)V

    :cond_1
    return-void
.end method
