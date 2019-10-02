.class public Lcom/facebook/ads/internal/protocol/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/ads/internal/protocol/d;",
            "Lcom/facebook/ads/internal/protocol/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/protocol/f;->a:Ljava/util/Map;

    sget-object v0, Lcom/facebook/ads/internal/protocol/f;->a:Ljava/util/Map;

    sget-object v1, Lcom/facebook/ads/internal/protocol/d;->e:Lcom/facebook/ads/internal/protocol/d;

    sget-object v2, Lcom/facebook/ads/internal/protocol/e;->e:Lcom/facebook/ads/internal/protocol/e;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/ads/internal/protocol/f;->a:Ljava/util/Map;

    sget-object v1, Lcom/facebook/ads/internal/protocol/d;->d:Lcom/facebook/ads/internal/protocol/d;

    sget-object v2, Lcom/facebook/ads/internal/protocol/e;->d:Lcom/facebook/ads/internal/protocol/e;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/ads/internal/protocol/f;->a:Ljava/util/Map;

    sget-object v1, Lcom/facebook/ads/internal/protocol/d;->c:Lcom/facebook/ads/internal/protocol/d;

    sget-object v2, Lcom/facebook/ads/internal/protocol/e;->c:Lcom/facebook/ads/internal/protocol/e;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/util/DisplayMetrics;)Lcom/facebook/ads/internal/protocol/e;
    .locals 2

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, p0

    float-to-int p0, v1

    const/16 v1, 0x280

    if-lt v0, v1, :cond_0

    if-lt p0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    sget-object p0, Lcom/facebook/ads/internal/protocol/e;->i:Lcom/facebook/ads/internal/protocol/e;

    return-object p0

    :cond_1
    if-le p0, v0, :cond_2

    sget-object p0, Lcom/facebook/ads/internal/protocol/e;->h:Lcom/facebook/ads/internal/protocol/e;

    return-object p0

    :cond_2
    sget-object p0, Lcom/facebook/ads/internal/protocol/e;->g:Lcom/facebook/ads/internal/protocol/e;

    return-object p0
.end method

.method public static a(Lcom/facebook/ads/internal/protocol/d;)Lcom/facebook/ads/internal/protocol/e;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/protocol/f;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/internal/protocol/e;

    if-nez p0, :cond_0

    sget-object p0, Lcom/facebook/ads/internal/protocol/e;->b:Lcom/facebook/ads/internal/protocol/e;

    :cond_0
    return-object p0
.end method

.method public static a(Landroid/util/DisplayMetrics;Landroid/view/View;Lcom/facebook/ads/internal/protocol/d;)V
    .locals 4

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/protocol/d;->a()I

    move-result v2

    if-lt v0, v2, :cond_0

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/facebook/ads/internal/protocol/d;->a()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    :goto_0
    invoke-virtual {p2}, Lcom/facebook/ads/internal/protocol/d;->b()I

    move-result p2

    int-to-float p2, p2

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p0

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p0, v2

    invoke-direct {v1, v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p0, 0xe

    const/4 p2, -0x1

    invoke-virtual {v1, p0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
