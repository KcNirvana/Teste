.class public Lcom/facebook/ads/internal/view/k;
.super Lcom/facebook/ads/internal/t/f;


# static fields
.field private static final a:I


# instance fields
.field private final b:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/k;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/t/f;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/facebook/ads/internal/view/x;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/view/x;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/k;->b:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/k;->b:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/internal/w/b/j;->n:Lcom/facebook/ads/internal/w/b/j;

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/w/b/j;->a(Landroid/view/View;Lcom/facebook/ads/internal/w/b/j;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/k;->b:Landroid/widget/ImageView;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/internal/view/k;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/k;->b:Landroid/widget/ImageView;

    const v0, -0x7f000001

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;I)V

    sget p1, Lcom/facebook/ads/internal/view/k;->a:I

    sget v0, Lcom/facebook/ads/internal/view/k;->a:I

    sget v1, Lcom/facebook/ads/internal/view/k;->a:I

    sget v2, Lcom/facebook/ads/internal/view/k;->a:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/facebook/ads/internal/view/k;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public getAdContentsView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getImageCardView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Landroid/widget/ImageView;

    return-object v0
.end method
