.class Lcom/facebook/ads/internal/view/i/c/i$1;
.super Lcom/facebook/ads/internal/o/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/i/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/internal/o/f<",
        "Lcom/facebook/ads/internal/view/i/b/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/i/c/i;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/i/c/i;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/i/c/i$1;->a:Lcom/facebook/ads/internal/view/i/c/i;

    invoke-direct {p0}, Lcom/facebook/ads/internal/o/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/internal/view/i/b/o;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/ads/internal/view/i/b/o;

    return-object v0
.end method

.method public bridge synthetic a(Lcom/facebook/ads/internal/o/d;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/i/b/o;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/i/c/i$1;->a(Lcom/facebook/ads/internal/view/i/b/o;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/i/b/o;)V
    .locals 3

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i/c/i$1;->a:Lcom/facebook/ads/internal/view/i/c/i;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/i/c/i;->a(Lcom/facebook/ads/internal/view/i/c/i;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i/c/i$1;->a:Lcom/facebook/ads/internal/view/i/c/i;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/i/c/i;->b(Lcom/facebook/ads/internal/view/i/c/i;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/internal/view/i/c/i$1;->a:Lcom/facebook/ads/internal/view/i/c/i;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/i/c/i;->c(Lcom/facebook/ads/internal/view/i/c/i;)I

    move-result p1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i/c/i$1;->a:Lcom/facebook/ads/internal/view/i/c/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/i/c/i;->d(Lcom/facebook/ads/internal/view/i/c/i;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/a;->getCurrentPositionInMillis()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    sub-int/2addr p1, v0

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i/c/i$1;->a:Lcom/facebook/ads/internal/view/i/c/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/i/c/i;->f(Lcom/facebook/ads/internal/view/i/c/i;)Lcom/facebook/ads/internal/view/i/c/i$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/i/c/i$1;->a:Lcom/facebook/ads/internal/view/i/c/i;

    invoke-static {v2}, Lcom/facebook/ads/internal/view/i/c/i;->e(Lcom/facebook/ads/internal/view/i/c/i;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/i/c/i$a;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/facebook/ads/internal/view/i/c/i$1;->a:Lcom/facebook/ads/internal/view/i/c/i;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/i/c/i;->f(Lcom/facebook/ads/internal/view/i/c/i;)Lcom/facebook/ads/internal/view/i/c/i$a;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i/c/i$1;->a:Lcom/facebook/ads/internal/view/i/c/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/i/c/i;->g(Lcom/facebook/ads/internal/view/i/c/i;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/i/c/i$a;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i/c/i$1;->a:Lcom/facebook/ads/internal/view/i/c/i;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/i/c/i;->a(Lcom/facebook/ads/internal/view/i/c/i;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    :goto_0
    return-void
.end method
