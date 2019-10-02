.class public Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;
.super Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.source "UICardTitleImageBar.java"


# instance fields
.field private hadInit:Z

.field protected mEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

.field protected titleImg:Landroid/widget/ImageView;

.field protected vRightImage:Landroid/widget/ImageView;

.field protected vTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1

    sget v0, Lcom/miui/video/common/feed/R$layout;->ui_card_title_image_bar:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;->hadInit:Z

    return-void
.end method

.method public static synthetic lambda$setData$14(Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;Lcom/miui/video/common/feed/entity/FeedRowEntity;Landroid/view/View;)V
    .locals 0

    sget p2, Lcom/miui/video/common/feed/R$id;->vo_action_id_auto_play_next_click:I

    invoke-virtual {p0, p2, p1}, Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;->raiseAction(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public initUI()V
    .locals 1

    sget v0, Lcom/miui/video/common/feed/R$id;->title_img_iv:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;->titleImg:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;->vTitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/common/feed/R$id;->title_img_iv_right:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;->vRightImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;->getStyle()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;->setStyle(I)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->onDestroyView()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;->hadInit:Z

    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 3

    instance-of p1, p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz p1, :cond_2

    check-cast p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;->mEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;->vTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;->mEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;->mEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;->titleImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;->titleImg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;->mEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;->mEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {v2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->isGif()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;->titleImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;->titleImg:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/miui/video/framework/utils/AppUtils;->onDestoryViewWithImage(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;->vRightImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;->mEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSelected()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 p1, 0x1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;->vRightImage:Landroid/widget/ImageView;

    new-instance v0, Lcom/miui/video/common/feed/ui/card/-$$Lambda$UICardTitleImageBar$E4Yjr13dW1bffZwV_qYbm-vCNGU;

    invoke-direct {v0, p0, p2}, Lcom/miui/video/common/feed/ui/card/-$$Lambda$UICardTitleImageBar$E4Yjr13dW1bffZwV_qYbm-vCNGU;-><init>(Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;Lcom/miui/video/common/feed/entity/FeedRowEntity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p1, p0, Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;->hadInit:Z

    if-nez p1, :cond_2

    iput-boolean v2, p0, Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;->hadInit:Z

    sget p1, Lcom/miui/video/common/feed/R$id;->vo_action_id_auto_play_next_show:I

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;->raiseAction(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method
