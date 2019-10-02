.class public Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;
.super Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.source "UICardTitleArrowBar.java"


# instance fields
.field private eClick:Landroid/view/View$OnClickListener;

.field private mDesc:Ljava/lang/String;

.field private mEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

.field private mImageId:I

.field private row:Lcom/miui/video/common/feed/entity/FeedRowEntity;

.field private vArrow:Landroid/widget/TextView;

.field private vTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1

    sget v0, Lcom/miui/video/common/feed/R$layout;->ui_card_titlearrowbar:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;->mImageId:I

    new-instance p1, Lcom/miui/video/common/feed/ui/UICardTitleArrowBar$1;

    invoke-direct {p1, p0}, Lcom/miui/video/common/feed/ui/UICardTitleArrowBar$1;-><init>(Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;->eClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;)Lcom/miui/video/common/feed/entity/TinyCardEntity;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;->mEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    return-object p0
.end method


# virtual methods
.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/common/feed/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;->vTitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_arrow:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;->vArrow:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;->getStyle()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;->setStyle(I)V

    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 1

    instance-of p1, p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz p1, :cond_3

    check-cast p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    iput-object p2, p0, Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;->row:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;->row:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result p1

    const/16 p2, 0x8

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;->vArrow:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;->row:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->nextIndex()V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;->row:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getShowEntity()Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;->mEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;->mDesc:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;->mEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;->mDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setDesc(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;->vTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;->mEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;->mEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getDesc()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;->vArrow:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;->vArrow:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;->mEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getDesc()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;->vArrow:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;->eClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;->vArrow:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;->vArrow:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_0
    return-void
.end method
