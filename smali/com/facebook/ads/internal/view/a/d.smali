.class public Lcom/facebook/ads/internal/view/a/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x43480000    # 200.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/a/d;->a:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/a/d;->b:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x42480000    # 50.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/a/d;->c:I

    return-void
.end method

.method public static a(Lcom/facebook/ads/NativeAdLayout;)Lcom/facebook/ads/internal/adapters/p$b;
    .locals 2
    .param p0    # Lcom/facebook/ads/NativeAdLayout;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    sget-object p0, Lcom/facebook/ads/internal/adapters/p$b;->c:Lcom/facebook/ads/internal/adapters/p$b;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/NativeAdLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAdLayout;->getHeight()I

    move-result p0

    sget v1, Lcom/facebook/ads/internal/view/a/d;->a:I

    if-lt v0, v1, :cond_1

    sget v1, Lcom/facebook/ads/internal/view/a/d;->a:I

    if-ge p0, v1, :cond_2

    :cond_1
    sget v1, Lcom/facebook/ads/internal/view/a/d;->b:I

    if-lt v0, v1, :cond_3

    sget v0, Lcom/facebook/ads/internal/view/a/d;->c:I

    if-ge p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_4

    sget-object p0, Lcom/facebook/ads/internal/adapters/p$b;->b:Lcom/facebook/ads/internal/adapters/p$b;

    return-object p0

    :cond_4
    sget-object p0, Lcom/facebook/ads/internal/adapters/p$b;->a:Lcom/facebook/ads/internal/adapters/p$b;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Ljava/lang/String;Lcom/facebook/ads/NativeAdLayout;)Lcom/facebook/ads/internal/view/a/c;
    .locals 7
    .param p3    # Lcom/facebook/ads/NativeAdLayout;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p3}, Lcom/facebook/ads/NativeAdLayout;->getWidth()I

    move-result v5

    invoke-virtual {p3}, Lcom/facebook/ads/NativeAdLayout;->getHeight()I

    move-result v6

    sget p3, Lcom/facebook/ads/internal/view/a/d;->a:I

    if-lt v5, p3, :cond_1

    sget p3, Lcom/facebook/ads/internal/view/a/d;->a:I

    if-lt v6, p3, :cond_1

    new-instance p3, Lcom/facebook/ads/internal/view/a/k;

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/internal/view/a/k;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Ljava/lang/String;II)V

    return-object p3

    :cond_1
    sget p3, Lcom/facebook/ads/internal/view/a/d;->b:I

    if-lt v5, p3, :cond_2

    sget p3, Lcom/facebook/ads/internal/view/a/d;->c:I

    if-lt v6, p3, :cond_2

    new-instance p3, Lcom/facebook/ads/internal/view/a/h;

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/internal/view/a/h;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Ljava/lang/String;II)V

    return-object p3

    :cond_2
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Ljava/lang/String;Lcom/facebook/ads/internal/view/a;Lcom/facebook/ads/internal/view/a$a;)Lcom/facebook/ads/internal/view/a/c;
    .locals 7

    new-instance v6, Lcom/facebook/ads/internal/view/a/g;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/view/a/g;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Ljava/lang/String;Lcom/facebook/ads/internal/view/a;Lcom/facebook/ads/internal/view/a$a;)V

    return-object v6
.end method
