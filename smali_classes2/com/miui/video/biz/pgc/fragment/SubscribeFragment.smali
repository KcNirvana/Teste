.class public Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;
.super Lcom/miui/video/service/base/VideoBaseFragment;
.source "SubscribeFragment.java"

# interfaces
.implements Lcom/miui/video/biz/pgc/data/SubscribeDataSource$AuthorTypeUpdateListener;
.implements Lcom/miui/video/biz/pgc/utils/OnFirstLoadResultListener;
.implements Lcom/miui/video/biz/pgc/presenter/view/SubscribeView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/pgc/fragment/SubscribeFragment$OnEnterManagementViewClickListener;,
        Lcom/miui/video/biz/pgc/fragment/SubscribeFragment$RecommendItemDecoration;
    }
.end annotation


# instance fields
.field private headerView:Landroid/view/View;

.field private infoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

.field private listView:Lcom/miui/video/common/feed/UIRecyclerListView;

.field private presenter:Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/service/base/VideoBaseFragment;-><init>()V

    return-void
.end method

.method private initPresenter()V
    .locals 4

    new-instance v0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    new-instance v1, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    iget-object v2, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->listView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-direct {v1, v2}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;-><init>(Lcom/miui/video/common/feed/UIRecyclerListView;)V

    new-instance v2, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;

    invoke-direct {v2, p0, p0}, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;-><init>(Lcom/miui/video/biz/pgc/data/SubscribeDataSource$AuthorTypeUpdateListener;Lcom/miui/video/biz/pgc/utils/OnFirstLoadResultListener;)V

    new-instance v3, Lcom/miui/video/service/common/architeture/strategy/PullToReplaceAndLoadMoreStrategy;

    invoke-direct {v3}, Lcom/miui/video/service/common/architeture/strategy/PullToReplaceAndLoadMoreStrategy;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;-><init>(Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;)V

    iput-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->infoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->infoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    new-instance v1, Lcom/miui/video/common/feed/DefaultUIFactory;

    sget-object v2, Lcom/miui/video/biz/pgc/fragment/-$$Lambda$SubscribeFragment$SXk5r8vTfm7T0L3_DVgsAfoyP20;->INSTANCE:Lcom/miui/video/biz/pgc/fragment/-$$Lambda$SubscribeFragment$SXk5r8vTfm7T0L3_DVgsAfoyP20;

    invoke-direct {v1, v2}, Lcom/miui/video/common/feed/DefaultUIFactory;-><init>(Lcom/miui/video/common/feed/IUIRecyclerCreateListener;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->addUIFactory(Lcom/miui/video/common/feed/recyclerview/IUIFactory;)V

    invoke-direct {p0}, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->registerAction()V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->infoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->init()V

    return-void
.end method

.method static synthetic lambda$initPresenter$5(Landroid/content/Context;ILandroid/view/ViewGroup;I)Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
    .locals 1

    const/16 v0, 0x4b

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/miui/video/biz/pgc/ui/RecommendAuthorView;

    invoke-direct {p1, p0, p2, p3}, Lcom/miui/video/biz/pgc/ui/RecommendAuthorView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic lambda$onUpdate$10(Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/miui/video/common/feed/DefaultUIFactory;->TYPE_RECOMMEND_AUTHOR:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->headerView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->listView:Lcom/miui/video/common/feed/UIRecyclerListView;

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_1
    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Lcom/miui/video/common/feed/UIRecyclerListView;->setLayoutManager(II)V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->listView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUIRecyclerView()Lcom/miui/video/common/feed/UIRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->listView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getItemDecorationCount()I

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment$RecommendItemDecoration;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment$RecommendItemDecoration;-><init>(Lcom/miui/video/biz/pgc/fragment/SubscribeFragment$1;)V

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getItemDecorationCount()I

    move-result p1

    if-ne p1, v2, :cond_3

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeItemDecorationAt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public static synthetic lambda$registerAction$6(Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;Landroid/content/Context;ILjava/lang/Object;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/pgc/activity/SubscribeActivity;

    invoke-virtual {p1}, Lcom/miui/video/biz/pgc/activity/SubscribeActivity;->startManagementFragment()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$registerAction$7(Landroid/content/Context;ILcom/miui/video/common/feed/entity/TinyCardEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 5

    instance-of v0, p3, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;

    iget-object v1, p3, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->getStyle()I

    move-result v2

    new-instance v3, Lcom/miui/video/service/action/ContentActionWrapper;

    const-string v4, ""

    invoke-direct {v3, v4}, Lcom/miui/video/service/action/ContentActionWrapper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;-><init>(Landroid/content/Context;Landroid/view/View;ILcom/miui/video/service/action/ContentActionWrapper;)V

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V

    check-cast p3, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;

    invoke-virtual {p3}, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->getMoreBtn()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->show(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$registerAction$8(Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;Landroid/content/Context;ILjava/lang/String;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "subscribed_authors_page"

    invoke-static {p1, p3, p2}, Lcom/miui/video/base/routers/pgc/PgcUtil;->openAuthorDetail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$registerAction$9(Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;Landroid/content/Context;ILjava/lang/Object;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->presenter:Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;

    check-cast p3, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;->subscriptionAuthor(Lcom/miui/video/framework/base/ui/BaseUIEntity;Ljava/lang/String;)V

    return-void
.end method

.method public static newInstance()Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;
    .locals 1

    new-instance v0, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;

    invoke-direct {v0}, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;-><init>()V

    return-object v0
.end method

.method private registerAction()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->infoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    sget v1, Lcom/miui/video/biz/group/pgc/R$id;->vo_action_id_subscribe_more_btn_click:I

    new-instance v2, Lcom/miui/video/biz/pgc/fragment/-$$Lambda$SubscribeFragment$XXRYyt-kTq8zZQWhIe_JUxq7I5w;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/pgc/fragment/-$$Lambda$SubscribeFragment$XXRYyt-kTq8zZQWhIe_JUxq7I5w;-><init>(Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->registerActionDelegate(ILcom/miui/video/common/feed/architeture/action/ActionListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->infoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    sget v1, Lcom/miui/video/biz/group/pgc/R$id;->vo_action_id_more_btn_click:I

    const-class v2, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    sget-object v3, Lcom/miui/video/biz/pgc/fragment/-$$Lambda$SubscribeFragment$yqxSG2eENbQ3-iESzESrhagDoEQ;->INSTANCE:Lcom/miui/video/biz/pgc/fragment/-$$Lambda$SubscribeFragment$yqxSG2eENbQ3-iESzESrhagDoEQ;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->registerActionDelegate(ILjava/lang/Class;Lcom/miui/video/common/feed/architeture/action/ActionListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->infoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    sget v1, Lcom/miui/video/biz/group/pgc/R$id;->vo_action_id_enter_author_detail_btn_click:I

    const-class v2, Ljava/lang/String;

    new-instance v3, Lcom/miui/video/biz/pgc/fragment/-$$Lambda$SubscribeFragment$uMfRl6eAHQ9Fntsc22yGr3QG6YM;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/pgc/fragment/-$$Lambda$SubscribeFragment$uMfRl6eAHQ9Fntsc22yGr3QG6YM;-><init>(Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->registerActionDelegate(ILjava/lang/Class;Lcom/miui/video/common/feed/architeture/action/ActionListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->infoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    sget v1, Lcom/miui/video/biz/group/pgc/R$id;->vo_action_id_subscribe_author_btn_click:I

    new-instance v2, Lcom/miui/video/biz/pgc/fragment/-$$Lambda$SubscribeFragment$Km8MmjuNBpQxhg0sg15p36f_flo;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/pgc/fragment/-$$Lambda$SubscribeFragment$Km8MmjuNBpQxhg0sg15p36f_flo;-><init>(Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->registerActionDelegate(ILcom/miui/video/common/feed/architeture/action/ActionListener;)V

    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/miui/video/common/library/base/impl/IPresenter;
    .locals 1

    new-instance v0, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;

    invoke-direct {v0}, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->presenter:Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->presenter:Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/video/service/base/VideoBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    sget p1, Lcom/miui/video/biz/group/pgc/R$id;->ui_recycler_list_view:I

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/video/common/feed/UIRecyclerListView;

    iput-object p1, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->listView:Lcom/miui/video/common/feed/UIRecyclerListView;

    sget p1, Lcom/miui/video/biz/group/pgc/R$id;->l_recommend_header:I

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->headerView:Landroid/view/View;

    invoke-direct {p0}, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->initPresenter()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseFragment;->onDestroy()V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->infoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->onDestory()V

    return-void
.end method

.method public onLoad()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->listView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->listView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getLayoutManagerType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->listView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->listView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseFragment;->onPause()V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->infoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->onPause()V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/pgc/activity/SubscribeActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "module"

    const-string v3, "subscription"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "event"

    const-string v3, "subscription_detail_expose"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "source"

    iget-object v3, v0, Lcom/miui/video/biz/pgc/activity/SubscribeActivity;->source:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "result"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x3

    invoke-static {v0, v1, v2, p1}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseFragment;->onResume()V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->infoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->onResume()V

    return-void
.end method

.method public onUpdate(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/miui/video/biz/pgc/fragment/-$$Lambda$SubscribeFragment$KCrmj3tHI1isGRmvHKs5BXzc-aw;

    invoke-direct {v1, p0, p1}, Lcom/miui/video/biz/pgc/fragment/-$$Lambda$SubscribeFragment$KCrmj3tHI1isGRmvHKs5BXzc-aw;-><init>(Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/group/pgc/R$layout;->fragment_subscribe_author_list:I

    return v0
.end method

.method public subscribeResult(ZLjava/lang/Throwable;ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->listView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->headerView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "recommend_authors"

    goto :goto_0

    :cond_0
    const-string p1, "author_list_page"

    :goto_0
    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3, p4, p1}, Lcom/miui/video/base/routers/pgc/PgcUtil;->subscribeAuthorTrack(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    instance-of p1, p2, Ljava/net/UnknownHostException;

    if-eqz p1, :cond_2

    sget p1, Lcom/miui/video/biz/group/pgc/R$string;->t_network_error:I

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    :goto_2
    return-void
.end method

.method public tackerPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "author_list_page"

    return-object v0
.end method
