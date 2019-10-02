.class public Lcom/facebook/ads/internal/view/component/a/a/a;
.super Lcom/facebook/ads/internal/view/component/a/a/b;


# static fields
.field private static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x41400000    # 12.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/component/a/a/a;->c:I

    return-void
.end method

.method constructor <init>(Lcom/facebook/ads/internal/view/component/a/e;Lcom/facebook/ads/internal/adapters/b/h;Ljava/lang/String;Lcom/facebook/ads/internal/view/e/a/a;)V
    .locals 6

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/view/component/a/a/b;-><init>(Lcom/facebook/ads/internal/view/component/a/e;Lcom/facebook/ads/internal/adapters/b/h;ZLjava/lang/String;Lcom/facebook/ads/internal/view/e/a/a;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 7

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/a/a;->getTitleDescContainer()Lcom/facebook/ads/internal/view/component/j;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/component/j;->setAlignment(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/a/a;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getId()I

    move-result v4

    const/16 v5, 0x8

    invoke-virtual {v1, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p1, v1}, Lcom/facebook/ads/internal/view/component/j;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lcom/facebook/ads/internal/view/component/a/a/a;->c:I

    sget v4, Lcom/facebook/ads/internal/view/component/a/a/a;->c:I

    sget v5, Lcom/facebook/ads/internal/view/component/a/a/a;->c:I

    sget v6, Lcom/facebook/ads/internal/view/component/a/a/a;->c:I

    invoke-virtual {p1, v1, v4, v5, v6}, Lcom/facebook/ads/internal/view/component/j;->setPadding(IIII)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-direct {v1, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-static {p1, v1}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/a/a;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/a/a;->getCtaButton()Lcom/facebook/ads/internal/view/component/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/component/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/a/a;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/component/a/a/a;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/component/a/a/a;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/a/a;->getCtaButton()Lcom/facebook/ads/internal/view/component/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/component/a/a/a;->addView(Landroid/view/View;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        -0xeeeeef
    .end array-data
.end method

.method protected d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
