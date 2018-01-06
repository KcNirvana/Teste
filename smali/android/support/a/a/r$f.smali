.class Landroid/support/a/a/r$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/a/a/r$e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/a/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/a/a/r;


# direct methods
.method private constructor <init>(Landroid/support/a/a/r;)V
    .locals 0

    iput-object p1, p0, Landroid/support/a/a/r$f;->a:Landroid/support/a/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/a/a/r;Landroid/support/a/a/s;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/a/a/r$f;-><init>(Landroid/support/a/a/r;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/a/a/r$w;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/a/a/r$w;->a(Z)V

    iget-object v0, p0, Landroid/support/a/a/r$f;->a:Landroid/support/a/a/r;

    iget-object v1, p1, Landroid/support/a/a/r$w;->a:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/a/a/r;->c(Landroid/support/a/a/r;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/a/a/r$w;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r$f;->a:Landroid/support/a/a/r;

    iget-object v1, p1, Landroid/support/a/a/r$w;->a:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/a/a/r;->removeDetachedView(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public b(Landroid/support/a/a/r$w;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/a/a/r$w;->a(Z)V

    invoke-static {p1}, Landroid/support/a/a/r$w;->d(Landroid/support/a/a/r$w;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r$f;->a:Landroid/support/a/a/r;

    iget-object v1, p1, Landroid/support/a/a/r$w;->a:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/a/a/r;->c(Landroid/support/a/a/r;Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public c(Landroid/support/a/a/r$w;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/a/a/r$w;->a(Z)V

    invoke-static {p1}, Landroid/support/a/a/r$w;->d(Landroid/support/a/a/r$w;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r$f;->a:Landroid/support/a/a/r;

    iget-object v1, p1, Landroid/support/a/a/r$w;->a:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/a/a/r;->c(Landroid/support/a/a/r;Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public d(Landroid/support/a/a/r$w;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/a/a/r$w;->a(Z)V

    iget-object v0, p1, Landroid/support/a/a/r$w;->g:Landroid/support/a/a/r$w;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/a/a/r$w;->h:Landroid/support/a/a/r$w;

    if-nez v0, :cond_0

    iput-object v2, p1, Landroid/support/a/a/r$w;->g:Landroid/support/a/a/r$w;

    const/16 v0, -0x41

    invoke-static {p1}, Landroid/support/a/a/r$w;->e(Landroid/support/a/a/r$w;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/support/a/a/r$w;->a(II)V

    :cond_0
    iput-object v2, p1, Landroid/support/a/a/r$w;->h:Landroid/support/a/a/r$w;

    invoke-static {p1}, Landroid/support/a/a/r$w;->d(Landroid/support/a/a/r$w;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/a/a/r$f;->a:Landroid/support/a/a/r;

    iget-object v1, p1, Landroid/support/a/a/r$w;->a:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/a/a/r;->c(Landroid/support/a/a/r;Landroid/view/View;)Z

    :cond_1
    return-void
.end method
