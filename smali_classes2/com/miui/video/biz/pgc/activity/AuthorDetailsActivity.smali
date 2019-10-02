.class public Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;
.super Lcom/miui/video/service/base/VideoBaseAppCompatActivity;
.source "AuthorDetailsActivity.java"

# interfaces
.implements Lcom/miui/video/biz/pgc/presenter/view/SubscribeView;
.implements Lcom/miui/video/biz/pgc/utils/OnFirstLoadResultListener;
.implements Lcom/miui/video/biz/pgc/ui/AuthorDetailsView$OnThemeColorChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/service/base/VideoBaseAppCompatActivity<",
        "Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;",
        ">;",
        "Lcom/miui/video/biz/pgc/presenter/view/SubscribeView;",
        "Lcom/miui/video/biz/pgc/utils/OnFirstLoadResultListener;",
        "Lcom/miui/video/biz/pgc/ui/AuthorDetailsView$OnThemeColorChangeListener;"
    }
.end annotation


# static fields
.field public static final DATA:Ljava/lang/String; = "data"


# instance fields
.field private infoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

.field private listView:Lcom/miui/video/common/feed/UIRecyclerListView;

.field private mUserId:Ljava/lang/String;

.field private presenter:Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;

.field private source:Ljava/lang/String;

.field private titleBar:Lcom/miui/video/service/widget/ui/UITitleBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;)Lcom/miui/video/common/feed/UIRecyclerListView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->listView:Lcom/miui/video/common/feed/UIRecyclerListView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->initTitleBar(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->mUserId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;)Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->presenter:Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;

    return-object p0
.end method

.method private initInfoStream()V
    .locals 4

    sget v0, Lcom/miui/video/biz/group/pgc/R$id;->ui_recycler_list_view:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/UIRecyclerListView;

    iput-object v0, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->listView:Lcom/miui/video/common/feed/UIRecyclerListView;

    iget-object v0, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->listView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUIRecyclerView()Lcom/miui/video/common/feed/UIRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity$1;-><init>(Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->listView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUIRecyclerView()Lcom/miui/video/common/feed/UIRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    new-instance v1, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity$2;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity$2;-><init>(Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    new-instance v0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    iget-object v1, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->listView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-direct {v0, v1}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;-><init>(Lcom/miui/video/common/feed/UIRecyclerListView;)V

    new-instance v1, Lcom/miui/video/biz/pgc/data/AuthorDataSource;

    iget-object v2, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->mUserId:Ljava/lang/String;

    invoke-direct {v1, v2, p0}, Lcom/miui/video/biz/pgc/data/AuthorDataSource;-><init>(Ljava/lang/String;Lcom/miui/video/biz/pgc/utils/OnFirstLoadResultListener;)V

    new-instance v2, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity$3;

    new-instance v3, Lcom/miui/video/service/common/architeture/strategy/PullToReplaceAndLoadMoreStrategy;

    invoke-direct {v3}, Lcom/miui/video/service/common/architeture/strategy/PullToReplaceAndLoadMoreStrategy;-><init>()V

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity$3;-><init>(Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;)V

    iput-object v2, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->infoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    iget-object v0, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->infoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    new-instance v2, Lcom/miui/video/common/feed/DefaultUIFactory;

    new-instance v3, Lcom/miui/video/biz/pgc/activity/-$$Lambda$AuthorDetailsActivity$bb0loaLTQtdOnragmkoEYYAHtjg;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/pgc/activity/-$$Lambda$AuthorDetailsActivity$bb0loaLTQtdOnragmkoEYYAHtjg;-><init>(Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;)V

    invoke-direct {v2, v3}, Lcom/miui/video/common/feed/DefaultUIFactory;-><init>(Lcom/miui/video/common/feed/IUIRecyclerCreateListener;)V

    invoke-virtual {v0, v2}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->addUIFactory(Lcom/miui/video/common/feed/recyclerview/IUIFactory;)V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->infoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    sget v2, Lcom/miui/video/biz/group/pgc/R$id;->vo_action_id_subscribe_author_btn_click:I

    new-instance v3, Lcom/miui/video/biz/pgc/activity/-$$Lambda$AuthorDetailsActivity$DMz5FkwjRT_HaO0aOK-pY5JbZNI;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/pgc/activity/-$$Lambda$AuthorDetailsActivity$DMz5FkwjRT_HaO0aOK-pY5JbZNI;-><init>(Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->registerActionDelegate(ILcom/miui/video/common/feed/architeture/action/ActionListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->infoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    sget v2, Lcom/miui/video/biz/group/pgc/R$id;->vo_action_id_subscribe_filter_btn_click:I

    new-instance v3, Lcom/miui/video/biz/pgc/activity/-$$Lambda$AuthorDetailsActivity$O1U8DQ5oM94V2oDxxQJpRc_-hv0;

    invoke-direct {v3, p0, v1}, Lcom/miui/video/biz/pgc/activity/-$$Lambda$AuthorDetailsActivity$O1U8DQ5oM94V2oDxxQJpRc_-hv0;-><init>(Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;Lcom/miui/video/biz/pgc/data/AuthorDataSource;)V

    invoke-virtual {v0, v2, v3}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->registerActionDelegate(ILcom/miui/video/common/feed/architeture/action/ActionListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->infoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->init()V

    return-void
.end method

.method private initTitleBar(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->titleBar:Lcom/miui/video/service/widget/ui/UITitleBar;

    sget v1, Lcom/miui/video/biz/group/pgc/R$drawable;->ic_action_bar_back_white:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget p1, Lcom/miui/video/biz/group/pgc/R$string;->subscriptions:I

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    move-object v3, p1

    sget v4, Lcom/miui/video/biz/group/pgc/R$dimen;->sp_16:I

    sget v5, Lcom/miui/video/biz/group/pgc/R$color;->c_white:I

    const/4 v6, 0x0

    new-instance v7, Lcom/miui/video/biz/pgc/activity/-$$Lambda$AuthorDetailsActivity$4kbdYYi5AwnYKehuCHOzfMLoL7s;

    invoke-direct {v7, p0}, Lcom/miui/video/biz/pgc/activity/-$$Lambda$AuthorDetailsActivity$4kbdYYi5AwnYKehuCHOzfMLoL7s;-><init>(Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;)V

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/miui/video/service/widget/ui/UITitleBar;->setLeftView(IILjava/lang/String;IIILandroid/view/View$OnClickListener;)Lcom/miui/video/service/widget/ui/UITitleBar;

    return-void
.end method

.method public static synthetic lambda$initInfoStream$22(Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;Landroid/content/Context;ILandroid/view/ViewGroup;I)Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
    .locals 1

    const/16 v0, 0x4c

    if-ne p2, v0, :cond_0

    new-instance p2, Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;

    invoke-direct {p2, p1, p3, p4, p0}, Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/miui/video/biz/pgc/ui/AuthorDetailsView$OnThemeColorChangeListener;)V

    return-object p2

    :cond_0
    const/16 v0, 0x4d

    if-ne p2, v0, :cond_1

    new-instance p2, Lcom/miui/video/biz/pgc/ui/AuthorFilterView;

    sget v0, Lcom/miui/video/biz/group/pgc/R$id;->v_filter:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p2, p1, p3, p4, v0}, Lcom/miui/video/biz/pgc/ui/AuthorFilterView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ILandroid/view/View;)V

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic lambda$initInfoStream$23(Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;Landroid/content/Context;ILjava/lang/Object;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 0

    invoke-static {}, Lcom/miui/video/base/account/VideoMiAccountManager;->get()Lcom/miui/video/base/account/VideoMiAccountManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/base/account/VideoMiAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object p2

    if-nez p2, :cond_0

    new-instance p2, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity$4;

    invoke-direct {p2, p0, p3}, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity$4;-><init>(Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;Ljava/lang/Object;)V

    invoke-virtual {p1, p0, p2}, Lcom/miui/video/base/account/VideoMiAccountManager;->login(Landroid/app/Activity;Lcom/miui/video/base/account/VideoMiAccountManager$LoginCallback;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->presenter:Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;

    check-cast p3, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    iget-object p2, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;->subscriptionAuthor(Lcom/miui/video/framework/base/ui/BaseUIEntity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$initInfoStream$24(Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;Lcom/miui/video/biz/pgc/data/AuthorDataSource;Landroid/content/Context;ILjava/lang/Object;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 0

    iget-object p2, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->listView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/UIRecyclerListView;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    const/4 p5, 0x2

    invoke-interface {p2, p5, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->clear()V

    const/4 p3, 0x1

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_id()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    invoke-virtual {p3, p5}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setSelected(I)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->listView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/UIRecyclerListView;->notifyDataSetChanged()V

    iget-object p2, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->listView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/UIRecyclerListView;->showListLoadingBar()V

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p4}, Lcom/miui/video/biz/pgc/data/AuthorDataSource;->setFilter(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->infoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    sget-object p2, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;->REFRESH_INIT:Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    invoke-virtual {p1, p2}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->forceRefreshInBackground(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V

    return-void
.end method

.method public static synthetic lambda$initTitleBar$21(Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;
    .locals 1

    new-instance v0, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;

    invoke-direct {v0}, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->presenter:Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;

    iget-object v0, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->presenter:Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/miui/video/common/library/base/impl/IPresenter;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->createPresenter()Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;

    move-result-object v0

    return-object v0
.end method

.method public onChange(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->titleBar:Lcom/miui/video/service/widget/ui/UITitleBar;

    invoke-virtual {v0, p1}, Lcom/miui/video/service/widget/ui/UITitleBar;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setTranslucentStatus(Landroid/content/Context;Z)V

    invoke-static {p0, p1}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setStatusBarDarkMode(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/group/pgc/R$color;->c_blue_text_0C80FF:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    sget v0, Lcom/miui/video/biz/group/pgc/R$string;->data_empty:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->finish()V

    return-void

    :cond_0
    const-string v0, "item_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->mUserId:Ljava/lang/String;

    const-string v0, "source"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->source:Ljava/lang/String;

    sget p1, Lcom/miui/video/biz/group/pgc/R$id;->ui_title_bar:I

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/video/service/widget/ui/UITitleBar;

    iput-object p1, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->titleBar:Lcom/miui/video/service/widget/ui/UITitleBar;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->initTitleBar(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->initInfoStream()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->infoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->onDestory()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->onPause()V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->infoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->onPause()V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 3

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "module"

    const-string v1, "author_page"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "event"

    const-string v1, "author_page_expose"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "source"

    iget-object v1, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->source:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_id"

    iget-object v2, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->mUserId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {p0, p1, v0, v1}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->onResume()V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->infoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->onResume()V

    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/group/pgc/R$layout;->activity_author:I

    return v0
.end method

.method public subscribeResult(ZLjava/lang/Throwable;ZLjava/lang/String;)V
    .locals 2

    if-nez p1, :cond_1

    instance-of p1, p2, Ljava/net/UnknownHostException;

    if-eqz p1, :cond_0

    sget p1, Lcom/miui/video/biz/group/pgc/R$string;->t_network_error:I

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    return-void

    :cond_1
    const-string p1, "author_details_page"

    invoke-static {p0, p3, p4, p1}, Lcom/miui/video/base/routers/pgc/PgcUtil;->subscribeAuthorTrack(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->listView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->getData()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p1, p2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setSubscribe_status(I)V

    const-wide/16 v0, 0x1

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSubscribeCount()J

    move-result-wide p2

    const/4 p4, 0x0

    add-long/2addr p2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSubscribeCount()J

    move-result-wide p2

    const/4 p4, 0x0

    sub-long/2addr p2, v0

    :goto_1
    invoke-virtual {p1, p2, p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setSubscribeCount(J)V

    iget-object p1, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->listView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public tackerPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "author_page"

    return-object v0
.end method
