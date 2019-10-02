.class public Lcom/miui/video/biz/search/ui/UITagList;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UITagList.java"


# instance fields
.field private mAdapter:Lcom/miui/video/common/feed/ui/adapter/UIAdapter;

.field private mItemClickListener:Lcom/miui/video/common/feed/ui/UITagListView$OnItemClickListener;

.field private vUIListView:Lcom/miui/video/common/feed/ui/UITagListView;


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

.method public static synthetic lambda$initViewsEvent$3(Lcom/miui/video/biz/search/ui/UITagList;Landroid/view/View;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/UITagList;->mItemClickListener:Lcom/miui/video/common/feed/ui/UITagListView$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/UITagList;->mItemClickListener:Lcom/miui/video/common/feed/ui/UITagListView$OnItemClickListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/video/common/feed/ui/UITagListView$OnItemClickListener;->onItemClick(Landroid/view/View;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/biz/search/R$layout;->ui_tag_list:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/ui/UITagList;->inflateView(I)V

    sget v0, Lcom/miui/video/biz/search/R$id;->ui_tag_list_view:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/ui/UITagList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/ui/UITagListView;

    iput-object v0, p0, Lcom/miui/video/biz/search/ui/UITagList;->vUIListView:Lcom/miui/video/common/feed/ui/UITagListView;

    return-void
.end method

.method public initViewsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/UITagList;->vUIListView:Lcom/miui/video/common/feed/ui/UITagListView;

    new-instance v1, Lcom/miui/video/biz/search/ui/-$$Lambda$UITagList$4P1Th5acd66SEcwDi3JE366oQpM;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/search/ui/-$$Lambda$UITagList$4P1Th5acd66SEcwDi3JE366oQpM;-><init>(Lcom/miui/video/biz/search/ui/UITagList;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/UITagListView;->setOnItemClickListener(Lcom/miui/video/common/feed/ui/UITagListView$OnItemClickListener;)V

    return-void
.end method

.method public initViewsValue()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/UITagList;->mAdapter:Lcom/miui/video/common/feed/ui/adapter/UIAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/video/common/feed/ui/adapter/UIAdapter;

    invoke-virtual {p0}, Lcom/miui/video/biz/search/ui/UITagList;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/miui/video/biz/search/ui/factory/SearchFactory;

    invoke-direct {v2}, Lcom/miui/video/biz/search/ui/factory/SearchFactory;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/miui/video/common/feed/ui/adapter/UIAdapter;-><init>(Landroid/content/Context;Lcom/miui/video/common/feed/recyclerview/IUIFactory;)V

    iput-object v0, p0, Lcom/miui/video/biz/search/ui/UITagList;->mAdapter:Lcom/miui/video/common/feed/ui/adapter/UIAdapter;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/search/ui/UITagList;->vUIListView:Lcom/miui/video/common/feed/ui/UITagListView;

    iget-object v1, p0, Lcom/miui/video/biz/search/ui/UITagList;->mAdapter:Lcom/miui/video/common/feed/ui/adapter/UIAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/UITagListView;->setAdapter(Landroid/widget/Adapter;)V

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/UITagList;->mAdapter:Lcom/miui/video/common/feed/ui/adapter/UIAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/UITagList;->mAdapter:Lcom/miui/video/common/feed/ui/adapter/UIAdapter;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/ui/adapter/UIAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 0

    instance-of p1, p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz p1, :cond_1

    check-cast p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/search/ui/UITagList;->mAdapter:Lcom/miui/video/common/feed/ui/adapter/UIAdapter;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/video/common/feed/ui/adapter/UIAdapter;->setData(Ljava/util/List;)Z

    iget-object p1, p0, Lcom/miui/video/biz/search/ui/UITagList;->vView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/search/ui/UITagList;->vView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/miui/video/common/feed/ui/UITagListView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/search/ui/UITagList;->mItemClickListener:Lcom/miui/video/common/feed/ui/UITagListView$OnItemClickListener;

    return-void
.end method
