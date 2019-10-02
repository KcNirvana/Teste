.class public Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;
.super Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.source "UICardItemLeftImage.java"


# instance fields
.field private eClick:Landroid/view/View$OnClickListener;

.field private mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

.field private vSubtitle:Landroid/widget/TextView;

.field private vTinyImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

.field private vTitle:Landroid/widget/TextView;

.field private vplayListBg:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1

    sget v0, Lcom/miui/video/common/feed/R$layout;->ui_card_item_left_image:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    new-instance p1, Lcom/miui/video/common/feed/ui/card/-$$Lambda$UICardItemLeftImage$QK8XTTteRKJ1Tu0j1LYFGKBAze0;

    invoke-direct {p1, p0}, Lcom/miui/video/common/feed/ui/card/-$$Lambda$UICardItemLeftImage$QK8XTTteRKJ1Tu0j1LYFGKBAze0;-><init>(Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->eClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private initUISimpleTinyImage(Lcom/miui/video/common/feed/entity/TinyCardEntity;)V
    .locals 8

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->vTinyImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->vTinyImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->setImage(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTopLeftLogo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->vTinyImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTopLeftLogo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->setLeftTopImage(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTopRightLogo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->vTinyImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTopLeftLogo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->setRightTopImage(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_type()Ljava/lang/String;

    move-result-object v0

    const-string v2, "longvideo"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_type()Ljava/lang/String;

    move-result-object v0

    const-string v2, "shortvideo"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_type()Ljava/lang/String;

    move-result-object p1

    const-string v0, "playlist"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->vplayListBg:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getViewCountText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->vTinyImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getViewCountText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/miui/video/common/feed/R$drawable;->ic_video_play_count:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->setLeftBottomText(Ljava/lang/String;IIII)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->vTinyImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    iget-object v2, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/common/feed/R$dimen;->dp_5:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget-object v3, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/video/common/feed/R$dimen;->dp_5:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->setLeftBottomLayout(III)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->vTinyImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->setLeftBottomText(Ljava/lang/String;)V

    :goto_1
    iget-wide v2, p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    iget-object v2, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->vTinyImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    iget-wide v3, p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;->duration:J

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    invoke-static {v3, v4}, Lcom/miui/video/common/library/utils/TimeStringUtils;->stringForTime(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    sget v5, Lcom/miui/video/common/feed/R$color;->c_white:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->setRightBottomText(Ljava/lang/String;IIII)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->vTinyImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/miui/video/common/feed/R$dimen;->dp_6_7:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v2, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/common/feed/R$dimen;->dp_5:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->setRightBottomLayout(III)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->vTinyImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->setRightBottomText(Ljava/lang/String;)V

    :goto_2
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->vplayListBg:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_3
    return-void
.end method

.method public static synthetic lambda$new$13(Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;Landroid/view/View;)V
    .locals 8

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setPlayed(Z)V

    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTarget()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTargetAddition()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/miui/video/framework/uri/CUtils;->openLink(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 3

    sget v0, Lcom/miui/video/common/feed/R$id;->ui_img:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->vTinyImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->vTitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_subtitle:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->vSubtitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_play_list_bg:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->vplayListBg:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->vTinyImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->setImageType(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->vTinyImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/common/feed/R$dimen;->dp_4:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->setImageRound(I)V

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->getStyle()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->setStyle(I)V

    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 2

    check-cast p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-direct {p0, p2}, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->initUISimpleTinyImage(Lcom/miui/video/common/feed/entity/TinyCardEntity;)V

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->vTitle:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->vTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_type()Ljava/lang/String;

    move-result-object p2

    const-string v0, "longvideo"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x4

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_type()Ljava/lang/String;

    move-result-object p2

    const-string v1, "shortvideo"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getVideoCountText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->vSubtitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->vSubtitle:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->vSubtitle:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getVideoCountText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getAuthorName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->vSubtitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->vSubtitle:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->vSubtitle:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getAuthorName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->vView:Landroid/view/View;

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->eClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->vTitle:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->vSubtitle:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->vView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardItemLeftImage;->vView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    return-void
.end method
