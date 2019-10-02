.class public Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UIGalleryRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView$MyGridLayoutManager;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

.field private mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field private mPageEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

.field private mSpanCount:I

.field private mSpanSize:I

.field private vRecyclerListView:Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;


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

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->mPageEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    return-object p0
.end method


# virtual methods
.method public addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->vRecyclerListView:Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->vRecyclerListView:Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    :cond_0
    return-void
.end method

.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->vRecyclerListView:Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->vRecyclerListView:Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public initFindViews()V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->mSpanCount:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->mSpanSize:I

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->ui_recyclerview:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->inflateView(I)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->ui_recycler_listview:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->vRecyclerListView:Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;

    return-void
.end method

.method public initViewsValue()V
    .locals 3

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView$MyGridLayoutManager;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->mSpanCount:I

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView$MyGridLayoutManager;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    new-instance v1, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView$1;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->vRecyclerListView:Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->vRecyclerListView:Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->vRecyclerListView:Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->setPullToRefreshEnabled(Z)V

    new-instance v0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/miui/video/biz/videoplus/app/factory/UIPlusFactory;

    invoke-direct {v2}, Lcom/miui/video/biz/videoplus/app/factory/UIPlusFactory;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;-><init>(Landroid/content/Context;Lcom/miui/video/biz/videoplus/app/factory/IUIFactory;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->mAdapter:Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->vRecyclerListView:Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->mAdapter:Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public isScrollToTop()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->vRecyclerListView:Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->mAdapter:Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    const-string p2, "ACTION_SET_VALUE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    check-cast p3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    iput-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->mPageEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->mAdapter:Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->mPageEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;->getList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->setData(Ljava/util/List;)Z

    :cond_0
    return-void
.end method

.method public removeItem(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->mAdapter:Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->removeItemData(I)V

    return-void
.end method

.method public removeItemAtPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->mAdapter:Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->mAdapter:Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->removeItemData(I)V

    :cond_0
    return-void
.end method

.method public removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->vRecyclerListView:Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->vRecyclerListView:Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    :cond_0
    return-void
.end method

.method public scrollToTop()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->vRecyclerListView:Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public setData(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->mPageEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->mSpanCount:I

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;->getSpanCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;->getSpanCount()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->mAdapter:Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->mPageEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->setData(Ljava/util/List;)Z

    return-void
.end method

.method public setUIFactory(Lcom/miui/video/biz/videoplus/app/factory/IUIFactory;)Z
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->mAdapter:Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->mAdapter:Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->setUIFactory(Lcom/miui/video/biz/videoplus/app/factory/IUIFactory;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
