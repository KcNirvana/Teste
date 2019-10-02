.class public Lcom/facebook/ads/BannerTemplateLayout;
.super Lcom/facebook/ads/NativeAdLayout;


# static fields
.field private static final a:I

.field private static final b:I


# instance fields
.field private final c:Lcom/facebook/ads/internal/view/h/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x438c0000    # 280.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/BannerTemplateLayout;->a:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const v1, 0x43bb8000    # 375.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/BannerTemplateLayout;->b:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/internal/t/j;)V
    .locals 10

    invoke-direct {p0, p1}, Lcom/facebook/ads/NativeAdLayout;-><init>(Landroid/content/Context;)V

    new-instance v8, Lcom/facebook/ads/MediaView;

    invoke-virtual {p0}, Lcom/facebook/ads/BannerTemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/facebook/ads/AdOptionsView;

    invoke-virtual {p0}, Lcom/facebook/ads/BannerTemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0, p2, p0}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    invoke-virtual {p3}, Lcom/facebook/ads/internal/t/j;->c()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/facebook/ads/AdOptionsView;->setIconColor(I)V

    invoke-virtual {p2}, Lcom/facebook/ads/NativeBannerAd;->a()Lcom/facebook/ads/NativeBannerAdView$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/NativeBannerAdView$Type;->a()Lcom/facebook/ads/internal/t/k;

    move-result-object v7

    sget-object v0, Lcom/facebook/ads/internal/t/k;->e:Lcom/facebook/ads/internal/t/k;

    if-ne v7, v0, :cond_0

    new-instance v9, Lcom/facebook/ads/internal/view/h/b;

    invoke-virtual {p2}, Lcom/facebook/ads/NativeBannerAd;->f()Lcom/facebook/ads/internal/t/e;

    move-result-object v2

    move-object v0, v9

    move-object v1, p1

    move-object v3, p3

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/internal/view/h/b;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/t/e;Lcom/facebook/ads/internal/t/j;Lcom/facebook/ads/internal/t/k;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/AdOptionsView;)V

    iput-object v9, p0, Lcom/facebook/ads/BannerTemplateLayout;->c:Lcom/facebook/ads/internal/view/h/c;

    sget p1, Lcom/facebook/ads/BannerTemplateLayout;->a:I

    invoke-virtual {p0, p1}, Lcom/facebook/ads/BannerTemplateLayout;->setMinWidth(I)V

    goto :goto_0

    :cond_0
    new-instance v9, Lcom/facebook/ads/internal/t/a;

    invoke-virtual {p2}, Lcom/facebook/ads/NativeBannerAd;->f()Lcom/facebook/ads/internal/t/e;

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, v9

    move-object v1, p1

    move-object v3, v6

    move-object v5, v8

    move-object v6, v7

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/internal/t/a;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/t/e;Lcom/facebook/ads/AdOptionsView;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/internal/t/k;Lcom/facebook/ads/internal/t/j;)V

    iput-object v9, p0, Lcom/facebook/ads/BannerTemplateLayout;->c:Lcom/facebook/ads/internal/view/h/c;

    sget p1, Lcom/facebook/ads/BannerTemplateLayout;->a:I

    invoke-virtual {p0, p1}, Lcom/facebook/ads/BannerTemplateLayout;->setMinWidth(I)V

    sget p1, Lcom/facebook/ads/BannerTemplateLayout;->b:I

    invoke-virtual {p0, p1}, Lcom/facebook/ads/BannerTemplateLayout;->setMaxWidth(I)V

    :goto_0
    invoke-virtual {p3}, Lcom/facebook/ads/internal/t/j;->b()I

    move-result p1

    invoke-static {p0, p1}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/facebook/ads/BannerTemplateLayout;->c:Lcom/facebook/ads/internal/view/h/c;

    invoke-interface {p1}, Lcom/facebook/ads/internal/view/h/c;->getViewsForInteraction()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2, p0, v8, p1}, Lcom/facebook/ads/NativeBannerAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x11

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p2, p0, Lcom/facebook/ads/BannerTemplateLayout;->c:Lcom/facebook/ads/internal/view/h/c;

    invoke-interface {p2}, Lcom/facebook/ads/internal/view/h/c;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/facebook/ads/BannerTemplateLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/facebook/ads/NativeAdLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/facebook/ads/BannerTemplateLayout;->c:Lcom/facebook/ads/internal/view/h/c;

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/h/c;->a()V

    return-void
.end method
