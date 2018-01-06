.class public abstract Landroid/support/a/a/r$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/a/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/a/a/r$w;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroid/support/a/a/r$b;

.field private b:Z


# virtual methods
.method public abstract a()I
.end method

.method public a(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract a(Landroid/view/ViewGroup;I)Landroid/support/a/a/r$w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public a(Landroid/support/a/a/r$c;)V
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r$a;->a:Landroid/support/a/a/r$b;

    invoke-virtual {v0, p1}, Landroid/support/a/a/r$b;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/support/a/a/r$w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract a(Landroid/support/a/a/r$w;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public a(Landroid/support/a/a/r$w;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/support/a/a/r$a;->a(Landroid/support/a/a/r$w;I)V

    return-void
.end method

.method public a(Landroid/support/a/a/r;)V
    .locals 0

    return-void
.end method

.method public b(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final b(Landroid/view/ViewGroup;I)Landroid/support/a/a/r$w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    const-string v0, "RV CreateView"

    invoke-static {v0}, Landroid/support/v4/c/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Landroid/support/a/a/r$a;->a(Landroid/view/ViewGroup;I)Landroid/support/a/a/r$w;

    move-result-object v0

    iput p2, v0, Landroid/support/a/a/r$w;->e:I

    invoke-static {}, Landroid/support/v4/c/a;->a()V

    return-object v0
.end method

.method public b(Landroid/support/a/a/r$c;)V
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r$a;->a:Landroid/support/a/a/r$b;

    invoke-virtual {v0, p1}, Landroid/support/a/a/r$b;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Landroid/support/a/a/r$w;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    iput p2, p1, Landroid/support/a/a/r$w;->b:I

    invoke-virtual {p0}, Landroid/support/a/a/r$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Landroid/support/a/a/r$a;->b(I)J

    move-result-wide v0

    iput-wide v0, p1, Landroid/support/a/a/r$w;->d:J

    :cond_0
    const/4 v0, 0x1

    const/16 v1, 0x207

    invoke-virtual {p1, v0, v1}, Landroid/support/a/a/r$w;->a(II)V

    const-string v0, "RV OnBindView"

    invoke-static {v0}, Landroid/support/v4/c/a;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/a/a/r$w;->u()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/a/a/r$a;->a(Landroid/support/a/a/r$w;ILjava/util/List;)V

    invoke-virtual {p1}, Landroid/support/a/a/r$w;->t()V

    invoke-static {}, Landroid/support/v4/c/a;->a()V

    return-void
.end method

.method public b(Landroid/support/a/a/r;)V
    .locals 0

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/a/a/r$a;->b:Z

    return v0
.end method

.method public b(Landroid/support/a/a/r$w;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/support/a/a/r$w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public d(Landroid/support/a/a/r$w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method
