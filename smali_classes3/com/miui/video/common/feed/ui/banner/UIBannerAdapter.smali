.class public Lcom/miui/video/common/feed/ui/banner/UIBannerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "UIBannerAdapter.java"


# static fields
.field public static final TYPE_AD:Ljava/lang/String; = "ad"


# instance fields
.field inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private mTinyCardEntityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mViewCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/banner/UIBannerAdapter;->inflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/banner/UIBannerAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/banner/UIBannerAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private clearCache(Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/miui/video/framework/base/ui/UIBase;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/miui/video/framework/base/ui/UIBase;

    invoke-virtual {v1}, Lcom/miui/video/framework/base/ui/UIBase;->onDestroyView()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private createImageView(Lcom/miui/video/common/feed/entity/TinyCardEntity;)Landroid/widget/RelativeLayout;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/miui/video/common/feed/ui/banner/UIBannerAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/miui/video/common/feed/R$layout;->ui_card_banner_image:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget v1, Lcom/miui/video/common/feed/R$id;->v_image:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/video/common/feed/ui/card/UITinyImage;

    sget v2, Lcom/miui/video/common/feed/R$id;->v_ad_container:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Lcom/miui/video/common/feed/ui/card/UITinyImage;->getvImg()Lcom/miui/video/common/feed/ui/card/UIImageView;

    move-result-object v3

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Lcom/miui/video/common/feed/ui/card/UIImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const-string v4, "#172a3f"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcom/miui/video/common/feed/ui/card/UITinyImage;->setImageBackGround(Landroid/graphics/drawable/Drawable;)V

    const-string v3, "ACTION_SET_IMAGE_NULL_ROUND"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, p1}, Lcom/miui/video/common/feed/ui/card/UITinyImage;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    const-string v3, "ad"

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v5, 0x8

    if-eqz v3, :cond_1

    invoke-virtual {v1, v4}, Lcom/miui/video/common/feed/ui/card/UITinyImage;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string v1, ""

    invoke-virtual {p1, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setType(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4}, Lcom/miui/video/common/feed/ui/card/UITinyImage;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-direct {p0, p3}, Lcom/miui/video/common/feed/ui/banner/UIBannerAdapter;->clearCache(Ljava/lang/Object;)V

    :cond_0
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 2

    iget v0, p0, Lcom/miui/video/common/feed/ui/banner/UIBannerAdapter;->mViewCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/video/common/feed/ui/banner/UIBannerAdapter;->mViewCount:I

    :goto_0
    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/banner/UIBannerAdapter;->mTinyCardEntityList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/banner/UIBannerAdapter;->mTinyCardEntityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p2, v1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-direct {p0, p2}, Lcom/miui/video/common/feed/ui/banner/UIBannerAdapter;->createImageView(Lcom/miui/video/common/feed/entity/TinyCardEntity;)Landroid/widget/RelativeLayout;

    move-result-object p2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/banner/UIBannerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/common/feed/R$dimen;->dp_334:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/miui/video/common/feed/ui/banner/UIBannerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/common/feed/R$dimen;->dp_175:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/banner/UIBannerAdapter;->mTinyCardEntityList:Ljava/util/List;

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/banner/UIBannerAdapter;->mTinyCardEntityList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/miui/video/common/feed/ui/banner/UIBannerAdapter;->mViewCount:I

    return-void
.end method
