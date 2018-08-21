.class public Lcom/flybird/FBImg;
.super Lcom/flybird/FBView;
.source "FBImg.java"

# interfaces
.implements Lcom/alipay/birdnest/api/c$a;


# instance fields
.field private extra:Landroid/os/Bundle;

.field private hasLayoutOnce:Z

.field private isIndicatior:Z

.field private mBluradius:I

.field private mDefaultValue:Ljava/lang/String;

.field private mFailureValue:Ljava/lang/String;

.field private mImageView:Landroid/widget/ImageView;

.field private mNeedGray:Z

.field private mSrcHeight:D

.field private mSrcWidth:D

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/flybird/FBDocument;)V
    .locals 4

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const/4 v1, 0x0

    new-instance v0, Lcom/flybird/FBBorderImg;

    invoke-direct {v0, p1}, Lcom/flybird/FBBorderImg;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/flybird/FBView;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V

    iput-boolean v1, p0, Lcom/flybird/FBImg;->mNeedGray:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/flybird/FBImg;->mBluradius:I

    iput-boolean v1, p0, Lcom/flybird/FBImg;->isIndicatior:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBImg;->extra:Landroid/os/Bundle;

    iput-boolean v1, p0, Lcom/flybird/FBImg;->hasLayoutOnce:Z

    invoke-virtual {p0}, Lcom/flybird/FBImg;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/flybird/FBImg;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/flybird/FBImg;->mImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iput-wide v2, p0, Lcom/flybird/FBImg;->mSrcHeight:D

    iput-wide v2, p0, Lcom/flybird/FBImg;->mSrcWidth:D

    return-void
.end method

.method static synthetic access$000(Lcom/flybird/FBImg;)V
    .locals 0

    invoke-direct {p0}, Lcom/flybird/FBImg;->innerLoadImg()V

    return-void
.end method

.method private convertUnit(Ljava/lang/String;)D
    .locals 4

    const-string/jumbo v0, "PX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PX"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-string/jumbo v0, "px"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/FBImg;->mDoc:Lcom/flybird/FBDocument;

    iget-object v1, v1, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/flybird/FBTools;->getDp(Landroid/content/Context;)F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    mul-double/2addr v0, v2

    goto :goto_0
.end method

.method private getSrcWidthHeight()[I
    .locals 7

    const-wide/16 v4, 0x0

    iget v0, p0, Lcom/flybird/FBImg;->mWidth:I

    iget v1, p0, Lcom/flybird/FBImg;->mHeight:I

    iget-wide v2, p0, Lcom/flybird/FBImg;->mSrcWidth:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    iget-wide v2, p0, Lcom/flybird/FBImg;->mSrcWidth:D

    double-to-int v0, v2

    :cond_0
    :goto_0
    iget-wide v2, p0, Lcom/flybird/FBImg;->mSrcHeight:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    iget-wide v2, p0, Lcom/flybird/FBImg;->mSrcHeight:D

    double-to-int v1, v2

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    return-object v2

    :cond_1
    iget-wide v2, p0, Lcom/flybird/FBImg;->mSrcHeight:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/flybird/FBImg;->mSrcHeight:D

    double-to-int v0, v2

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/flybird/FBImg;->mSrcWidth:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3

    iget-wide v2, p0, Lcom/flybird/FBImg;->mSrcWidth:D

    double-to-int v0, v2

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_1

    :cond_3
    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_1
.end method

.method private innerLoadImg()V
    .locals 14

    iget-boolean v0, p0, Lcom/flybird/FBImg;->isIndicatior:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flybird/FBImg;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getEngine()Lcom/alipay/birdnest/api/BirdNestEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/birdnest/api/BirdNestEngine;->b()Lcom/alipay/birdnest/api/BirdNestEngine$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->f()Lcom/alipay/birdnest/api/BirdNestEngine$h;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/FBImg;->mDoc:Lcom/flybird/FBDocument;

    iget-object v1, v1, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "alipay_msp_indicatior_loading"

    iget-object v3, p0, Lcom/flybird/FBImg;->mDoc:Lcom/flybird/FBDocument;

    iget-object v3, v3, Lcom/flybird/FBDocument;->param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

    iget-object v3, v3, Lcom/alipay/birdnest/api/BirdNestEngine$g;->m:Ljava/lang/String;

    const-string/jumbo v4, "drawable"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alipay/birdnest/api/BirdNestEngine$h;->getResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flybird/FBImg;->mImageView:Landroid/widget/ImageView;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/flybird/FBImg;->getSrcWidthHeight()[I

    move-result-object v5

    iget-object v0, p0, Lcom/flybird/FBImg;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getEngine()Lcom/alipay/birdnest/api/BirdNestEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/birdnest/api/BirdNestEngine;->c()Lcom/alipay/birdnest/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/FBImg;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v1}, Lcom/flybird/FBDocument;->getEngine()Lcom/alipay/birdnest/api/BirdNestEngine;

    move-result-object v1

    iget-object v2, p0, Lcom/flybird/FBImg;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/flybird/FBImg;->mUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/flybird/FBImg;->mDoc:Lcom/flybird/FBDocument;

    iget-object v4, v4, Lcom/flybird/FBDocument;->param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

    iget-object v4, v4, Lcom/alipay/birdnest/api/BirdNestEngine$g;->m:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/flybird/FBImg;->mDefaultValue:Ljava/lang/String;

    iget-object v8, p0, Lcom/flybird/FBImg;->mFailureValue:Ljava/lang/String;

    iget v9, p0, Lcom/flybird/FBImg;->mBluradius:I

    iget-boolean v10, p0, Lcom/flybird/FBImg;->mNeedGray:Z

    iget-object v11, p0, Lcom/flybird/FBImg;->mDoc:Lcom/flybird/FBDocument;

    iget-object v11, v11, Lcom/flybird/FBDocument;->param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

    iget-object v12, v11, Lcom/alipay/birdnest/api/BirdNestEngine$g;->x:Lcom/alipay/android/app/template/FBResourceClient;

    invoke-virtual {p0}, Lcom/flybird/FBImg;->getExtraParams()Landroid/os/Bundle;

    move-result-object v13

    move-object v11, p0

    invoke-virtual/range {v0 .. v13}, Lcom/alipay/birdnest/a/b;->a(Lcom/alipay/birdnest/api/BirdNestEngine;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;[IZLjava/lang/String;Ljava/lang/String;IZLcom/alipay/birdnest/api/c$a;Lcom/alipay/android/app/template/FBResourceClient;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private loadImg()V
    .locals 2

    invoke-virtual {p0}, Lcom/flybird/FBImg;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/flybird/FBImg;->mDoc:Lcom/flybird/FBDocument;

    new-instance v1, Lcom/flybird/FBImg$1;

    invoke-direct {v1, p0}, Lcom/flybird/FBImg$1;-><init>(Lcom/flybird/FBImg;)V

    invoke-virtual {v0, v1}, Lcom/flybird/FBDocument;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/flybird/FBImg;->innerLoadImg()V

    goto :goto_0
.end method


# virtual methods
.method public doDestroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/flybird/FBView;->doDestroy()V

    iput-object v0, p0, Lcom/flybird/FBImg;->mDoc:Lcom/flybird/FBDocument;

    iput-object v0, p0, Lcom/flybird/FBImg;->mImageView:Landroid/widget/ImageView;

    return-void
.end method

.method protected getExtraParams()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBImg;->extra:Landroid/os/Bundle;

    return-object v0
.end method

.method public onLoadFinish()V
    .locals 1

    invoke-virtual {p0}, Lcom/flybird/FBImg;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Lcom/flybird/FBView;->onLoadFinish()V

    iget-object v0, p0, Lcom/flybird/FBImg;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBImg;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/flybird/FBImg;->loadImg()V

    goto :goto_0
.end method

.method protected onVisibilityChange(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/flybird/FBImg;->loadImg()V

    :cond_0
    return-void
.end method

.method public requestLayout(II)V
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/flybird/FBImg;->mHasWidth:Z

    if-nez v2, :cond_0

    iput p1, p0, Lcom/flybird/FBImg;->mWidth:I

    move v0, v1

    :cond_0
    iget-boolean v2, p0, Lcom/flybird/FBImg;->mHasHeight:Z

    if-nez v2, :cond_1

    iput p2, p0, Lcom/flybird/FBImg;->mHeight:I

    move v0, v1

    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/flybird/FBImg;->hasLayoutOnce:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/flybird/FBImg;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0, p0}, Lcom/flybird/FBDocument;->layout(Lcom/flybird/FBView;)V

    iput-boolean v1, p0, Lcom/flybird/FBImg;->hasLayoutOnce:Z

    :cond_2
    return-void
.end method

.method public updateAttr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->updateAttr(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "src"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "indicatior"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flybird/FBImg;->isIndicatior:Z

    const-string/jumbo p2, ""

    :goto_0
    iput-object p2, p0, Lcom/flybird/FBImg;->mUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/flybird/FBImg;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->isOnloadFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBImg;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/flybird/FBImg;->loadImg()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flybird/FBImg;->isIndicatior:Z

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "srcheight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p2}, Lcom/flybird/FBImg;->convertUnit(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/flybird/FBImg;->mSrcHeight:D

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "srcwidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p2}, Lcom/flybird/FBImg;->convertUnit(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/flybird/FBImg;->mSrcWidth:D

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "defaultvalue"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object p2, p0, Lcom/flybird/FBImg;->mDefaultValue:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "failurevalue"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-object p2, p0, Lcom/flybird/FBImg;->mFailureValue:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string/jumbo v0, "imageGray"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flybird/FBImg;->mNeedGray:Z

    goto :goto_1

    :cond_7
    const-string/jumbo v0, "contentmode"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ScaleToFill"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/flybird/FBImg;->mImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    :cond_8
    const-string/jumbo v0, "ScaleAspectFit"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/flybird/FBImg;->mImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    :cond_9
    const-string/jumbo v0, "ScaleAspectFill"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/flybird/FBImg;->mImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v0, "ScaleAspectAuto"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/flybird/FBImg;->mImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v0, "Center"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBImg;->mImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v0, "cutscalemode"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "quality"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_d
    iget-object v0, p0, Lcom/flybird/FBImg;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public updateCSS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->updateCSS(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "-webkit-filter"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "webkitFilter"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v0, "("

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, ")"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "blur"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/flybird/FBImg;->convertUnit(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/flybird/FBImg;->mBluradius:I

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/flybird/FBImg;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->isOnloadFinish()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/flybird/FBImg;->loadImg()V

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v1, "grayscale"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flybird/FBImg;->mNeedGray:Z

    goto :goto_1

    :cond_4
    move-object v0, p2

    goto :goto_0
.end method
