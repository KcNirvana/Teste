.class public Lcom/facebook/ads/AdView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/facebook/ads/Ad;


# instance fields
.field private final a:Landroid/util/DisplayMetrics;

.field private final b:Lcom/facebook/ads/internal/protocol/d;

.field private final c:Ljava/lang/String;

.field private d:Lcom/facebook/ads/internal/b/b;

.field private e:Lcom/facebook/ads/AdListener;

.field private f:Landroid/view/View;

.field private g:Lcom/facebook/ads/internal/view/c/c;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V
    .locals 7

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    if-eqz p3, :cond_0

    sget-object v0, Lcom/facebook/ads/AdSize;->INTERSTITIAL:Lcom/facebook/ads/AdSize;

    if-eq p3, v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/AdView;->a:Landroid/util/DisplayMetrics;

    invoke-virtual {p3}, Lcom/facebook/ads/AdSize;->toInternalAdSize()Lcom/facebook/ads/internal/protocol/d;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/AdView;->b:Lcom/facebook/ads/internal/protocol/d;

    iput-object p2, p0, Lcom/facebook/ads/AdView;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/AdView;->b:Lcom/facebook/ads/internal/protocol/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/protocol/f;->a(Lcom/facebook/ads/internal/protocol/d;)Lcom/facebook/ads/internal/protocol/e;

    move-result-object v3

    new-instance v0, Lcom/facebook/ads/internal/b/a;

    sget-object v4, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {p3}, Lcom/facebook/ads/AdSize;->toInternalAdSize()Lcom/facebook/ads/internal/protocol/d;

    move-result-object v5

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/internal/b/a;-><init>(Ljava/lang/String;Lcom/facebook/ads/internal/protocol/e;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/internal/protocol/d;I)V

    iget-object p3, p0, Lcom/facebook/ads/AdView;->h:Ljava/lang/String;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/internal/b/a;->a(Ljava/lang/String;)V

    new-instance p3, Lcom/facebook/ads/internal/b/b;

    invoke-direct {p3, p1, v0}, Lcom/facebook/ads/internal/b/b;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/b/a;)V

    iput-object p3, p0, Lcom/facebook/ads/AdView;->d:Lcom/facebook/ads/internal/b/b;

    iget-object p1, p0, Lcom/facebook/ads/AdView;->d:Lcom/facebook/ads/internal/b/b;

    new-instance p3, Lcom/facebook/ads/AdView$1;

    invoke-direct {p3, p0, p2}, Lcom/facebook/ads/AdView$1;-><init>(Lcom/facebook/ads/AdView;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/facebook/ads/internal/b/b;->a(Lcom/facebook/ads/internal/adapters/a;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "adSize"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/facebook/ads/AdView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/AdView;->f:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/AdView;->e:Lcom/facebook/ads/AdListener;

    return-object p0
.end method

.method static synthetic a(Lcom/facebook/ads/AdView;Lcom/facebook/ads/internal/view/c/c;)Lcom/facebook/ads/internal/view/c/c;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/AdView;->g:Lcom/facebook/ads/internal/view/c/c;

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/AdView;->d:Lcom/facebook/ads/internal/b/b;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/b/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/b/b;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/AdView;->d:Lcom/facebook/ads/internal/b/b;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/ads/AdView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/AdView;->f:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/ads/AdView;)Landroid/util/DisplayMetrics;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/AdView;->a:Landroid/util/DisplayMetrics;

    return-object p0
.end method

.method static synthetic e(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/protocol/d;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/AdView;->b:Lcom/facebook/ads/internal/protocol/d;

    return-object p0
.end method

.method static synthetic f(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/view/c/c;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/AdView;->g:Lcom/facebook/ads/internal/view/c/c;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/AdView;->d:Lcom/facebook/ads/internal/b/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/AdView;->d:Lcom/facebook/ads/internal/b/b;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/facebook/ads/internal/b/b;->a(Z)V

    iput-object v1, p0, Lcom/facebook/ads/AdView;->d:Lcom/facebook/ads/internal/b/b;

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/AdView;->g:Lcom/facebook/ads/internal/view/c/c;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/AdView;->g:Lcom/facebook/ads/internal/view/c/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/c/c;->b()V

    iget-object v0, p0, Lcom/facebook/ads/AdView;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/ads/AdView;->g:Lcom/facebook/ads/internal/view/c/c;

    invoke-virtual {v0, v2}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/AdView;->removeAllViews()V

    iput-object v1, p0, Lcom/facebook/ads/AdView;->f:Landroid/view/View;

    iput-object v1, p0, Lcom/facebook/ads/AdView;->e:Lcom/facebook/ads/AdListener;

    return-void
.end method

.method public disableAutoRefresh()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/AdView;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isAdInvalidated()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/AdView;->d:Lcom/facebook/ads/internal/b/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/AdView;->d:Lcom/facebook/ads/internal/b/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public loadAd()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/AdView;->a(Ljava/lang/String;)V

    return-void
.end method

.method public loadAdFromBid(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/AdView;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/facebook/ads/AdView;->f:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/AdView;->a:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/facebook/ads/AdView;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/facebook/ads/AdView;->b:Lcom/facebook/ads/internal/protocol/d;

    invoke-static {p1, v0, v1}, Lcom/facebook/ads/internal/protocol/f;->a(Landroid/util/DisplayMetrics;Landroid/view/View;Lcom/facebook/ads/internal/protocol/d;)V

    :cond_0
    return-void
.end method

.method public setAdListener(Lcom/facebook/ads/AdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/AdView;->e:Lcom/facebook/ads/AdListener;

    return-void
.end method

.method public setExtraHints(Lcom/facebook/ads/ExtraHints;)V
    .locals 0

    invoke-virtual {p1}, Lcom/facebook/ads/ExtraHints;->getHints()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/AdView;->h:Ljava/lang/String;

    return-void
.end method
