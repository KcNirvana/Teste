.class public Lcom/miui/video/common/feed/UIRecyclerListView;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UIRecyclerListView.java"

# interfaces
.implements Lcom/miui/video/common/feed/recyclerview/IUIShowOrHideListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "UIRecyclerListView"

.field public static final TYPE_LAYOUT_MANAGER_LNEARA:I = 0x1

.field public static final TYPE_LM_GRID:I = 0x2


# instance fields
.field private GridLayoutManagerSpanCount:I

.field private channel:Ljava/lang/String;

.field private eShowing:Ljava/lang/Runnable;

.field private layoutManagerType:I

.field private mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

.field private mEnableFloatingButton:Z

.field private mLoadingBarImgUrl:Ljava/lang/String;

.field private mLoadingBarListener:Landroid/view/View$OnClickListener;

.field private mLoadingBarShowType:I

.field private mLoadingBarTitle:Ljava/lang/String;

.field private mThreePageCount:I

.field private final onScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private vFloatingButton:Landroid/support/design/widget/FloatingActionButton;

.field private vLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

.field private vUILoadingView:Lcom/miui/video/common/feed/ui/UILoadingView;

.field private vUIRecyclerLoadingBar:Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->layoutManagerType:I

    iput p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->GridLayoutManagerSpanCount:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mLoadingBarShowType:I

    iput p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mThreePageCount:I

    iput-boolean p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mEnableFloatingButton:Z

    new-instance p1, Lcom/miui/video/common/feed/UIRecyclerListView$1;

    invoke-direct {p1, p0}, Lcom/miui/video/common/feed/UIRecyclerListView$1;-><init>(Lcom/miui/video/common/feed/UIRecyclerListView;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->eShowing:Ljava/lang/Runnable;

    new-instance p1, Lcom/miui/video/common/feed/UIRecyclerListView$2;

    invoke-direct {p1, p0}, Lcom/miui/video/common/feed/UIRecyclerListView$2;-><init>(Lcom/miui/video/common/feed/UIRecyclerListView;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->onScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->layoutManagerType:I

    iput p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->GridLayoutManagerSpanCount:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mLoadingBarShowType:I

    iput p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mThreePageCount:I

    iput-boolean p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mEnableFloatingButton:Z

    new-instance p1, Lcom/miui/video/common/feed/UIRecyclerListView$1;

    invoke-direct {p1, p0}, Lcom/miui/video/common/feed/UIRecyclerListView$1;-><init>(Lcom/miui/video/common/feed/UIRecyclerListView;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->eShowing:Ljava/lang/Runnable;

    new-instance p1, Lcom/miui/video/common/feed/UIRecyclerListView$2;

    invoke-direct {p1, p0}, Lcom/miui/video/common/feed/UIRecyclerListView$2;-><init>(Lcom/miui/video/common/feed/UIRecyclerListView;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->onScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->layoutManagerType:I

    iput p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->GridLayoutManagerSpanCount:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mLoadingBarShowType:I

    iput p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mThreePageCount:I

    iput-boolean p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mEnableFloatingButton:Z

    new-instance p1, Lcom/miui/video/common/feed/UIRecyclerListView$1;

    invoke-direct {p1, p0}, Lcom/miui/video/common/feed/UIRecyclerListView$1;-><init>(Lcom/miui/video/common/feed/UIRecyclerListView;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->eShowing:Ljava/lang/Runnable;

    new-instance p1, Lcom/miui/video/common/feed/UIRecyclerListView$2;

    invoke-direct {p1, p0}, Lcom/miui/video/common/feed/UIRecyclerListView$2;-><init>(Lcom/miui/video/common/feed/UIRecyclerListView;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->onScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/common/feed/UIRecyclerListView;)Lcom/miui/video/common/feed/UIRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/common/feed/UIRecyclerListView;Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/common/feed/UIRecyclerListView;->changeFloatingButton(Landroid/support/v7/widget/RecyclerView;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/video/common/feed/UIRecyclerListView;)Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIRecyclerLoadingBar:Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/video/common/feed/UIRecyclerListView;Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;)Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIRecyclerLoadingBar:Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/video/common/feed/UIRecyclerListView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mLoadingBarShowType:I

    return p0
.end method

.method static synthetic access$400(Lcom/miui/video/common/feed/UIRecyclerListView;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mLoadingBarListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/video/common/feed/UIRecyclerListView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mLoadingBarImgUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/video/common/feed/UIRecyclerListView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mLoadingBarTitle:Ljava/lang/String;

    return-object p0
.end method

.method private changeFloatingButton(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vFloatingButton:Landroid/support/design/widget/FloatingActionButton;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mEnableFloatingButton:Z

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vFloatingButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    if-gtz p2, :cond_1

    iget-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vFloatingButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->show()V

    iget-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vFloatingButton:Landroid/support/design/widget/FloatingActionButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vFloatingButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    if-lez p2, :cond_2

    iget-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vFloatingButton:Landroid/support/design/widget/FloatingActionButton;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private initLayoutManager()V
    .locals 3

    iget v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->layoutManagerType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/miui/video/common/feed/MiGridLayoutManager;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->GridLayoutManagerSpanCount:I

    invoke-direct {v0, v1, v2}, Lcom/miui/video/common/feed/MiGridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/video/common/feed/MiLinearLayoutManager;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/common/feed/MiLinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    :goto_0
    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method


# virtual methods
.method public addData(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->onRefreshComplete()V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->addData(Ljava/util/List;)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public addUIFactory(Lcom/miui/video/common/feed/recyclerview/IUIFactory;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->addUIFactory(Lcom/miui/video/common/feed/recyclerview/IUIFactory;)V

    instance-of v0, p1, Lcom/miui/video/common/feed/BaseUIFactory;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/video/common/feed/BaseUIFactory;

    invoke-virtual {p1, p0}, Lcom/miui/video/common/feed/BaseUIFactory;->setUIRecyclerListView(Lcom/miui/video/common/feed/UIRecyclerListView;)V

    :cond_0
    return-void
.end method

.method public deleteItemByEntity(Lcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    const/4 v1, -0x1

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x1

    :goto_0
    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->removeItemFromList(I)V

    return-void
.end method

.method public deleteItemByItemData(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->removeItemFromList(I)V

    :cond_0
    return-void
.end method

.method public deleteItemByPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->removeItemFromList(I)V

    :cond_0
    return-void
.end method

.method public destoryEntitys()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-virtual {v1}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->getItemCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFirstCompleteVisiblePosition()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutManagerType()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->layoutManagerType:I

    return v0
.end method

.method public getPageFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->getPageFlag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUIFactorys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/recyclerview/IUIFactory;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->getUIFactorys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUILoadingView()Lcom/miui/video/common/feed/ui/UILoadingView;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUILoadingView:Lcom/miui/video/common/feed/ui/UILoadingView;

    return-object v0
.end method

.method public getUIRecyclerView()Lcom/miui/video/common/feed/UIRecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    return-object v0
.end method

.method public hideListLoadingBar()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mLoadingBarShowType:I

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->hideFooter()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIRecyclerLoadingBar:Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIRecyclerLoadingBar:Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->hideProgress()V

    :cond_1
    return-void
.end method

.method protected initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/miui/video/framework/base/ui/UIBase;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/miui/video/common/feed/R$styleable;->UIRecyclerListView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/miui/video/common/feed/R$styleable;->UIRecyclerListView_layout_manager:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->layoutManagerType:I

    sget p2, Lcom/miui/video/common/feed/R$styleable;->UIRecyclerListView_grid_span:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->GridLayoutManagerSpanCount:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/common/feed/R$layout;->ui_recycler_listview:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->inflateView(I)V

    sget v0, Lcom/miui/video/common/feed/R$id;->fab:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vFloatingButton:Landroid/support/design/widget/FloatingActionButton;

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vFloatingButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->hide()V

    sget v0, Lcom/miui/video/common/feed/R$id;->ui_recyclerview:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/UIRecyclerView;

    iput-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    sget v0, Lcom/miui/video/common/feed/R$id;->ui_loadingview:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/ui/UILoadingView;

    iput-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUILoadingView:Lcom/miui/video/common/feed/ui/UILoadingView;

    return-void
.end method

.method public initFloatingButton(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz v3, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v3}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getLayoutName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "suspended_ball"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    instance-of v1, v0, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTarget()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTarget()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, v0, p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->initFloatingButton(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method public initFloatingButton(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mEnableFloatingButton:Z

    if-eqz p1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vFloatingButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-static {p1, p3}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iget-object p3, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->onScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    iget-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vFloatingButton:Landroid/support/design/widget/FloatingActionButton;

    new-instance p3, Lcom/miui/video/common/feed/UIRecyclerListView$4;

    invoke-direct {p3, p0, p2}, Lcom/miui/video/common/feed/UIRecyclerListView$4;-><init>(Lcom/miui/video/common/feed/UIRecyclerListView;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public initViewsValue()V
    .locals 3

    new-instance v0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/miui/video/common/feed/DefaultUIFactory;

    invoke-direct {v2}, Lcom/miui/video/common/feed/DefaultUIFactory;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;-><init>(Landroid/content/Context;Lcom/miui/video/common/feed/recyclerview/IUIFactory;)V

    iput-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    new-instance v1, Lcom/miui/video/common/feed/UIRecyclerListView$3;

    invoke-direct {v1, p0}, Lcom/miui/video/common/feed/UIRecyclerListView$3;-><init>(Lcom/miui/video/common/feed/UIRecyclerListView;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->setOnCreateFooterListener(Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter$ICreateFooterListener;)V

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->hideFooter()V

    invoke-direct {p0}, Lcom/miui/video/common/feed/UIRecyclerListView;->initLayoutManager()V

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/UIRecyclerView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const-string v0, "UIRecyclerListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerListView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "onDetachedFromWidnow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/miui/video/framework/base/ui/UIBase;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerListView;->destoryEntitys()V

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->onDestory()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    iput-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

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
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->onUIHide()V

    :cond_0
    return-void
.end method

.method public onUIShow()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->eShowing:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/UIRecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public scrollToTop()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->smoothScrollToTop()V

    :cond_0
    return-void
.end method

.method public setActionDelegateFactory(Lcom/miui/video/common/feed/architeture/action/ActionDelegateFactory;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->setActionDelegateFactory(Lcom/miui/video/common/feed/architeture/action/ActionDelegateFactory;)V

    :cond_0
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->channel:Ljava/lang/String;

    return-void
.end method

.method public setData(Lcom/miui/video/framework/base/entity/PageEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/framework/base/entity/PageEntity<",
            "+",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/framework/base/entity/PageEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->setData(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->onRefreshComplete()V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->channel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    iget-object v1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/UIRecyclerView;->setChannel(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->setData(Ljava/util/List;)Z

    iget-boolean v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mEnableFloatingButton:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->initFloatingButton(Ljava/util/List;)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method public setFloatingButtonOffset(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vFloatingButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    return-void
.end method

.method public setLayoutManager(II)V
    .locals 0

    iput p2, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->GridLayoutManagerSpanCount:I

    iput p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->layoutManagerType:I

    invoke-direct {p0}, Lcom/miui/video/common/feed/UIRecyclerListView;->initLayoutManager()V

    return-void
.end method

.method public setListLoadingBar()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->getPullMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->getPullMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerListView;->hideListLoadingBar()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerListView;->showListLoadingBar()V

    :goto_1
    return-void
.end method

.method public setListLoadingBarState(Lcom/miui/video/framework/base/entity/PageEntity;Landroid/view/View$OnClickListener;)V
    .locals 2

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/miui/video/framework/base/entity/PageEntity$DataState;->DATA_NORMAL:Lcom/miui/video/framework/base/entity/PageEntity$DataState;

    invoke-virtual {p1}, Lcom/miui/video/framework/base/entity/PageEntity;->getDataState()Lcom/miui/video/framework/base/entity/PageEntity$DataState;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerListView;->showListLoadingBar()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/miui/video/framework/base/entity/PageEntity$DataState;->DATA_RETRY:Lcom/miui/video/framework/base/entity/PageEntity$DataState;

    invoke-virtual {p1}, Lcom/miui/video/framework/base/entity/PageEntity;->getDataState()Lcom/miui/video/framework/base/entity/PageEntity$DataState;

    move-result-object p1

    if-ne v0, p1, :cond_2

    invoke-virtual {p0, p2}, Lcom/miui/video/common/feed/UIRecyclerListView;->showListLoadRetryBar(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerListView;->hideListLoadingBar()V

    :goto_0
    return-void
.end method

.method public setPageFlag(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->setPageFlag(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setUIFactory(Lcom/miui/video/common/feed/recyclerview/IUIFactory;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->setUIFactory(Lcom/miui/video/common/feed/recyclerview/IUIFactory;)V

    instance-of v0, p1, Lcom/miui/video/common/feed/BaseUIFactory;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/video/common/feed/BaseUIFactory;

    invoke-virtual {p1, p0}, Lcom/miui/video/common/feed/BaseUIFactory;->setUIRecyclerListView(Lcom/miui/video/common/feed/UIRecyclerListView;)V

    :cond_0
    return-void
.end method

.method public showListLoadRetryBar(Landroid/view/View$OnClickListener;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mLoadingBarShowType:I

    iput-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mLoadingBarListener:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->showFooter()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIRecyclerLoadingBar:Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIRecyclerLoadingBar:Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->showRetry(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public showListLoadTitleBar(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mLoadingBarShowType:I

    iput-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mLoadingBarTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->showFooter()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIRecyclerLoadingBar:Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIRecyclerLoadingBar:Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->showTitle(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public showListLoadingBar()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mLoadingBarShowType:I

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->showFooter()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIRecyclerLoadingBar:Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIRecyclerLoadingBar:Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->showProgress()V

    :cond_1
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/UIRecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public smoothScrollToTopPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/UIRecyclerView;->smoothScrollToTopPosition(I)V

    :cond_0
    return-void
.end method
