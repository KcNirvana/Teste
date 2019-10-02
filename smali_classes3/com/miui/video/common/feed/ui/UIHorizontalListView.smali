.class public Lcom/miui/video/common/feed/ui/UIHorizontalListView;
.super Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.source "UIHorizontalListView.java"

# interfaces
.implements Lcom/miui/video/common/feed/CActions;
.implements Lcom/miui/video/common/feed/recyclerview/IUIShowOrHideListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/common/feed/ui/UIHorizontalListView$ItemViewHolder;
    }
.end annotation


# static fields
.field private static HORIZONTAL_LONG_HIGH:I = 0x0

.field private static HORIZONTAL_LONG_WIDTH:I = 0x0

.field private static HORIZONTAL_WIDE_HIGH:I = 0x0

.field private static HORIZONTAL_WIDE_WIDTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UIHorizontalListView"


# instance fields
.field protected current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

.field private eShowing:Ljava/lang/Runnable;

.field private mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

.field private vLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field protected vNextBtn:Landroid/view/View;

.field private vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1

    sget v0, Lcom/miui/video/common/feed/R$layout;->ui_long_horizintall_list_view:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    new-instance p1, Lcom/miui/video/common/feed/ui/UIHorizontalListView$3;

    invoke-direct {p1, p0}, Lcom/miui/video/common/feed/ui/UIHorizontalListView$3;-><init>(Lcom/miui/video/common/feed/ui/UIHorizontalListView;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->eShowing:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    new-instance p1, Lcom/miui/video/common/feed/ui/UIHorizontalListView$3;

    invoke-direct {p1, p0}, Lcom/miui/video/common/feed/ui/UIHorizontalListView$3;-><init>(Lcom/miui/video/common/feed/ui/UIHorizontalListView;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->eShowing:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/common/feed/ui/UIHorizontalListView;)Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/common/feed/ui/UIHorizontalListView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->HORIZONTAL_LONG_WIDTH:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    sget v0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->HORIZONTAL_LONG_HIGH:I

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    sget v0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->HORIZONTAL_WIDE_WIDTH:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    sget v0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->HORIZONTAL_WIDE_HIGH:I

    return v0
.end method

.method static synthetic access$600(Lcom/miui/video/common/feed/ui/UIHorizontalListView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/video/common/feed/ui/UIHorizontalListView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/video/common/feed/ui/UIHorizontalListView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/video/common/feed/ui/UIHorizontalListView;)Lcom/miui/video/common/feed/UIRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    return-object p0
.end method

.method public static synthetic lambda$initFindViews$3(Lcom/miui/video/common/feed/ui/UIHorizontalListView;Landroid/view/View;)V
    .locals 1

    sget p1, Lcom/miui/video/common/feed/R$id;->vo_action_id_subscribe_more_btn_click:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->raiseAction(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getFirstCompleteVisiblePosition()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->vLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->vLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getUIRecyclerView()Lcom/miui/video/common/feed/UIRecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    return-object v0
.end method

.method public initFindViews()V
    .locals 2

    sget v0, Lcom/miui/video/common/feed/R$id;->ui_recyclerview:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/UIRecyclerView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_go_more:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->vNextBtn:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->vNextBtn:Landroid/view/View;

    new-instance v1, Lcom/miui/video/common/feed/ui/-$$Lambda$UIHorizontalListView$DewlcbgilUpphBqW140uCBN0BdA;

    invoke-direct {v1, p0}, Lcom/miui/video/common/feed/ui/-$$Lambda$UIHorizontalListView$DewlcbgilUpphBqW140uCBN0BdA;-><init>(Lcom/miui/video/common/feed/ui/UIHorizontalListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initViewsValue()V
    .locals 4

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->vLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->vLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/UIRecyclerView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->vLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/UIRecyclerView;->enableOnScrollListener(Z)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    new-instance v1, Lcom/miui/video/common/feed/ui/UIHorizontalListView$1;

    invoke-direct {v1, p0}, Lcom/miui/video/common/feed/ui/UIHorizontalListView$1;-><init>(Lcom/miui/video/common/feed/ui/UIHorizontalListView;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/UIRecyclerView;->setOnScrollEventListener(Lcom/miui/video/common/feed/UIRecyclerView$OnScrollEventListener;)V

    sget v0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->HORIZONTAL_LONG_WIDTH:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/common/feed/R$dimen;->dp_100:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->HORIZONTAL_LONG_WIDTH:I

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/common/feed/R$dimen;->dp_188:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->HORIZONTAL_LONG_HIGH:I

    :cond_0
    sget v0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->HORIZONTAL_WIDE_WIDTH:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/common/feed/R$dimen;->dp_155:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->HORIZONTAL_WIDE_WIDTH:I

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/common/feed/R$dimen;->dp_144:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->HORIZONTAL_WIDE_HIGH:I

    :cond_1
    new-instance v0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/miui/video/common/feed/DefaultUIFactory;

    new-instance v3, Lcom/miui/video/common/feed/ui/UIHorizontalListView$2;

    invoke-direct {v3, p0}, Lcom/miui/video/common/feed/ui/UIHorizontalListView$2;-><init>(Lcom/miui/video/common/feed/ui/UIHorizontalListView;)V

    invoke-direct {v2, v3}, Lcom/miui/video/common/feed/DefaultUIFactory;-><init>(Lcom/miui/video/common/feed/IUIRecyclerCreateListener;)V

    invoke-direct {v0, v1, v2}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;-><init>(Landroid/content/Context;Lcom/miui/video/common/feed/recyclerview/IUIFactory;)V

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onUIAttached()V
    .locals 0

    return-void
.end method

.method public onUIDetached()V
    .locals 0

    return-void
.end method

.method public onUIHide()V
    .locals 0

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    const-string p2, "ACTION_SET_VALUE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    instance-of p2, p3, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-ne p1, p3, :cond_0

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    check-cast p3, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    iput-object p3, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->setData(Ljava/util/List;)Z

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getLastItemPosition()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getLastItemOffsetPosition()I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->scrollToPosition(I)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object p3, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getLastItemPosition()I

    move-result p3

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getLastItemOffsetPosition()I

    move-result v0

    invoke-virtual {p1, p3, v0}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :goto_1
    const-string p1, "subscribed_author_list"

    iget-object p3, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getLayoutName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->vNextBtn:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->vNextBtn:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    const-string p2, "com.miui.video.KEY_SCROLL_TO_TOP"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    if-eqz p2, :cond_5

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerView;->smoothScrollToTop()V

    goto :goto_2

    :cond_5
    const-string p2, "com.miui.video.KEY_UI_SHOW"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->getUIRecyclerView()Lcom/miui/video/common/feed/UIRecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->eShowing:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/miui/video/common/feed/UIRecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_6
    const-string p2, "com.miui.video.KEY_UI_HIDE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    if-eqz p2, :cond_7

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerView;->onUIHide()V

    goto :goto_2

    :cond_7
    const-string p2, "com.miui.video.ACTION_REFRESH"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->notifyDataSetChanged()V

    :cond_8
    :goto_2
    return-void
.end method

.method public onUIShow()V
    .locals 3

    const-string v0, "com.miui.video.KEY_UI_SHOW"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/UIRecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 2

    instance-of p1, p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    check-cast p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    iput-object p2, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->setData(Ljava/util/List;)Z

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getLastItemPosition()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getLastItemOffsetPosition()I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->scrollToPosition(I)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getLastItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getLastItemOffsetPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :goto_1
    const-string p1, "subscribed_author_list"

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getLayoutName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->vNextBtn:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->vNextBtn:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/UIRecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method
