.class Lcom/facebook/ads/internal/view/f$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/w/b/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/internal/view/f;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/internal/view/component/i;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/facebook/ads/internal/adapters/b/f;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/view/f;Lcom/facebook/ads/internal/adapters/b/f;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/f$d;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/f;->e(Lcom/facebook/ads/internal/view/f;)Lcom/facebook/ads/internal/view/component/i;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/f$d;->b:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/f$d;->c:Lcom/facebook/ads/internal/adapters/b/f;

    iput p3, p0, Lcom/facebook/ads/internal/view/f$d;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/view/f;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/f;->b(Lcom/facebook/ads/internal/view/f;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/f$d;->c:Lcom/facebook/ads/internal/adapters/b/f;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/b/f;->i()Lcom/facebook/ads/internal/adapters/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/b/c;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/internal/view/g/b;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/g/b;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/internal/view/g/b;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/view/g/b;->a()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/f$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/view/f;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/f$d;->c:Lcom/facebook/ads/internal/adapters/b/f;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/f;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/internal/adapters/b/q;

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/view/f;->a(Lcom/facebook/ads/internal/view/f;Lcom/facebook/ads/internal/adapters/b/q;)V

    :cond_2
    return-void
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f$d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/view/component/i;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/internal/view/f$d;->d:I

    sub-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/facebook/ads/internal/view/f$d;->d:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/component/i;->setProgress(I)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/f$d;->c:Lcom/facebook/ads/internal/adapters/b/f;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/b/f;->e()Lcom/facebook/ads/internal/adapters/b/g;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/facebook/ads/internal/adapters/b/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/component/i;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
