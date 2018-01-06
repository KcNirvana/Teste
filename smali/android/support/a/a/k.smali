.class Landroid/support/a/a/k;
.super Landroid/support/a/a/c$c;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/a/a/c$a;

.field final synthetic b:Landroid/support/v4/e/ai;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/support/a/a/c;


# direct methods
.method constructor <init>(Landroid/support/a/a/c;Landroid/support/a/a/c$a;Landroid/support/v4/e/ai;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Landroid/support/a/a/k;->d:Landroid/support/a/a/c;

    iput-object p2, p0, Landroid/support/a/a/k;->a:Landroid/support/a/a/c$a;

    iput-object p3, p0, Landroid/support/a/a/k;->b:Landroid/support/v4/e/ai;

    iput-object p4, p0, Landroid/support/a/a/k;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/a/a/c$c;-><init>(Landroid/support/a/a/d;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Landroid/support/a/a/k;->d:Landroid/support/a/a/c;

    iget-object v1, p0, Landroid/support/a/a/k;->a:Landroid/support/a/a/c$a;

    iget-object v1, v1, Landroid/support/a/a/c$a;->b:Landroid/support/a/a/r$w;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/a/a/c;->b(Landroid/support/a/a/r$w;Z)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/a/a/k;->b:Landroid/support/v4/e/ai;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/e/ai;->a(Landroid/support/v4/e/an;)Landroid/support/v4/e/ai;

    iget-object v0, p0, Landroid/support/a/a/k;->c:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/e/w;->c(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/a/a/k;->c:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/e/w;->a(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/a/a/k;->c:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/e/w;->b(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/a/a/k;->d:Landroid/support/a/a/c;

    iget-object v1, p0, Landroid/support/a/a/k;->a:Landroid/support/a/a/c$a;

    iget-object v1, v1, Landroid/support/a/a/c$a;->b:Landroid/support/a/a/r$w;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/a/a/c;->a(Landroid/support/a/a/r$w;Z)V

    iget-object v0, p0, Landroid/support/a/a/k;->d:Landroid/support/a/a/c;

    invoke-static {v0}, Landroid/support/a/a/c;->h(Landroid/support/a/a/c;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/a/a/k;->a:Landroid/support/a/a/c$a;

    iget-object v1, v1, Landroid/support/a/a/c$a;->b:Landroid/support/a/a/r$w;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/a/a/k;->d:Landroid/support/a/a/c;

    invoke-static {v0}, Landroid/support/a/a/c;->e(Landroid/support/a/a/c;)V

    return-void
.end method
