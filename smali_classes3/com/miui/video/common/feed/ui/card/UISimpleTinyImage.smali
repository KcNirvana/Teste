.class public Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UISimpleTinyImage.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UISimpleTinyImage"


# instance fields
.field private vBottomLeft:Landroid/widget/TextView;

.field private vBottomRight:Landroid/widget/TextView;

.field private vImg:Lcom/miui/video/common/feed/ui/card/UIImageView;

.field private vTopLeft:Landroid/widget/ImageView;

.field private vTopRight:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/common/feed/R$layout;->ui_tiny_image_simple:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->inflateView(I)V

    sget v0, Lcom/miui/video/common/feed/R$id;->v_img:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/ui/card/UIImageView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vImg:Lcom/miui/video/common/feed/ui/card/UIImageView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_left_top_image:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vTopLeft:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_right_top_image:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vTopRight:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_left_bottom_text:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vBottomLeft:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_right_bottom_text:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vBottomRight:Landroid/widget/TextView;

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "UISimpleTinyImage"

    const-string v1, "UISimpleTinyImage onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vImg:Lcom/miui/video/common/feed/ui/card/UIImageView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vImg:Lcom/miui/video/common/feed/ui/card/UIImageView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vImg:Lcom/miui/video/common/feed/ui/card/UIImageView;

    invoke-static {v0}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->ImgClear(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vTopRight:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->ImgClear(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vImg:Lcom/miui/video/common/feed/ui/card/UIImageView;

    invoke-static {v0}, Lcom/miui/video/framework/utils/AppUtils;->onDestoryViewWithImage(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vTopRight:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/miui/video/framework/utils/AppUtils;->onDestoryViewWithImage(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vImg:Lcom/miui/video/common/feed/ui/card/UIImageView;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/card/UIImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vImg:Lcom/miui/video/common/feed/ui/card/UIImageView;

    sget v2, Lcom/miui/video/common/feed/R$drawable;->ic_bg_wide:I

    invoke-static {v0, p1, v1, v2, v1}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;III)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vImg:Lcom/miui/video/common/feed/ui/card/UIImageView;

    invoke-virtual {p1, v1}, Lcom/miui/video/common/feed/ui/card/UIImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vImg:Lcom/miui/video/common/feed/ui/card/UIImageView;

    sget v0, Lcom/miui/video/common/feed/R$drawable;->ic_bg_wide:I

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public setImage(Ljava/lang/String;I)V
    .locals 2

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vImg:Lcom/miui/video/common/feed/ui/card/UIImageView;

    invoke-virtual {p1, v1}, Lcom/miui/video/common/feed/ui/card/UIImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vImg:Lcom/miui/video/common/feed/ui/card/UIImageView;

    sget p2, Lcom/miui/video/common/feed/R$drawable;->ic_bg_wide:I

    invoke-virtual {p1, p2}, Lcom/miui/video/common/feed/ui/card/UIImageView;->setImageResource(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vImg:Lcom/miui/video/common/feed/ui/card/UIImageView;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/card/UIImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vImg:Lcom/miui/video/common/feed/ui/card/UIImageView;

    invoke-static {v0, p1, p2}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method public setImageRound(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vImg:Lcom/miui/video/common/feed/ui/card/UIImageView;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/ui/card/UIImageView;->setRound(I)V

    return-void
.end method

.method public setImageType(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vImg:Lcom/miui/video/common/feed/ui/card/UIImageView;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/ui/card/UIImageView;->setType(I)V

    return-void
.end method

.method public setLeftBottomLayout(III)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vBottomLeft:Landroid/widget/TextView;

    invoke-virtual {v0, p3, p3, p3, p3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p3, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vBottomLeft:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vBottomLeft:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setLeftBottomText(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->setLeftBottomText(Ljava/lang/String;IIII)V

    return-void
.end method

.method public setLeftBottomText(Ljava/lang/String;IIII)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vBottomLeft:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vBottomLeft:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    if-lez p2, :cond_0

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vBottomLeft:Landroid/widget/TextView;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    if-lez p3, :cond_1

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vBottomLeft:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    if-lez p4, :cond_2

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vBottomLeft:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p3, p3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    if-lez p5, :cond_3

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vBottomLeft:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void

    :cond_4
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vBottomLeft:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setLeftTopImage(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vTopLeft:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vTopLeft:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vTopLeft:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setRightBottomLayout(III)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vBottomRight:Landroid/widget/TextView;

    invoke-virtual {v0, p3, p3, p3, p3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p3, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vBottomRight:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vBottomRight:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setRightBottomText(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->setRightBottomText(Ljava/lang/String;IIII)V

    return-void
.end method

.method public setRightBottomText(Ljava/lang/String;IIII)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vBottomRight:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vBottomRight:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez p2, :cond_0

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vBottomRight:Landroid/widget/TextView;

    int-to-float p2, p2

    invoke-virtual {p1, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    if-lez p3, :cond_1

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vBottomRight:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    const/4 p1, 0x0

    if-lez p4, :cond_2

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vBottomRight:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3, p1, p1, p1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vBottomRight:Landroid/widget/TextView;

    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    if-lez p5, :cond_3

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vBottomRight:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void

    :cond_4
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vBottomRight:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setRightTopImage(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vTopRight:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vTopRight:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->vTopRight:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
