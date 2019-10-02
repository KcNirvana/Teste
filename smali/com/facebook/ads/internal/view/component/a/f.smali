.class public Lcom/facebook/ads/internal/view/component/a/f;
.super Lcom/facebook/ads/internal/view/component/a/c;


# static fields
.field private static final c:I


# instance fields
.field private final d:Lcom/facebook/ads/internal/view/component/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/facebook/ads/internal/view/component/a/f;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/view/component/a/e;ZLcom/facebook/ads/internal/adapters/b/h;)V
    .locals 8

    invoke-direct {p0, p1, p3, p2}, Lcom/facebook/ads/internal/view/component/a/c;-><init>(Lcom/facebook/ads/internal/view/component/a/e;Lcom/facebook/ads/internal/adapters/b/h;Z)V

    new-instance p3, Lcom/facebook/ads/internal/view/component/a/k;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/component/a/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/component/a/e;->d()Landroid/view/View;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Lcom/facebook/ads/internal/view/component/a/k;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p3, p0, Lcom/facebook/ads/internal/view/component/a/f;->d:Lcom/facebook/ads/internal/view/component/a/k;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/component/a/f;->d:Lcom/facebook/ads/internal/view/component/a/k;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/component/a/e;->h()Lcom/facebook/ads/internal/view/i/c/o;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/component/a/e;->i()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/f;->getTitleDescContainer()Lcom/facebook/ads/internal/view/component/j;

    move-result-object v6

    const/16 v5, 0xa

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/internal/view/component/a/k;->a(Landroid/view/View;Landroid/view/View;ILcom/facebook/ads/internal/view/component/j;Z)V

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p3, -0x2

    const/4 v0, -0x1

    invoke-direct {p2, v0, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v1, Lcom/facebook/ads/internal/view/component/a/f;->a:I

    sget v2, Lcom/facebook/ads/internal/view/component/a/f;->a:I

    sget v3, Lcom/facebook/ads/internal/view/component/a/f;->a:I

    sget v4, Lcom/facebook/ads/internal/view/component/a/f;->a:I

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/f;->getCtaButton()Lcom/facebook/ads/internal/view/component/a;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/facebook/ads/internal/view/component/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/component/a/e;->a()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/f;->getCtaButton()Lcom/facebook/ads/internal/view/component/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/component/a;->getId()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v0, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0x11

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sget p3, Lcom/facebook/ads/internal/view/component/a/f;->a:I

    sget v0, Lcom/facebook/ads/internal/view/component/a/f;->a:I

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object p3, p0, Lcom/facebook/ads/internal/view/component/a/f;->d:Lcom/facebook/ads/internal/view/component/a/k;

    invoke-virtual {p2, p3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p2}, Lcom/facebook/ads/internal/view/component/a/f;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/f;->getCtaButton()Lcom/facebook/ads/internal/view/component/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/component/a/f;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/ads/internal/adapters/b/l;Ljava/lang/String;D)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/ads/internal/view/component/a/c;->a(Lcom/facebook/ads/internal/adapters/b/l;Ljava/lang/String;D)V

    const-wide/16 p1, 0x0

    cmpl-double p1, p3, p1

    if-lez p1, :cond_0

    sget p1, Lcom/facebook/ads/internal/view/component/a/f;->c:I

    sget p2, Lcom/facebook/ads/internal/view/component/a/f;->a:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    int-to-double p1, p1

    div-double/2addr p1, p3

    double-to-int p1, p1

    iget-object p2, p0, Lcom/facebook/ads/internal/view/component/a/f;->d:Lcom/facebook/ads/internal/view/component/a/k;

    invoke-virtual {p2, p1}, Lcom/facebook/ads/internal/view/component/a/k;->a(I)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
