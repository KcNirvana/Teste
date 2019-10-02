.class public Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;
.super Lcom/miui/video/base/ad/mediation/UICardBaseMediation;
.source "UICardMediationBig.java"


# instance fields
.field private vAd:Landroid/widget/ImageView;

.field private vAdChoiceContainer:Landroid/widget/RelativeLayout;

.field private vAdIconView:Lcom/facebook/ads/AdIconView;

.field private vClickableViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private vClose:Landroid/widget/ImageView;

.field private vContentContainer:Landroid/widget/RelativeLayout;

.field private vCover:Landroid/widget/ImageView;

.field private vCta:Landroid/widget/TextView;

.field private vFanMedia:Lcom/facebook/ads/MediaView;

.field private vFanMediaContainer:Landroid/widget/RelativeLayout;

.field private vIcon:Landroid/widget/ImageView;

.field private vMediaView:Lcom/google/android/gms/ads/formats/MediaView;

.field private vMediaViewContainer:Landroid/widget/RelativeLayout;

.field protected vMediationContainer:Landroid/widget/RelativeLayout;

.field private vRoot:Landroid/widget/RelativeLayout;

.field private vSubTitle:Landroid/widget/TextView;

.field private vTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1

    sget v0, Lcom/miui/video/base/R$layout;->ui_card_mediation_container_big:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->deleteSelf()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->deleteSelf()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vContentContainer:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private changeLayoutParams(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/base/R$dimen;->cpw_mediation_big_card_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vContentContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [I

    const/4 v1, 0x0

    aput v1, p1, v1

    const/4 v1, 0x1

    aput v0, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig$3;

    invoke-direct {v0, p0}, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig$3;-><init>(Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/miui/video/base/R$dimen;->cpw_mediation_big_card_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vContentContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private findViews(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vRoot:Landroid/widget/RelativeLayout;

    sget v1, Lcom/miui/video/base/R$id;->v_content_container:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vContentContainer:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vRoot:Landroid/widget/RelativeLayout;

    sget v1, Lcom/miui/video/base/R$id;->v_mediation_ad:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vAd:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vRoot:Landroid/widget/RelativeLayout;

    sget v1, Lcom/miui/video/base/R$id;->v_mediation_ad_choice_container:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vAdChoiceContainer:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vRoot:Landroid/widget/RelativeLayout;

    sget v1, Lcom/miui/video/base/R$id;->v_mediation_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vRoot:Landroid/widget/RelativeLayout;

    sget v1, Lcom/miui/video/base/R$id;->v_fan_ad_icon_view:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/AdIconView;

    iput-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vAdIconView:Lcom/facebook/ads/AdIconView;

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vRoot:Landroid/widget/RelativeLayout;

    sget v1, Lcom/miui/video/base/R$id;->v_mediation_title:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vRoot:Landroid/widget/RelativeLayout;

    sget v1, Lcom/miui/video/base/R$id;->v_mediation_sub_title:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vSubTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vRoot:Landroid/widget/RelativeLayout;

    sget v1, Lcom/miui/video/base/R$id;->v_mediation_cover:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vCover:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vRoot:Landroid/widget/RelativeLayout;

    sget v1, Lcom/miui/video/base/R$id;->v_mediation_cta:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vCta:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vRoot:Landroid/widget/RelativeLayout;

    sget v1, Lcom/miui/video/base/R$id;->v_close:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vClose:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vRoot:Landroid/widget/RelativeLayout;

    sget v1, Lcom/miui/video/base/R$id;->v_mediation_media:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/MediaView;

    iput-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vMediaView:Lcom/google/android/gms/ads/formats/MediaView;

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vRoot:Landroid/widget/RelativeLayout;

    sget v1, Lcom/miui/video/base/R$id;->v_mediation_media_container:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vMediaViewContainer:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vRoot:Landroid/widget/RelativeLayout;

    sget v1, Lcom/miui/video/base/R$id;->v_fan_media_view:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/MediaView;

    iput-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vFanMedia:Lcom/facebook/ads/MediaView;

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vRoot:Landroid/widget/RelativeLayout;

    sget v1, Lcom/miui/video/base/R$id;->v_fan_media_container:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vFanMediaContainer:Landroid/widget/RelativeLayout;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vClickableViews:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vClickableViews:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vTitle:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vClickableViews:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vSubTitle:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vClickableViews:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vCta:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vClickableViews:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vAdIconView:Lcom/facebook/ads/AdIconView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vClickableViews:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vFanMedia:Lcom/facebook/ads/MediaView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vClickableViews:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vIcon:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vClickableViews:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vCover:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public clearViews()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vMediationContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vContentContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vContentContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vContentContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vUnifiedNativeAdView:Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    return-void
.end method

.method public getIsNativeBannerAd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/base/R$id;->v_mediation_container:I

    invoke-virtual {p0, v0}, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vMediationContainer:Landroid/widget/RelativeLayout;

    return-void
.end method

.method protected regiserNativeAd()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    const-string v1, "KEY_MEDIATION_ENTITY"

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->localNativeAd:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->getAdSource()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, v0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->localNativeAd:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    iget-object v2, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vUnifiedNativeAdView:Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    invoke-interface {v1, v2}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->registerViewForInteraction(Landroid/view/View;)Z

    goto :goto_0

    :pswitch_1
    iget-object v1, v0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->localNativeAd:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    iget-object v2, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vRoot:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vClickableViews:Ljava/util/List;

    invoke-interface {v1, v2, v3}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->registerViewForInteraction(Landroid/view/View;Ljava/util/List;)Z

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->localNativeAd:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    iget-object v2, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vRoot:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vClickableViews:Ljava/util/List;

    invoke-interface {v1, v2, v3}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->registerViewForInteraction(Landroid/view/View;Ljava/util/List;)Z

    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->isRegisteredOnce:Z

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMediationEntity(Lcom/miui/video/base/ad/mediation/entity/MediationEntity;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;Z)V
    .locals 6

    iput-object p2, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->mShowingNativeAd:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    invoke-virtual {p1}, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->getAdSource()I

    move-result p1

    const/4 v0, 0x4

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v4, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/miui/video/base/R$layout;->admob_native_ad_layout:I

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    iput-object v3, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vUnifiedNativeAdView:Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    iget-object v3, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vMediationContainer:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vUnifiedNativeAdView:Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/miui/video/base/R$layout;->ui_card_mediation_big:I

    iget-object v5, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vUnifiedNativeAdView:Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vRoot:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1}, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->findViews(I)V

    iget-object v3, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vCover:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vMediaViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vFanMediaContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vAdIconView:Lcom/facebook/ads/AdIconView;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/AdIconView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, p3}, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->changeLayoutParams(Z)V

    iget-object p3, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vUnifiedNativeAdView:Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->addView(Landroid/view/View;)V

    iget-object p3, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vUnifiedNativeAdView:Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vMediaView:Lcom/google/android/gms/ads/formats/MediaView;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setMediaView(Lcom/google/android/gms/ads/formats/MediaView;)V

    iget-object p3, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vUnifiedNativeAdView:Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setHeadlineView(Landroid/view/View;)V

    iget-object p3, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vUnifiedNativeAdView:Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vIcon:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setIconView(Landroid/view/View;)V

    iget-object p3, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vUnifiedNativeAdView:Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vSubTitle:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setBodyView(Landroid/view/View;)V

    iget-object p3, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vUnifiedNativeAdView:Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vCta:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setCallToActionView(Landroid/view/View;)V

    iget-object p3, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vUnifiedNativeAdView:Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    invoke-interface {p2}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->getAdObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setNativeAd(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/miui/video/base/R$layout;->fan_native_ad_layout:I

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/NativeAdLayout;

    iput-object v3, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    iget-object v3, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vMediationContainer:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/miui/video/base/R$layout;->ui_card_mediation_big:I

    iget-object v5, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vRoot:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    iget-object v4, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Lcom/facebook/ads/NativeAdLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->findViews(I)V

    iget-object v3, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vCover:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vMediaViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vFanMediaContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vAdIconView:Lcom/facebook/ads/AdIconView;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/AdIconView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, p3}, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->changeLayoutParams(Z)V

    iget-object p3, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    invoke-static {p3, p2, v0}, Lcom/miui/video/base/ad/mediation/adapter/FBViewCreator;->getAdChoiceView(Landroid/content/Context;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;Lcom/facebook/ads/NativeAdLayout;)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vAdChoiceContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/miui/video/base/R$layout;->ui_card_mediation_big:I

    iget-object v4, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vMediationContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vRoot:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1}, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->findViews(I)V

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vMediaViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vFanMediaContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vCover:Landroid/widget/ImageView;

    invoke-interface {p2}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->getAdCoverImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vAdIconView:Lcom/facebook/ads/AdIconView;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/AdIconView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, p3}, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->changeLayoutParams(Z)V

    iget-object p3, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vMediationContainer:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    const/4 p3, 0x1

    if-eq p1, p3, :cond_2

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vIcon:Landroid/widget/ImageView;

    invoke-interface {p2}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->getAdIconUrl()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vTitle:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vSubTitle:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->getAdBody()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vCta:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vClose:Landroid/widget/ImageView;

    new-instance p2, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig$1;

    invoke-direct {p2, p0}, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig$1;-><init>(Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->vAd:Landroid/widget/ImageView;

    new-instance p2, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig$2;

    invoke-direct {p2, p0}, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig$2;-><init>(Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->regiserNativeAd()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
