.class public Lcom/facebook/ads/MediaView;
.super Lcom/facebook/ads/internal/t/f;


# static fields
.field private static final a:Ljava/lang/String; = "MediaView"


# instance fields
.field private b:Lcom/facebook/ads/internal/view/j;

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/facebook/ads/internal/view/c/b;

.field private e:Landroid/support/v7/widget/RecyclerView;

.field private f:Lcom/facebook/ads/MediaViewVideoRenderer;

.field private g:Landroid/view/View;

.field private h:Lcom/facebook/ads/MediaViewListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/t/f;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/MediaView;->setIconView(Landroid/widget/ImageView;)V

    new-instance v0, Lcom/facebook/ads/internal/view/c/b;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/view/c/b;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/MediaView;->setImageRenderer(Lcom/facebook/ads/internal/view/c/b;)V

    new-instance v0, Lcom/facebook/ads/internal/view/j;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/view/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaView;->b:Lcom/facebook/ads/internal/view/j;

    invoke-direct {p0}, Lcom/facebook/ads/MediaView;->b()V

    new-instance v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    invoke-direct {v0, p1}, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/MediaView;->setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    invoke-direct {p0}, Lcom/facebook/ads/MediaView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/internal/t/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/MediaView;->setIconView(Landroid/widget/ImageView;)V

    new-instance v0, Lcom/facebook/ads/internal/view/c/b;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/internal/view/c/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/MediaView;->setImageRenderer(Lcom/facebook/ads/internal/view/c/b;)V

    new-instance v0, Lcom/facebook/ads/internal/view/j;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/internal/view/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaView;->b:Lcom/facebook/ads/internal/view/j;

    invoke-direct {p0}, Lcom/facebook/ads/MediaView;->b()V

    new-instance v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/MediaView;->setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    invoke-direct {p0}, Lcom/facebook/ads/MediaView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/internal/t/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/MediaView;->setIconView(Landroid/widget/ImageView;)V

    new-instance v0, Lcom/facebook/ads/internal/view/c/b;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/internal/view/c/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/MediaView;->setImageRenderer(Lcom/facebook/ads/internal/view/c/b;)V

    new-instance v0, Lcom/facebook/ads/internal/view/j;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/internal/view/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/MediaView;->b:Lcom/facebook/ads/internal/view/j;

    invoke-direct {p0}, Lcom/facebook/ads/MediaView;->b()V

    new-instance v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/MediaView;->setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    invoke-direct {p0}, Lcom/facebook/ads/MediaView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/internal/t/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/MediaView;->setIconView(Landroid/widget/ImageView;)V

    new-instance v0, Lcom/facebook/ads/internal/view/c/b;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/ads/internal/view/c/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/MediaView;->setImageRenderer(Lcom/facebook/ads/internal/view/c/b;)V

    new-instance v0, Lcom/facebook/ads/internal/view/j;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/internal/view/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/MediaView;->b:Lcom/facebook/ads/internal/view/j;

    invoke-direct {p0}, Lcom/facebook/ads/MediaView;->b()V

    new-instance v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/MediaView;->setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    invoke-direct {p0}, Lcom/facebook/ads/MediaView;->a()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/MediaView;)Lcom/facebook/ads/MediaViewVideoRenderer;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/MediaView;->f:Lcom/facebook/ads/MediaViewVideoRenderer;

    return-object p0
.end method

.method private a()V
    .locals 2

    sget-object v0, Lcom/facebook/ads/internal/w/b/j;->n:Lcom/facebook/ads/internal/w/b/j;

    invoke-static {p0, v0}, Lcom/facebook/ads/internal/w/b/j;->a(Landroid/view/View;Lcom/facebook/ads/internal/w/b/j;)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/view/c/b;

    sget-object v1, Lcom/facebook/ads/internal/w/b/j;->n:Lcom/facebook/ads/internal/w/b/j;

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/w/b/j;->a(Landroid/view/View;Lcom/facebook/ads/internal/w/b/j;)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->f:Lcom/facebook/ads/MediaViewVideoRenderer;

    sget-object v1, Lcom/facebook/ads/internal/w/b/j;->n:Lcom/facebook/ads/internal/w/b/j;

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/w/b/j;->a(Landroid/view/View;Lcom/facebook/ads/internal/w/b/j;)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->e:Landroid/support/v7/widget/RecyclerView;

    sget-object v1, Lcom/facebook/ads/internal/w/b/j;->n:Lcom/facebook/ads/internal/w/b/j;

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/w/b/j;->a(Landroid/view/View;Lcom/facebook/ads/internal/w/b/j;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/MediaView;->j:Z

    return-void
.end method

.method private b()V
    .locals 3

    iget-boolean v0, p0, Lcom/facebook/ads/MediaView;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->e:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->b:Lcom/facebook/ads/internal/view/j;

    invoke-static {v0}, Lcom/facebook/ads/internal/w/b/x;->b(Landroid/view/View;)V

    :cond_0
    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    mul-float v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v2, p0, Lcom/facebook/ads/MediaView;->b:Lcom/facebook/ads/internal/view/j;

    invoke-virtual {v2, v1}, Lcom/facebook/ads/internal/view/j;->setChildSpacing(I)V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->b:Lcom/facebook/ads/internal/view/j;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v2, v0}, Lcom/facebook/ads/internal/view/j;->setPadding(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->b:Lcom/facebook/ads/internal/view/j;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/j;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->b:Lcom/facebook/ads/internal/view/j;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Carousel renderer must be set before nativeAd."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setIconView(Landroid/widget/ImageView;)V
    .locals 2

    iget-boolean v0, p0, Lcom/facebook/ads/MediaView;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->c:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/facebook/ads/internal/w/b/x;->b(Landroid/view/View;)V

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Lcom/facebook/ads/MediaView;->c:Landroid/widget/ImageView;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Image renderer must be set before nativeBannerAd."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setImageRenderer(Lcom/facebook/ads/internal/view/c/b;)V
    .locals 2

    iget-boolean v0, p0, Lcom/facebook/ads/MediaView;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/view/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/view/c/b;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/MediaView;->removeView(Landroid/view/View;)V

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/c/b;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/view/c/b;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Image renderer must be set before nativeAd."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/MediaView;->j:Z

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/facebook/ads/MediaView;->j:Z

    return-void
.end method

.method a(Lcom/facebook/ads/NativeAdBase;Z)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/MediaView;->i:Z

    invoke-virtual {p1, p0}, Lcom/facebook/ads/NativeAdBase;->b(Lcom/facebook/ads/MediaView;)V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/view/c/b;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/c/b;->setVisibility(I)V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/view/c/b;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3}, Lcom/facebook/ads/internal/view/c/b;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->f:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->f:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v1}, Lcom/facebook/ads/MediaViewVideoRenderer;->a()V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->e:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/MediaView;->c:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/facebook/ads/MediaView;->bringChildToFront(Landroid/view/View;)V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->c:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/facebook/ads/MediaView;->g:Landroid/view/View;

    new-instance v1, Lcom/facebook/ads/internal/view/c/d;

    iget-object v3, p0, Lcom/facebook/ads/MediaView;->c:Landroid/widget/ImageView;

    invoke-direct {v1, v3}, Lcom/facebook/ads/internal/view/c/d;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/c/d;->a()Lcom/facebook/ads/internal/view/c/d;

    move-result-object v1

    if-eqz p2, :cond_1

    new-instance v3, Lcom/facebook/ads/MediaView$1;

    invoke-direct {v3, p0, p1}, Lcom/facebook/ads/MediaView$1;-><init>(Lcom/facebook/ads/MediaView;Lcom/facebook/ads/NativeAdBase;)V

    invoke-virtual {v1, v3}, Lcom/facebook/ads/internal/view/c/d;->a(Lcom/facebook/ads/internal/view/c/e;)Lcom/facebook/ads/internal/view/c/d;

    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdBase;->f()Lcom/facebook/ads/internal/t/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/internal/t/e;->i()Lcom/facebook/ads/internal/t/g;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/facebook/ads/internal/t/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/facebook/ads/internal/view/c/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdBase;->f()Lcom/facebook/ads/internal/t/e;

    move-result-object p2

    invoke-virtual {p2, v2, v0}, Lcom/facebook/ads/internal/t/e;->a(ZZ)V

    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/MediaView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "api"

    sget v1, Lcom/facebook/ads/internal/w/h/b;->h:I

    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Native Ad Icon is null. Loaded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdBase;->f()Lcom/facebook/ads/internal/t/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/t/e;->f()Z

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v0, v1, v2}, Lcom/facebook/ads/internal/w/h/a;->b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/MediaView;->j:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/t/f;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/MediaView;->j:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/facebook/ads/internal/t/f;->addView(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/MediaView;->j:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/internal/t/f;->addView(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/MediaView;->j:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/internal/t/f;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/MediaView;->j:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/facebook/ads/internal/t/f;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->e:Landroid/support/v7/widget/RecyclerView;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->f:Lcom/facebook/ads/MediaViewVideoRenderer;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/view/c/b;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->c:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/ads/internal/t/f;->bringChildToFront(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->f:Lcom/facebook/ads/MediaViewVideoRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/MediaViewVideoRenderer;->pause(Z)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->f:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->destroy()V

    return-void
.end method

.method protected getAdContentsView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->g:Landroid/view/View;

    return-object v0
.end method

.method protected getAdEventManager()Lcom/facebook/ads/internal/s/c;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/MediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/s/d;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/s/c;

    move-result-object v0

    return-object v0
.end method

.method public setListener(Lcom/facebook/ads/MediaViewListener;)V
    .locals 2

    iput-object p1, p0, Lcom/facebook/ads/MediaView;->h:Lcom/facebook/ads/MediaViewListener;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/MediaView;->f:Lcom/facebook/ads/MediaViewVideoRenderer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->setListener(Lcom/facebook/ads/internal/view/q;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/MediaView;->f:Lcom/facebook/ads/MediaViewVideoRenderer;

    new-instance v1, Lcom/facebook/ads/MediaView$4;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/MediaView$4;-><init>(Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaViewListener;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/MediaViewVideoRenderer;->setListener(Lcom/facebook/ads/internal/view/q;)V

    return-void
.end method

.method setNativeAd(Lcom/facebook/ads/NativeAd;)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/MediaView;->i:Z

    invoke-virtual {p1, p0}, Lcom/facebook/ads/NativeAd;->a(Lcom/facebook/ads/MediaView;)V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->c:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->c:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->d()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/NativeAd;

    invoke-virtual {v5}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/facebook/ads/MediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->q(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->b:Lcom/facebook/ads/internal/view/j;

    iput-object v1, p0, Lcom/facebook/ads/MediaView;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->e:Landroid/support/v7/widget/RecyclerView;

    check-cast v1, Lcom/facebook/ads/internal/view/j;

    invoke-virtual {v1, v4}, Lcom/facebook/ads/internal/view/j;->setCurrentPosition(I)V

    if-eqz v0, :cond_3

    new-instance v0, Lcom/facebook/ads/internal/adapters/a/b;

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->e:Landroid/support/v7/widget/RecyclerView;

    check-cast v1, Lcom/facebook/ads/internal/view/j;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->f()Lcom/facebook/ads/internal/t/e;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/ads/internal/t/e;->u()Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lcom/facebook/ads/internal/adapters/a/b;-><init>(Lcom/facebook/ads/internal/view/j;Ljava/util/List;)V

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/facebook/ads/internal/adapters/a/c;

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->e:Landroid/support/v7/widget/RecyclerView;

    check-cast v1, Lcom/facebook/ads/internal/view/j;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->f()Lcom/facebook/ads/internal/t/e;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/ads/internal/t/e;->u()Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lcom/facebook/ads/internal/adapters/a/c;-><init>(Lcom/facebook/ads/internal/view/j;Ljava/util/List;)V

    :goto_2
    new-instance v1, Lcom/facebook/ads/MediaView$2;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/MediaView$2;-><init>(Lcom/facebook/ads/MediaView;Lcom/facebook/ads/NativeAd;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/a/a;->a(Lcom/facebook/ads/internal/adapters/a/a$a;)V

    iget-object p1, p0, Lcom/facebook/ads/MediaView;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/facebook/ads/MediaView;->e:Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/facebook/ads/MediaView;->g:Landroid/view/View;

    iget-object p1, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/view/c/b;

    invoke-virtual {p1, v2}, Lcom/facebook/ads/internal/view/c/b;->setVisibility(I)V

    iget-object p1, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/view/c/b;

    invoke-virtual {p1, v3, v3}, Lcom/facebook/ads/internal/view/c/b;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/facebook/ads/MediaView;->f:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {p1, v2}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    iget-object p1, p0, Lcom/facebook/ads/MediaView;->f:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {p1}, Lcom/facebook/ads/MediaViewVideoRenderer;->a()V

    iget-object p1, p0, Lcom/facebook/ads/MediaView;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/MediaView;->bringChildToFront(Landroid/view/View;)V

    iget-object p1, p0, Lcom/facebook/ads/MediaView;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v4}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v1, v5, :cond_5

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->f()Lcom/facebook/ads/internal/t/e;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/ads/MediaView;->k:Z

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/t/e;->b(Z)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->f:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getVideoView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/MediaView;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/view/c/b;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/internal/view/c/b;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/view/c/b;

    invoke-virtual {v0, v3, v3}, Lcom/facebook/ads/internal/view/c/b;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->e:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/MediaView;->f:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/MediaView;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->f:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/MediaViewVideoRenderer;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    iget-object p1, p0, Lcom/facebook/ads/MediaView;->f:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {p1, v4}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/view/c/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/c/b;->getBodyImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/MediaView;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->f:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->f:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->a()V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->e:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/view/c/b;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/MediaView;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/view/c/b;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/internal/view/c/b;->setVisibility(I)V

    new-instance v0, Lcom/facebook/ads/internal/view/c/d;

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/view/c/b;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/view/c/d;-><init>(Lcom/facebook/ads/internal/view/c/b;)V

    invoke-virtual {p0}, Lcom/facebook/ads/MediaView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/view/c/d;->a(II)Lcom/facebook/ads/internal/view/c/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/ads/MediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/r/a;->m(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/c/d;->a(Z)Lcom/facebook/ads/internal/view/c/d;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/MediaView$3;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/MediaView$3;-><init>(Lcom/facebook/ads/MediaView;Lcom/facebook/ads/NativeAd;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/c/d;->a(Lcom/facebook/ads/internal/view/c/e;)Lcom/facebook/ads/internal/view/c/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->f()Lcom/facebook/ads/internal/t/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/t/e;->j()Lcom/facebook/ads/internal/t/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/t/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/c/d;->a(Ljava/lang/String;)V

    :cond_9
    :goto_4
    return-void
.end method

.method public setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V
    .locals 2

    iget-boolean v0, p0, Lcom/facebook/ads/MediaView;->i:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->f:Lcom/facebook/ads/MediaViewVideoRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->f:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/MediaView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->f:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->destroy()V

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/MediaView;->getAdEventManager()Lcom/facebook/ads/internal/s/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->setAdEventManager(Lcom/facebook/ads/internal/s/c;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/MediaView;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Lcom/facebook/ads/MediaView;->f:Lcom/facebook/ads/MediaViewVideoRenderer;

    iget-object p1, p0, Lcom/facebook/ads/MediaView;->f:Lcom/facebook/ads/MediaViewVideoRenderer;

    instance-of p1, p1, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/facebook/ads/MediaView;->k:Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Video renderer must be set before nativeAd."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
