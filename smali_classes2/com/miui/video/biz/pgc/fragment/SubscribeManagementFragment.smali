.class public Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;
.super Lcom/miui/video/service/base/VideoBaseFragment;
.source "SubscribeManagementFragment.java"

# interfaces
.implements Lcom/miui/video/biz/pgc/presenter/view/SubscribeView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/service/base/VideoBaseFragment<",
        "Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;",
        ">;",
        "Lcom/miui/video/biz/pgc/presenter/view/SubscribeView;"
    }
.end annotation


# instance fields
.field private finishListener:Landroid/view/View$OnClickListener;

.field private infoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

.field private listView:Lcom/miui/video/common/feed/UIRecyclerListView;

.field private manageListener:Landroid/view/View$OnClickListener;

.field private orderType:I

.field private popWindowListener:Landroid/view/View$OnClickListener;

.field private popupWindow:Landroid/widget/PopupWindow;

.field private presenter:Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;

.field private refreshList:Z

.field private subscribeAuthorManageMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/service/base/VideoBaseFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->orderType:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->subscribeAuthorManageMode:Z

    iput-boolean v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->refreshList:Z

    new-instance v0, Lcom/miui/video/biz/pgc/fragment/-$$Lambda$SubscribeManagementFragment$Z1wHIFmzRygqm6MnwmjWGrCGdo8;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/pgc/fragment/-$$Lambda$SubscribeManagementFragment$Z1wHIFmzRygqm6MnwmjWGrCGdo8;-><init>(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;)V

    iput-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->manageListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment$1;-><init>(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;)V

    iput-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->finishListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment$2;-><init>(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;)V

    iput-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->popWindowListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->manageMode(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;)Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->infoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->refreshList:Z

    return p0
.end method

.method static synthetic access$202(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->refreshList:Z

    return p1
.end method

.method static synthetic access$300(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->popupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->orderList(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;)Lcom/miui/video/common/feed/UIRecyclerListView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->listView:Lcom/miui/video/common/feed/UIRecyclerListView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->orderType:I

    return p0
.end method

.method private bgAlpha(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private initInfoStream()V
    .locals 4

    sget v0, Lcom/miui/video/biz/group/pgc/R$id;->ui_recycler_list_view:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/UIRecyclerListView;

    iput-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->listView:Lcom/miui/video/common/feed/UIRecyclerListView;

    new-instance v0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    new-instance v1, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    iget-object v2, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->listView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-direct {v1, v2}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;-><init>(Lcom/miui/video/common/feed/UIRecyclerListView;)V

    new-instance v2, Lcom/miui/video/biz/pgc/data/SubscribeAuthorDataSource;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/miui/video/biz/pgc/data/SubscribeAuthorDataSource;-><init>(Z)V

    new-instance v3, Lcom/miui/video/service/common/architeture/strategy/OnlyLoadMoreStrategy;

    invoke-direct {v3}, Lcom/miui/video/service/common/architeture/strategy/OnlyLoadMoreStrategy;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;-><init>(Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;)V

    iput-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->infoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->infoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    new-instance v1, Lcom/miui/video/common/feed/DefaultUIFactory;

    new-instance v2, Lcom/miui/video/biz/pgc/fragment/-$$Lambda$SubscribeManagementFragment$bMCZVRn5Q0S3_ThZ6EiHmGpRFD0;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/pgc/fragment/-$$Lambda$SubscribeManagementFragment$bMCZVRn5Q0S3_ThZ6EiHmGpRFD0;-><init>(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;)V

    invoke-direct {v1, v2}, Lcom/miui/video/common/feed/DefaultUIFactory;-><init>(Lcom/miui/video/common/feed/IUIRecyclerCreateListener;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->addUIFactory(Lcom/miui/video/common/feed/recyclerview/IUIFactory;)V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->infoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    sget v1, Lcom/miui/video/biz/group/pgc/R$id;->vo_action_id_subscribe_author_btn_click:I

    new-instance v2, Lcom/miui/video/biz/pgc/fragment/-$$Lambda$SubscribeManagementFragment$Y434CzTSdhnFFSrn50vT7M3bwsA;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/pgc/fragment/-$$Lambda$SubscribeManagementFragment$Y434CzTSdhnFFSrn50vT7M3bwsA;-><init>(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->registerActionDelegate(ILcom/miui/video/common/feed/architeture/action/ActionListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->listView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUIRecyclerView()Lcom/miui/video/common/feed/UIRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$Adapter;

    new-instance v1, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment$3;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment$3;-><init>(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->infoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->init()V

    return-void
.end method

.method private initPopWindow()V
    .locals 5

    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/group/pgc/R$layout;->view_subscribe_list_order_selector:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    new-instance v1, Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->popupWindow:Landroid/widget/PopupWindow;

    new-instance v2, Lcom/miui/video/biz/pgc/fragment/-$$Lambda$SubscribeManagementFragment$HYVAb3tfF4rNdERyhvGUDcW5HxQ;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/pgc/fragment/-$$Lambda$SubscribeManagementFragment$HYVAb3tfF4rNdERyhvGUDcW5HxQ;-><init>(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    sget v1, Lcom/miui/video/biz/group/pgc/R$id;->tv_subscribe_order_update:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->popWindowListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/miui/video/biz/group/pgc/R$id;->tv_subscribe_order_subscribe:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->popWindowListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/miui/video/biz/group/pgc/R$id;->tv_subscribe_order_alphabet:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->popWindowListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic lambda$initInfoStream$2(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;Landroid/content/Context;ILandroid/view/ViewGroup;I)Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
    .locals 1

    const/16 v0, 0x49

    if-ne p2, v0, :cond_0

    new-instance p2, Lcom/miui/video/biz/pgc/ui/AuthorManageView;

    new-instance v0, Lcom/miui/video/biz/pgc/fragment/-$$Lambda$SubscribeManagementFragment$IksRnrHODY5yf38oekfVWv7xo7A;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/pgc/fragment/-$$Lambda$SubscribeManagementFragment$IksRnrHODY5yf38oekfVWv7xo7A;-><init>(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;)V

    invoke-direct {p2, p1, p3, p4, v0}, Lcom/miui/video/biz/pgc/ui/AuthorManageView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/miui/video/biz/pgc/ui/AuthorManageView$ManagementStatus;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic lambda$initInfoStream$3(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;Landroid/content/Context;ILjava/lang/Object;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->presenter:Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;

    check-cast p3, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;->subscriptionAuthor(Lcom/miui/video/framework/base/ui/BaseUIEntity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$initPopWindow$4(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->bgAlpha(F)V

    return-void
.end method

.method public static synthetic lambda$jBG1Db0ztatJPQDEpQuQ3ehiGp8(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->showPopWindow(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->manageMode(Z)V

    return-void
.end method

.method public static synthetic lambda$null$1(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->subscribeAuthorManageMode:Z

    return v0
.end method

.method private manageMode(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->subscribeAuthorManageMode:Z

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->listView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->notifyDataSetChanged()V

    if-eqz p1, :cond_0

    sget v0, Lcom/miui/video/biz/group/pgc/R$string;->finish:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/miui/video/biz/group/pgc/R$string;->manage:I

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->finishListener:Landroid/view/View$OnClickListener;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->manageListener:Landroid/view/View$OnClickListener;

    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->setMenuBar(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static newInstance()Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;
    .locals 1

    new-instance v0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;

    invoke-direct {v0}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;-><init>()V

    return-object v0
.end method

.method private orderList(I)V
    .locals 4

    iget v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->orderType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "module"

    const-string v2, "subscription"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "event"

    const-string v2, "subscribed_authors_order_click"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "item_type"

    invoke-static {p1}, Lcom/miui/video/biz/pgc/utils/AuthorSortUtil;->getOrderTypeDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v0, v1, v3}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    :cond_0
    iput p1, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->orderType:I

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->listView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getData()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/video/biz/pgc/utils/AuthorSortUtil;->sortFeedRowEntity(Ljava/util/List;I)V

    iget-object p1, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->listView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->notifyDataSetChanged()V

    return-void
.end method

.method private setMenuBar(ILandroid/view/View$OnClickListener;)V
    .locals 9

    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/pgc/activity/SubscribeActivity;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/miui/video/biz/pgc/activity/SubscribeActivity;->titleBar:Lcom/miui/video/service/widget/ui/UITitleBar;

    const/4 v2, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/miui/video/biz/group/pgc/R$dimen;->sp_16:I

    sget v6, Lcom/miui/video/biz/group/pgc/R$color;->c_blue_text_0C80FF:I

    const/4 v7, 0x0

    move v3, p1

    move-object v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/miui/video/service/widget/ui/UITitleBar;->setRightView(IILjava/lang/String;IIILandroid/view/View$OnClickListener;)Lcom/miui/video/service/widget/ui/UITitleBar;

    :cond_0
    return-void
.end method

.method private showPopWindow(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->listView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/group/pgc/R$color;->c_blue_text_0C80FF:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/group/pgc/R$color;->black:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/miui/video/biz/group/pgc/R$id;->tv_subscribe_order_update:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget v4, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->orderType:I

    if-nez v4, :cond_1

    move v4, v0

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    sget v3, Lcom/miui/video/biz/group/pgc/R$id;->tv_subscribe_order_subscribe:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget v4, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->orderType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    move v4, v0

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    sget v3, Lcom/miui/video/biz/group/pgc/R$id;->tv_subscribe_order_alphabet:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget v3, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->orderType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/group/pgc/R$dimen;->dp_13_33:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    const p1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, p1}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->bgAlpha(F)V

    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;
    .locals 1

    new-instance v0, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;

    invoke-direct {v0}, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->presenter:Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->presenter:Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/miui/video/common/library/base/impl/IPresenter;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->createPresenter()Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/video/service/base/VideoBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    sget p1, Lcom/miui/video/biz/group/pgc/R$id;->tv_order_type:I

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/group/pgc/R$string;->order_recently_updated:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    sget p1, Lcom/miui/video/biz/group/pgc/R$id;->v_order:I

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/pgc/fragment/-$$Lambda$SubscribeManagementFragment$jBG1Db0ztatJPQDEpQuQ3ehiGp8;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/pgc/fragment/-$$Lambda$SubscribeManagementFragment$jBG1Db0ztatJPQDEpQuQ3ehiGp8;-><init>(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->initPopWindow()V

    invoke-direct {p0}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->initInfoStream()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->manageMode(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseFragment;->onDestroy()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->setMenuBar(ILandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->infoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->onDestory()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseFragment;->onPause()V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->infoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->onPause()V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseFragment;->onResume()V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->infoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->onResume()V

    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/group/pgc/R$layout;->fragment_subscirbe_management:I

    return v0
.end method

.method public subscribeResult(ZLjava/lang/Throwable;ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->listView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "author_list_page"

    invoke-static {p1, p3, p4, p2}, Lcom/miui/video/base/routers/pgc/PgcUtil;->subscribeAuthorTrack(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    instance-of p1, p2, Ljava/net/UnknownHostException;

    if-eqz p1, :cond_1

    sget p1, Lcom/miui/video/biz/group/pgc/R$string;->t_network_error:I

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    :goto_1
    return-void
.end method

.method public tackerPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "subscription"

    return-object v0
.end method
