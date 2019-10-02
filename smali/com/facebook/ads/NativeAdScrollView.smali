.class public Lcom/facebook/ads/NativeAdScrollView;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/NativeAdScrollView$b;,
        Lcom/facebook/ads/NativeAdScrollView$a;,
        Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;
    }
.end annotation


# static fields
.field public static final DEFAULT_INSET:I = 0x14

.field public static final DEFAULT_MAX_ADS:I = 0xa


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/ads/NativeAdsManager;

.field private final c:Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;

.field private final d:Lcom/facebook/ads/NativeAdView$Type;

.field private final e:I

.field private final f:Lcom/facebook/ads/NativeAdScrollView$b;

.field private final g:Lcom/facebook/ads/NativeAdViewAttributes;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/NativeAdScrollView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;I)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/NativeAdScrollView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/facebook/ads/NativeAdsManager;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p4, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must provide a NativeAdView.Type or AdViewProvider"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/facebook/ads/NativeAdScrollView;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/NativeAdScrollView;->b:Lcom/facebook/ads/NativeAdsManager;

    iput-object p5, p0, Lcom/facebook/ads/NativeAdScrollView;->g:Lcom/facebook/ads/NativeAdViewAttributes;

    iput-object p3, p0, Lcom/facebook/ads/NativeAdScrollView;->c:Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;

    iput-object p4, p0, Lcom/facebook/ads/NativeAdScrollView;->d:Lcom/facebook/ads/NativeAdView$Type;

    iput p6, p0, Lcom/facebook/ads/NativeAdScrollView;->e:I

    new-instance p2, Lcom/facebook/ads/NativeAdScrollView$a;

    invoke-direct {p2, p0}, Lcom/facebook/ads/NativeAdScrollView$a;-><init>(Lcom/facebook/ads/NativeAdScrollView;)V

    new-instance p3, Lcom/facebook/ads/NativeAdScrollView$b;

    invoke-direct {p3, p0, p1}, Lcom/facebook/ads/NativeAdScrollView$b;-><init>(Lcom/facebook/ads/NativeAdScrollView;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/facebook/ads/NativeAdScrollView;->f:Lcom/facebook/ads/NativeAdScrollView$b;

    iget-object p1, p0, Lcom/facebook/ads/NativeAdScrollView;->f:Lcom/facebook/ads/NativeAdScrollView$b;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/NativeAdScrollView$b;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const/16 p1, 0x14

    invoke-virtual {p0, p1}, Lcom/facebook/ads/NativeAdScrollView;->setInset(I)V

    invoke-virtual {p2}, Lcom/facebook/ads/NativeAdScrollView$a;->a()V

    iget-object p1, p0, Lcom/facebook/ads/NativeAdScrollView;->f:Lcom/facebook/ads/NativeAdScrollView$b;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/NativeAdScrollView;->addView(Landroid/view/View;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "NativeAdsManager not loaded"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdView$Type;)V
    .locals 7

    new-instance v5, Lcom/facebook/ads/NativeAdViewAttributes;

    invoke-direct {v5}, Lcom/facebook/ads/NativeAdViewAttributes;-><init>()V

    const/4 v3, 0x0

    const/16 v6, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/NativeAdScrollView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;)V
    .locals 7

    const/4 v3, 0x0

    const/16 v6, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/NativeAdScrollView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;I)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/NativeAdScrollView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/NativeAdScrollView;)I
    .locals 0

    iget p0, p0, Lcom/facebook/ads/NativeAdScrollView;->e:I

    return p0
.end method

.method static synthetic b(Lcom/facebook/ads/NativeAdScrollView;)Lcom/facebook/ads/NativeAdsManager;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/NativeAdScrollView;->b:Lcom/facebook/ads/NativeAdsManager;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/ads/NativeAdScrollView;)Lcom/facebook/ads/NativeAdView$Type;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/NativeAdScrollView;->d:Lcom/facebook/ads/NativeAdView$Type;

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/ads/NativeAdScrollView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/NativeAdScrollView;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/facebook/ads/NativeAdScrollView;)Lcom/facebook/ads/NativeAdViewAttributes;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/NativeAdScrollView;->g:Lcom/facebook/ads/NativeAdViewAttributes;

    return-object p0
.end method

.method static synthetic f(Lcom/facebook/ads/NativeAdScrollView;)Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/NativeAdScrollView;->c:Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;

    return-object p0
.end method


# virtual methods
.method public setInset(I)V
    .locals 4

    if-lez p1, :cond_0

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    int-to-float v1, p1

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/facebook/ads/NativeAdScrollView;->f:Lcom/facebook/ads/NativeAdScrollView$b;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v1, v3}, Lcom/facebook/ads/NativeAdScrollView$b;->setPadding(IIII)V

    iget-object v1, p0, Lcom/facebook/ads/NativeAdScrollView;->f:Lcom/facebook/ads/NativeAdScrollView$b;

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/facebook/ads/NativeAdScrollView$b;->setPageMargin(I)V

    iget-object p1, p0, Lcom/facebook/ads/NativeAdScrollView;->f:Lcom/facebook/ads/NativeAdScrollView$b;

    invoke-virtual {p1, v3}, Lcom/facebook/ads/NativeAdScrollView$b;->setClipToPadding(Z)V

    :cond_0
    return-void
.end method
