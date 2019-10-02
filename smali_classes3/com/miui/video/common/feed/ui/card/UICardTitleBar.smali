.class public Lcom/miui/video/common/feed/ui/card/UICardTitleBar;
.super Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.source "UICardTitleBar.java"


# instance fields
.field private mEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

.field private titleImg:Landroid/widget/ImageView;

.field private vTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1

    sget v0, Lcom/miui/video/common/feed/R$layout;->ui_card_titlebar:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    return-void
.end method


# virtual methods
.method public initUI()V
    .locals 1

    sget v0, Lcom/miui/video/common/feed/R$id;->title_img_iv:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UICardTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardTitleBar;->titleImg:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UICardTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardTitleBar;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UICardTitleBar;->getStyle()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UICardTitleBar;->setStyle(I)V

    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 1

    if-eqz p2, :cond_1

    instance-of p1, p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz p1, :cond_1

    check-cast p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/video/common/feed/ui/card/UICardTitleBar;->mEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UICardTitleBar;->vTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardTitleBar;->mEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UICardTitleBar;->mEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UICardTitleBar;->titleImg:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardTitleBar;->titleImg:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UICardTitleBar;->mEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardTitleBar;->mEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->isGif()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardTitleBar;->titleImg:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardTitleBar;->titleImg:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/miui/video/framework/utils/AppUtils;->onDestoryViewWithImage(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
