.class public abstract Landroid/support/a/a/r$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/a/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/a/a/r$e$a;,
        Landroid/support/a/a/r$e$b;
    }
.end annotation


# instance fields
.field private a:Landroid/support/a/a/r$e$b;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/a/a/r$e$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0xfa

    const-wide/16 v2, 0x78

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/a/a/r$e;->a:Landroid/support/a/a/r$e$b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/r$e;->b:Ljava/util/ArrayList;

    iput-wide v2, p0, Landroid/support/a/a/r$e;->c:J

    iput-wide v2, p0, Landroid/support/a/a/r$e;->d:J

    iput-wide v4, p0, Landroid/support/a/a/r$e;->e:J

    iput-wide v4, p0, Landroid/support/a/a/r$e;->f:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/a/a/r$e;->g:Z

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method a(Landroid/support/a/a/r$e$b;)V
    .locals 0

    iput-object p1, p0, Landroid/support/a/a/r$e;->a:Landroid/support/a/a/r$e$b;

    return-void
.end method

.method public final a(Landroid/support/a/a/r$w;Z)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/support/a/a/r$e;->d(Landroid/support/a/a/r$w;Z)V

    iget-object v0, p0, Landroid/support/a/a/r$e;->a:Landroid/support/a/a/r$e$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r$e;->a:Landroid/support/a/a/r$e$b;

    invoke-interface {v0, p1}, Landroid/support/a/a/r$e$b;->d(Landroid/support/a/a/r$w;)V

    :cond_0
    return-void
.end method

.method public abstract a(Landroid/support/a/a/r$w;)Z
.end method

.method public abstract a(Landroid/support/a/a/r$w;IIII)Z
.end method

.method public abstract a(Landroid/support/a/a/r$w;Landroid/support/a/a/r$w;IIII)Z
.end method

.method public final b(Landroid/support/a/a/r$w;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/support/a/a/r$e;->c(Landroid/support/a/a/r$w;Z)V

    return-void
.end method

.method public abstract b()Z
.end method

.method public abstract b(Landroid/support/a/a/r$w;)Z
.end method

.method public abstract c()V
.end method

.method public abstract c(Landroid/support/a/a/r$w;)V
.end method

.method public c(Landroid/support/a/a/r$w;Z)V
    .locals 0

    return-void
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Landroid/support/a/a/r$e;->e:J

    return-wide v0
.end method

.method public final d(Landroid/support/a/a/r$w;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/a/a/r$e;->k(Landroid/support/a/a/r$w;)V

    iget-object v0, p0, Landroid/support/a/a/r$e;->a:Landroid/support/a/a/r$e$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r$e;->a:Landroid/support/a/a/r$e$b;

    invoke-interface {v0, p1}, Landroid/support/a/a/r$e$b;->a(Landroid/support/a/a/r$w;)V

    :cond_0
    return-void
.end method

.method public d(Landroid/support/a/a/r$w;Z)V
    .locals 0

    return-void
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Landroid/support/a/a/r$e;->c:J

    return-wide v0
.end method

.method public final e(Landroid/support/a/a/r$w;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/a/a/r$e;->o(Landroid/support/a/a/r$w;)V

    iget-object v0, p0, Landroid/support/a/a/r$e;->a:Landroid/support/a/a/r$e$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r$e;->a:Landroid/support/a/a/r$e$b;

    invoke-interface {v0, p1}, Landroid/support/a/a/r$e$b;->c(Landroid/support/a/a/r$w;)V

    :cond_0
    return-void
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Landroid/support/a/a/r$e;->d:J

    return-wide v0
.end method

.method public final f(Landroid/support/a/a/r$w;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/a/a/r$e;->m(Landroid/support/a/a/r$w;)V

    iget-object v0, p0, Landroid/support/a/a/r$e;->a:Landroid/support/a/a/r$e$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r$e;->a:Landroid/support/a/a/r$e$b;

    invoke-interface {v0, p1}, Landroid/support/a/a/r$e$b;->b(Landroid/support/a/a/r$w;)V

    :cond_0
    return-void
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Landroid/support/a/a/r$e;->f:J

    return-wide v0
.end method

.method public final g(Landroid/support/a/a/r$w;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/a/a/r$e;->j(Landroid/support/a/a/r$w;)V

    return-void
.end method

.method public final h(Landroid/support/a/a/r$w;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/a/a/r$e;->n(Landroid/support/a/a/r$w;)V

    return-void
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/a/a/r$e;->g:Z

    return v0
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Landroid/support/a/a/r$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$e$a;

    invoke-interface {v0}, Landroid/support/a/a/r$e$a;->a()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/r$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final i(Landroid/support/a/a/r$w;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/a/a/r$e;->l(Landroid/support/a/a/r$w;)V

    return-void
.end method

.method public j(Landroid/support/a/a/r$w;)V
    .locals 0

    return-void
.end method

.method public k(Landroid/support/a/a/r$w;)V
    .locals 0

    return-void
.end method

.method public l(Landroid/support/a/a/r$w;)V
    .locals 0

    return-void
.end method

.method public m(Landroid/support/a/a/r$w;)V
    .locals 0

    return-void
.end method

.method public n(Landroid/support/a/a/r$w;)V
    .locals 0

    return-void
.end method

.method public o(Landroid/support/a/a/r$w;)V
    .locals 0

    return-void
.end method
