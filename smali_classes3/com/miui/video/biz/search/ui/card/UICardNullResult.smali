.class public Lcom/miui/video/biz/search/ui/card/UICardNullResult;
.super Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.source "UICardNullResult.java"


# instance fields
.field private vTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1

    sget v0, Lcom/miui/video/biz/search/R$layout;->ui_card_null_result:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/biz/search/R$id;->search_result:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/ui/card/UICardNullResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/search/ui/card/UICardNullResult;->vTitle:Landroid/widget/TextView;

    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 1

    instance-of p1, p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz p1, :cond_2

    check-cast p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/card/UICardNullResult;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/video/biz/search/ui/card/UICardNullResult;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/search/ui/card/UICardNullResult;->vTitle:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method
