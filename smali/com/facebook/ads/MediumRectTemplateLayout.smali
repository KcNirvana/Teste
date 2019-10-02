.class public Lcom/facebook/ads/MediumRectTemplateLayout;
.super Lcom/facebook/ads/NativeAdLayout;


# static fields
.field private static final a:I

.field private static final b:I


# instance fields
.field private final c:Lcom/facebook/ads/internal/t/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x438c0000    # 280.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/MediumRectTemplateLayout;->a:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const v1, 0x43bb8000    # 375.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/MediumRectTemplateLayout;->b:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/internal/t/j;)V
    .locals 11

    invoke-direct {p0, p1}, Lcom/facebook/ads/NativeAdLayout;-><init>(Landroid/content/Context;)V

    new-instance v8, Lcom/facebook/ads/MediaView;

    invoke-virtual {p0}, Lcom/facebook/ads/MediumRectTemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    new-instance v9, Lcom/facebook/ads/MediaView;

    invoke-virtual {p0}, Lcom/facebook/ads/MediumRectTemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/facebook/ads/AdOptionsView;

    invoke-virtual {p0}, Lcom/facebook/ads/MediumRectTemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0, p2, p0}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    invoke-virtual {p3}, Lcom/facebook/ads/internal/t/j;->c()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/AdOptionsView;->setIconColor(I)V

    new-instance v10, Lcom/facebook/ads/internal/t/a;

    invoke-virtual {p2}, Lcom/facebook/ads/NativeAd;->f()Lcom/facebook/ads/internal/t/e;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/ads/NativeAd;->e()Lcom/facebook/ads/NativeAdView$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdView$Type;->a()Lcom/facebook/ads/internal/t/k;

    move-result-object v6

    move-object v0, v10

    move-object v1, p1

    move-object v4, v9

    move-object v5, v8

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/internal/t/a;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/t/e;Lcom/facebook/ads/AdOptionsView;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/internal/t/k;Lcom/facebook/ads/internal/t/j;)V

    iput-object v10, p0, Lcom/facebook/ads/MediumRectTemplateLayout;->c:Lcom/facebook/ads/internal/t/a;

    sget p1, Lcom/facebook/ads/MediumRectTemplateLayout;->a:I

    invoke-virtual {p0, p1}, Lcom/facebook/ads/MediumRectTemplateLayout;->setMinWidth(I)V

    sget p1, Lcom/facebook/ads/MediumRectTemplateLayout;->b:I

    invoke-virtual {p0, p1}, Lcom/facebook/ads/MediumRectTemplateLayout;->setMaxWidth(I)V

    invoke-virtual {p3}, Lcom/facebook/ads/internal/t/j;->b()I

    move-result p1

    invoke-static {p0, p1}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/facebook/ads/MediumRectTemplateLayout;->c:Lcom/facebook/ads/internal/t/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/t/a;->getViewsForInteraction()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2, p0, v9, v8, p1}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x11

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p2, p0, Lcom/facebook/ads/MediumRectTemplateLayout;->c:Lcom/facebook/ads/internal/t/a;

    invoke-virtual {p0, p2, p1}, Lcom/facebook/ads/MediumRectTemplateLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/facebook/ads/NativeAdLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/facebook/ads/MediumRectTemplateLayout;->c:Lcom/facebook/ads/internal/t/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/t/a;->a()V

    return-void
.end method
