.class public Lcom/facebook/ads/NativeAd;
.super Lcom/facebook/ads/NativeAdBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/NativeAd$AdCreativeType;
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/i;Lcom/facebook/ads/internal/m/d;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/NativeAdBase;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/i;Lcom/facebook/ads/internal/m/d;)V

    sget-object p1, Lcom/facebook/ads/internal/protocol/e;->j:Lcom/facebook/ads/internal/protocol/e;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/NativeAd;->a(Lcom/facebook/ads/internal/protocol/e;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/NativeAdBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p1, Lcom/facebook/ads/internal/protocol/e;->j:Lcom/facebook/ads/internal/protocol/e;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/NativeAd;->a(Lcom/facebook/ads/internal/protocol/e;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/ads/NativeAdBase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/NativeAdBase;-><init>(Lcom/facebook/ads/NativeAdBase;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/ads/internal/t/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/NativeAdBase;-><init>(Lcom/facebook/ads/internal/t/e;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->f()Lcom/facebook/ads/internal/t/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/t/e;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/facebook/ads/NativeAdView$Type;)V
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->f()Lcom/facebook/ads/internal/t/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdView$Type;->a()Lcom/facebook/ads/internal/t/k;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/t/e;->a(Lcom/facebook/ads/internal/t/k;)V

    return-void
.end method

.method b()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->f()Lcom/facebook/ads/internal/t/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/t/e;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c()Lcom/facebook/ads/VideoAutoplayBehavior;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->f()Lcom/facebook/ads/internal/t/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/t/e;->t()Lcom/facebook/ads/internal/t/l;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/VideoAutoplayBehavior;->fromInternalAutoplayBehavior(Lcom/facebook/ads/internal/t/l;)Lcom/facebook/ads/VideoAutoplayBehavior;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/NativeAd;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->f()Lcom/facebook/ads/internal/t/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/t/e;->u()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->f()Lcom/facebook/ads/internal/t/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/t/e;->u()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/internal/t/e;

    new-instance v3, Lcom/facebook/ads/NativeAd;

    invoke-direct {v3, v2}, Lcom/facebook/ads/NativeAd;-><init>(Lcom/facebook/ads/internal/t/e;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method e()Lcom/facebook/ads/NativeAdView$Type;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->f()Lcom/facebook/ads/internal/t/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/t/e;->x()Lcom/facebook/ads/internal/t/k;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->f()Lcom/facebook/ads/internal/t/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/t/e;->x()Lcom/facebook/ads/internal/t/k;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/NativeAdView$Type;->a(Lcom/facebook/ads/internal/t/k;)Lcom/facebook/ads/NativeAdView$Type;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getAdCreativeType()Lcom/facebook/ads/NativeAd$AdCreativeType;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->f()Lcom/facebook/ads/internal/t/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/t/e;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/NativeAd$AdCreativeType;->VIDEO:Lcom/facebook/ads/NativeAd$AdCreativeType;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->f()Lcom/facebook/ads/internal/t/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/t/e;->u()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->f()Lcom/facebook/ads/internal/t/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/t/e;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/facebook/ads/NativeAd$AdCreativeType;->CAROUSEL:Lcom/facebook/ads/NativeAd$AdCreativeType;

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->f()Lcom/facebook/ads/internal/t/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/t/e;->j()Lcom/facebook/ads/internal/t/g;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->f()Lcom/facebook/ads/internal/t/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/t/e;->j()Lcom/facebook/ads/internal/t/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/t/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/facebook/ads/NativeAd$AdCreativeType;->IMAGE:Lcom/facebook/ads/NativeAd$AdCreativeType;

    return-object v0

    :cond_2
    sget-object v0, Lcom/facebook/ads/NativeAd$AdCreativeType;->UNKNOWN:Lcom/facebook/ads/NativeAd$AdCreativeType;

    return-object v0
.end method

.method public registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;)V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Lcom/facebook/ads/AdIconView;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/AdIconView;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Landroid/widget/ImageView;)V
    .locals 1
    .param p3    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Landroid/widget/ImageView;Ljava/util/List;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Landroid/widget/ImageView;Ljava/util/List;)V
    .locals 1
    .param p3    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/facebook/ads/MediaView;",
            "Landroid/widget/ImageView;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->f()Lcom/facebook/ads/internal/t/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/t/e;->i()Lcom/facebook/ads/internal/t/g;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/facebook/ads/internal/t/e;->a(Lcom/facebook/ads/internal/t/g;Landroid/widget/ImageView;)V

    :cond_0
    const/4 p3, 0x0

    check-cast p3, Lcom/facebook/ads/AdIconView;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/AdIconView;)V
    .locals 1
    .param p3    # Lcom/facebook/ads/AdIconView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Ljava/util/List;)V
    .locals 1
    .param p3    # Lcom/facebook/ads/MediaView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/facebook/ads/MediaView;",
            "Lcom/facebook/ads/MediaView;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/facebook/ads/MediaView;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    :cond_0
    if-eqz p3, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p3, p0, v0}, Lcom/facebook/ads/MediaView;->a(Lcom/facebook/ads/NativeAdBase;Z)V

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->f()Lcom/facebook/ads/internal/t/e;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p4}, Lcom/facebook/ads/internal/t/e;->a(Landroid/view/View;Lcom/facebook/ads/internal/t/f;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->f()Lcom/facebook/ads/internal/t/e;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/facebook/ads/internal/t/e;->a(Landroid/view/View;Lcom/facebook/ads/internal/t/f;)V

    :goto_0
    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V
    .locals 1
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/facebook/ads/MediaView;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Lcom/facebook/ads/AdIconView;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    return-void
.end method
