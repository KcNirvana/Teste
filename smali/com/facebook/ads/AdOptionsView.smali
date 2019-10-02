.class public Lcom/facebook/ads/AdOptionsView;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/AdOptionsView$Orientation;
    }
.end annotation


# static fields
.field private static final a:I

.field private static final b:I


# instance fields
.field private final c:Landroid/widget/ImageView;

.field private final d:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x41b80000    # 23.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/AdOptionsView;->a:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/AdOptionsView;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V
    .locals 6
    .param p3    # Lcom/facebook/ads/NativeAdLayout;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    sget-object v4, Lcom/facebook/ads/AdOptionsView$Orientation;->HORIZONTAL:Lcom/facebook/ads/AdOptionsView$Orientation;

    const/16 v5, 0x17

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;Lcom/facebook/ads/AdOptionsView$Orientation;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;Lcom/facebook/ads/AdOptionsView$Orientation;I)V
    .locals 5
    .param p3    # Lcom/facebook/ads/NativeAdLayout;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/AdOptionsView;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/facebook/ads/AdOptionsView;->c:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/facebook/ads/AdOptionsView;->c:Landroid/widget/ImageView;

    sget v1, Lcom/facebook/ads/AdOptionsView;->b:I

    sget v2, Lcom/facebook/ads/AdOptionsView;->b:I

    sget v3, Lcom/facebook/ads/AdOptionsView;->b:I

    sget v4, Lcom/facebook/ads/AdOptionsView;->b:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/AdOptionsView;->c:Landroid/widget/ImageView;

    sget-object v1, Lcom/facebook/ads/internal/w/c/b;->i:Lcom/facebook/ads/internal/w/c/b;

    invoke-static {v1}, Lcom/facebook/ads/internal/w/c/c;->a(Lcom/facebook/ads/internal/w/c/b;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/AdOptionsView;->d:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/facebook/ads/AdOptionsView;->d:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p1, p0, Lcom/facebook/ads/AdOptionsView;->d:Landroid/widget/ImageView;

    sget v0, Lcom/facebook/ads/AdOptionsView;->b:I

    sget v1, Lcom/facebook/ads/AdOptionsView;->b:I

    sget v2, Lcom/facebook/ads/AdOptionsView;->b:I

    sget v3, Lcom/facebook/ads/AdOptionsView;->b:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object p1, p0, Lcom/facebook/ads/AdOptionsView;->d:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/internal/w/c/b;->f:Lcom/facebook/ads/internal/w/c/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/w/c/c;->a(Lcom/facebook/ads/internal/w/c/b;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object p1, Lcom/facebook/ads/AdOptionsView$Orientation;->HORIZONTAL:Lcom/facebook/ads/AdOptionsView$Orientation;

    if-ne p4, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/facebook/ads/AdOptionsView;->setOrientation(I)V

    const p1, -0x9f9890

    invoke-virtual {p0, p1}, Lcom/facebook/ads/AdOptionsView;->setIconColor(I)V

    sget p1, Lcom/facebook/ads/AdOptionsView;->a:I

    sget p4, Lcom/facebook/ads/internal/w/b/x;->b:F

    int-to-float p5, p5

    mul-float p4, p4, p5

    float-to-int p4, p4

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-instance p4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p4, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object p1, p0, Lcom/facebook/ads/AdOptionsView;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p4}, Lcom/facebook/ads/AdOptionsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/facebook/ads/AdOptionsView;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p4}, Lcom/facebook/ads/AdOptionsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2}, Lcom/facebook/ads/NativeAdBase;->f()Lcom/facebook/ads/internal/t/e;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/facebook/ads/internal/t/e;->a(Lcom/facebook/ads/NativeAdLayout;)V

    invoke-virtual {p2}, Lcom/facebook/ads/NativeAdBase;->isAdLoaded()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/facebook/ads/NativeAdBase;->g()Lcom/facebook/ads/internal/adapters/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/i;->g()Z

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/facebook/ads/AdOptionsView;->setVisibility(I)V

    return-void

    :cond_1
    new-instance p1, Lcom/facebook/ads/AdOptionsView$1;

    invoke-direct {p1, p0, p2}, Lcom/facebook/ads/AdOptionsView$1;-><init>(Lcom/facebook/ads/AdOptionsView;Lcom/facebook/ads/NativeAdBase;)V

    invoke-virtual {p0, p1}, Lcom/facebook/ads/AdOptionsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p1, Lcom/facebook/ads/internal/w/b/j;->o:Lcom/facebook/ads/internal/w/b/j;

    invoke-static {p0, p1}, Lcom/facebook/ads/internal/w/b/j;->a(Landroid/view/View;Lcom/facebook/ads/internal/w/b/j;)V

    return-void
.end method


# virtual methods
.method public setIconColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/AdOptionsView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/facebook/ads/AdOptionsView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
