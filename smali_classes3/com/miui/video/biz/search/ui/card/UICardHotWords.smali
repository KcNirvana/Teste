.class public Lcom/miui/video/biz/search/ui/card/UICardHotWords;
.super Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.source "UICardHotWords.java"


# instance fields
.field private vTagList:Lcom/miui/video/biz/search/ui/UITagList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1

    sget v0, Lcom/miui/video/biz/search/R$layout;->ui_card_hot_words:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/biz/search/ui/card/UICardHotWords;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    return-void
.end method

.method public static synthetic lambda$initViewsEvent$6(Lcom/miui/video/biz/search/ui/card/UICardHotWords;Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    instance-of p1, p3, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz p1, :cond_0

    move-object p1, p3

    check-cast p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    iput p2, p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;->position:I

    sget p1, Lcom/miui/video/biz/search/R$id;->vo_action_id_search_hot_word_click:I

    invoke-virtual {p0, p1, p3}, Lcom/miui/video/biz/search/ui/card/UICardHotWords;->raiseAction(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/biz/search/R$id;->ui_tag_list:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/ui/card/UICardHotWords;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/search/ui/UITagList;

    iput-object v0, p0, Lcom/miui/video/biz/search/ui/card/UICardHotWords;->vTagList:Lcom/miui/video/biz/search/ui/UITagList;

    return-void
.end method

.method public initViewsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/card/UICardHotWords;->vTagList:Lcom/miui/video/biz/search/ui/UITagList;

    new-instance v1, Lcom/miui/video/biz/search/ui/card/-$$Lambda$UICardHotWords$R5-dnsvBgz8bIT4gHBWdjWJfzF4;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/search/ui/card/-$$Lambda$UICardHotWords$R5-dnsvBgz8bIT4gHBWdjWJfzF4;-><init>(Lcom/miui/video/biz/search/ui/card/UICardHotWords;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/search/ui/UITagList;->setOnItemClickListener(Lcom/miui/video/common/feed/ui/UITagListView$OnItemClickListener;)V

    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 1

    instance-of v0, p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/card/UICardHotWords;->vTagList:Lcom/miui/video/biz/search/ui/UITagList;

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/biz/search/ui/UITagList;->setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/search/ui/card/UICardHotWords;->vView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
