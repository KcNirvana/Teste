.class public Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;
.super Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.source "UICardSingleImageBig.java"


# instance fields
.field private hadShowed:Z

.field private mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

.field private vCircleImageView:Lcom/miui/video/common/library/widget/CircleImageView;

.field private vIntroductionTextView:Landroid/widget/TextView;

.field private vMoreBtn:Landroid/widget/ImageButton;

.field private vTinyImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

.field private vTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1

    sget v0, Lcom/miui/video/common/feed/R$layout;->ui_card_single_image_big:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    return-void
.end method

.method private getIntroductionText(Lcom/miui/video/common/feed/entity/TinyCardEntity;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getAuthorName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getAuthorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getViewCountText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getViewCountText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getGmtPublishText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getGmtPublishText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initSimpleTinyImage(Lcom/miui/video/common/feed/entity/TinyCardEntity;)V
    .locals 7

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vTinyImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vTinyImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/miui/video/common/feed/R$drawable;->ic_bg_wide:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->setImage(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vTinyImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTopLeftLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->setLeftTopImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vTinyImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTopRightLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->setRightTopImage(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shortvideo"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "longvideo"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "playlist"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getVideoCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vTinyImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getVideoCount()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/miui/video/common/feed/R$dimen;->sp_12:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/miui/video/common/feed/R$color;->c_white_80:I

    sget v5, Lcom/miui/video/common/feed/R$drawable;->ic_playlist:I

    sget v6, Lcom/miui/video/common/feed/R$drawable;->ui_card_single_image_shape_bg_corners_black:I

    invoke-virtual/range {v1 .. v6}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->setRightBottomText(Ljava/lang/String;IIII)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vTinyImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->setRightBottomText(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-wide v0, p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vTinyImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    iget-wide v2, p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;->duration:J

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-static {v2, v3}, Lcom/miui/video/common/library/utils/TimeStringUtils;->stringForTime(J)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/miui/video/common/feed/R$dimen;->sp_10:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/miui/video/common/feed/R$color;->c_white_80:I

    const/4 v5, 0x0

    sget v6, Lcom/miui/video/common/feed/R$drawable;->ui_card_single_image_shape_bg_corners_black:I

    invoke-virtual/range {v1 .. v6}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->setRightBottomText(Ljava/lang/String;IIII)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vTinyImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->setRightBottomText(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic lambda$initViewsEvent$10(Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;Landroid/view/View;)V
    .locals 8

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setPlayed(Z)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTarget()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTargetAddition()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/miui/video/framework/uri/CUtils;->openLink(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public static synthetic lambda$setData$11(Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;Landroid/view/View;)V
    .locals 1

    sget p1, Lcom/miui/video/common/feed/R$id;->vo_action_id_more_btn_click:I

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->raiseAction(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setData$12(Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;Landroid/view/View;)V
    .locals 1

    sget p1, Lcom/miui/video/common/feed/R$id;->vo_action_id_enter_author_detail_btn_click:I

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getAuthorId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->raiseAction(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getMoreBtn()Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vMoreBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public initFindViews()V
    .locals 3

    sget v0, Lcom/miui/video/common/feed/R$id;->v_tiny_img:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vTinyImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_author:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/library/widget/CircleImageView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vCircleImageView:Lcom/miui/video/common/library/widget/CircleImageView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vTitleTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/miui/video/framework/utils/SDKUtils;->equalAPI_23_MARSHMALLOW()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/common/feed/R$color;->color_selector_font_video_play:I

    iget-object v2, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/common/feed/R$color;->color_selector_font_video_play:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    sget v0, Lcom/miui/video/common/feed/R$id;->v_introduction:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vIntroductionTextView:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_more:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vMoreBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vTinyImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->getStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->setStyle(I)V

    return-void
.end method

.method public initViewsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vView:Landroid/view/View;

    new-instance v1, Lcom/miui/video/common/feed/ui/card/-$$Lambda$UICardSingleImageBig$28KvNCt91nR3pA1uRxEVfFJiycI;

    invoke-direct {v1, p0}, Lcom/miui/video/common/feed/ui/card/-$$Lambda$UICardSingleImageBig$28KvNCt91nR3pA1uRxEVfFJiycI;-><init>(Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vTinyImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vTinyImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->onDestroyView()V

    :cond_0
    return-void
.end method

.method public onUIShow()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->onUIShow()V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->hadShowed:Z

    if-nez v0, :cond_0

    sget v0, Lcom/miui/video/common/feed/R$id;->vo_action_id_ui_show:I

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->raiseAction(ILjava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->hadShowed:Z

    :cond_0
    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 3

    instance-of p1, p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz p1, :cond_7

    check-cast p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object p1

    const/16 v0, 0x8

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-direct {p0, p1}, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->initSimpleTinyImage(Lcom/miui/video/common/feed/entity/TinyCardEntity;)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getAuthorProfile()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vCircleImageView:Lcom/miui/video/common/library/widget/CircleImageView;

    invoke-virtual {p1, v1}, Lcom/miui/video/common/library/widget/CircleImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vCircleImageView:Lcom/miui/video/common/library/widget/CircleImageView;

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getAuthorProfile()Ljava/lang/String;

    move-result-object p2

    sget v2, Lcom/miui/video/common/feed/R$drawable;->ic_user_default:I

    invoke-static {p1, p2, v2}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    const-string p1, "shortvideo"

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_type()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "longvideo"

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_type()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vCircleImageView:Lcom/miui/video/common/library/widget/CircleImageView;

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/widget/CircleImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vCircleImageView:Lcom/miui/video/common/library/widget/CircleImageView;

    invoke-virtual {p1, v1}, Lcom/miui/video/common/library/widget/CircleImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vCircleImageView:Lcom/miui/video/common/library/widget/CircleImageView;

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->mContext:Landroid/content/Context;

    sget v2, Lcom/miui/video/common/feed/R$drawable;->ic_user_default:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/video/common/library/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vTitleTextView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vTitleTextView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->isPlayed()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vMoreBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vMoreBtn:Landroid/widget/ImageButton;

    new-instance p2, Lcom/miui/video/common/feed/ui/card/-$$Lambda$UICardSingleImageBig$cvpEY0nrbEpYVGYEOLKtJsW0jsM;

    invoke-direct {p2, p0}, Lcom/miui/video/common/feed/ui/card/-$$Lambda$UICardSingleImageBig$cvpEY0nrbEpYVGYEOLKtJsW0jsM;-><init>(Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vMoreBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_2
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-direct {p0, p1}, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->getIntroductionText(Lcom/miui/video/common/feed/entity/TinyCardEntity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vIntroductionTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vIntroductionTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vIntroductionTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vCircleImageView:Lcom/miui/video/common/library/widget/CircleImageView;

    new-instance p2, Lcom/miui/video/common/feed/ui/card/-$$Lambda$UICardSingleImageBig$xjMAO4mrDz2uCDMtHLYKPxSMkO8;

    invoke-direct {p2, p0}, Lcom/miui/video/common/feed/ui/card/-$$Lambda$UICardSingleImageBig$xjMAO4mrDz2uCDMtHLYKPxSMkO8;-><init>(Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;)V

    invoke-virtual {p1, p2}, Lcom/miui/video/common/library/widget/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    :cond_6
    :goto_4
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->vView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_7
    :goto_5
    return-void
.end method
