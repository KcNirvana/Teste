.class public Lcom/facebook/ads/internal/view/component/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:I

.field private static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/w/b/x;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/facebook/ads/internal/view/component/a/a;->a:I

    sget-object v0, Lcom/facebook/ads/internal/w/b/x;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/facebook/ads/internal/view/component/a/a;->b:I

    return-void
.end method

.method public static a(Lcom/facebook/ads/internal/adapters/b/l;)F
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/b/l;->c()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/d;->h()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/b/l;->c()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/b/d;->i()I

    move-result p0

    if-lez p0, :cond_0

    int-to-float v0, v0

    int-to-float p0, p0

    div-float/2addr v0, p0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0
.end method

.method public static a(D)Z
    .locals 2

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    cmpg-double p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(IID)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    const/16 p0, 0x10

    invoke-static {p0}, Lcom/facebook/ads/internal/w/b/x;->a(I)I

    move-result p0

    sget v3, Lcom/facebook/ads/internal/view/component/a;->a:I

    mul-int/lit8 v3, v3, 0x2

    sget v4, Lcom/facebook/ads/internal/view/component/a/f;->a:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr p0, v3

    add-int/2addr p0, v4

    sget v3, Lcom/facebook/ads/internal/view/component/a/a;->a:I

    sub-int/2addr v3, p1

    sub-int/2addr v3, p0

    sget p0, Lcom/facebook/ads/internal/view/component/a/a;->b:I

    sget p1, Lcom/facebook/ads/internal/view/component/a/f;->a:I

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p0, p1

    int-to-double p0, p0

    div-double/2addr p0, p2

    double-to-int p0, p0

    if-ge v3, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method
