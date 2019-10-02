.class Lcom/facebook/ads/internal/view/component/a/j;
.super Lcom/facebook/ads/internal/view/component/a/c;


# static fields
.field private static final c:I


# instance fields
.field private final d:Lcom/facebook/ads/internal/view/component/a/k;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/facebook/ads/internal/view/component/a/j;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/view/component/a/e;Lcom/facebook/ads/internal/adapters/b/h;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/internal/view/component/a/c;-><init>(Lcom/facebook/ads/internal/view/component/a/e;Lcom/facebook/ads/internal/adapters/b/h;Z)V

    new-instance p2, Lcom/facebook/ads/internal/view/component/a/k;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/component/a/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/component/a/e;->d()Landroid/view/View;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/facebook/ads/internal/view/component/a/k;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/component/a/j;->d:Lcom/facebook/ads/internal/view/component/a/k;

    iget-object p2, p0, Lcom/facebook/ads/internal/view/component/a/j;->d:Lcom/facebook/ads/internal/view/component/a/k;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/component/a/e;->h()Lcom/facebook/ads/internal/view/i/c/o;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/component/a/e;->i()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/facebook/ads/internal/view/component/a/k;->a(Landroid/view/View;Landroid/view/View;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x11

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p2, p0, Lcom/facebook/ads/internal/view/component/a/j;->d:Lcom/facebook/ads/internal/view/component/a/k;

    invoke-virtual {p0, p2, p1}, Lcom/facebook/ads/internal/view/component/a/j;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/ads/internal/adapters/b/l;Ljava/lang/String;D)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/ads/internal/view/component/a/c;->a(Lcom/facebook/ads/internal/adapters/b/l;Ljava/lang/String;D)V

    const-wide/16 p1, 0x0

    cmpl-double p1, p3, p1

    if-lez p1, :cond_1

    sget p1, Lcom/facebook/ads/internal/view/component/a/j;->c:I

    sget p2, Lcom/facebook/ads/internal/view/component/a/j;->a:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    int-to-double p1, p1

    div-double/2addr p1, p3

    double-to-int p1, p1

    sget-object p2, Lcom/facebook/ads/internal/w/b/x;->a:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr p2, p1

    sget p3, Lcom/facebook/ads/internal/view/component/a/n;->a:I

    if-ge p2, p3, :cond_0

    sget-object p1, Lcom/facebook/ads/internal/w/b/x;->a:Landroid/util/DisplayMetrics;

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    sget p2, Lcom/facebook/ads/internal/view/component/a/n;->a:I

    sub-int/2addr p1, p2

    :cond_0
    iget-object p2, p0, Lcom/facebook/ads/internal/view/component/a/j;->d:Lcom/facebook/ads/internal/view/component/a/k;

    invoke-virtual {p2, p1}, Lcom/facebook/ads/internal/view/component/a/k;->a(I)V

    iput p1, p0, Lcom/facebook/ads/internal/view/component/a/j;->e:I

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getExactMediaHeightIfAvailable()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/view/component/a/j;->e:I

    return v0
.end method
