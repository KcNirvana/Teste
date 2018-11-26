.class public abstract Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;
.super Lcom/miui/common/a/a/k;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;


# static fields
.field private static final MSG_FIREWALL_APP_LIST_UPDATED:I = 0x2

.field private static final MSG_FIREWALL_SERVICE_CONNECTED:I = 0x1


# instance fields
.field protected mAdapter:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

.field protected mAppList:Ljava/util/ArrayList;

.field protected mAppMonitorWrapper:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

.field private mConn:Landroid/content/ServiceConnection;

.field protected mContainerLayout:Landroid/view/View;

.field protected mEmptyView:Landroid/widget/TextView;

.field protected mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

.field private mFirewallObserver:Landroid/database/ContentObserver;

.field private mFirewallServiceConnected:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsInSearch:Z

.field protected mList:Landroid/widget/ListView;

.field protected mSearchActionMode:Lmiui/view/SearchActionMode;

.field private mSearchActionModeCallback:Lmiui/view/SearchActionMode$Callback;

.field protected mSearchInputView:Landroid/widget/TextView;

.field private mSearchTextWatcher:Landroid/text/TextWatcher;

.field protected mSearchView:Landroid/view/View;

.field private onSearchViewClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;)Landroid/text/TextWatcher;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mSearchTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mFirewallServiceConnected:Z

    return p1
.end method

.method static synthetic -set1(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mIsInSearch:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->applyData()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/common/a/a/k;-><init>()V

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->onSearchViewClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mSearchActionModeCallback:Lmiui/view/SearchActionMode$Callback;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$3;-><init>(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mSearchTextWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$4;-><init>(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$5;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$5;-><init>(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mFirewallObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$6;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$6;-><init>(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method private declared-synchronized applyData()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$LoadDataAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$LoadDataAsyncTask;-><init>(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$LoadDataAsyncTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$LoadDataAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private registerFirewallContentObserver()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mFirewallObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lmiui/provider/ExtraNetwork;->registerFirewallContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private registerFirewallService()V
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/miui/networkassistant/service/FirewallService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mConn:Landroid/content/ServiceConnection;

    invoke-static {}, Lcom/miui/common/b/f;->aHT()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v4, v3}, Lcom/miui/common/b/n;->aIK(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)V

    return-void
.end method

.method private unRegisterFirewallContentObserver()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mFirewallObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lmiui/provider/ExtraNetwork;->unRegisterFirewallContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private unRegisterFirewallService()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mFirewallServiceConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected exitSearchMode()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mSearchActionMode:Lmiui/view/SearchActionMode;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mSearchActionMode:Lmiui/view/SearchActionMode;

    :cond_0
    return-void
.end method

.method protected getAppList()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAppMonitorWrapper:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getNonSystemAppList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getGroupChangeToRule(II)Lcom/miui/networkassistant/model/FirewallRule;
    .locals 1

    if-ne p1, p2, :cond_0

    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    return-object v0

    :cond_1
    div-int/lit8 v0, p1, 0x2

    if-le p2, v0, :cond_2

    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    return-object v0

    :cond_2
    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    return-object v0
.end method

.method protected getGroupHeadImageSource(II)I
    .locals 2

    const v1, 0x7f0200ff

    if-nez p1, :cond_0

    return v1

    :cond_0
    if-ne p1, p2, :cond_1

    const v0, 0x7f0200fc

    return v0

    :cond_1
    if-nez p2, :cond_2

    const v0, 0x7f0200fe

    return v0

    :cond_2
    div-int/lit8 v0, p1, 0x2

    if-le p2, v0, :cond_3

    const v0, 0x7f0200fd

    return v0

    :cond_3
    return v1
.end method

.method protected getHeadViewDesp(II)Ljava/lang/String;
    .locals 2

    const v0, 0x7f0703d8

    if-ne p1, p2, :cond_1

    const v0, 0x7f0703d7

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-nez p2, :cond_0

    const v0, 0x7f0703d6

    goto :goto_0
.end method

.method public hideLoadingView()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/a/a/k;->hideLoadingView()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method public isSearchMode()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mSearchActionMode:Lmiui/view/SearchActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAppListUpdated()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->isAttatched()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method protected abstract onCreateListAdapter()Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;
.end method

.method protected abstract onCreateListTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected onCreateSearchView(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method protected onCreateView2(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 3

    const v0, 0x7f0a01bf

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x7f030191

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    const v0, 0x7f0a0280

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->onCreateListTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    const v0, 0x7f0a027f

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mContainerLayout:Landroid/view/View;

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mList:Landroid/widget/ListView;

    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mEmptyView:Landroid/widget/TextView;

    const v0, 0x7f0a025c

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mSearchView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mSearchView:Landroid/view/View;

    const v1, 0x1020009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mSearchInputView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mSearchView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->onSearchViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->onCreateListAdapter()Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAppMonitorWrapper:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAppMonitorWrapper:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    invoke-virtual {v0, p0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->registerLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->registerFirewallContentObserver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->registerFirewallService()V

    return-void
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f0300e2

    return v0
.end method

.method protected onCustomizeActionBar(Landroid/app/ActionBar;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/a/a/k;->onDestroy()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAppMonitorWrapper:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    invoke-virtual {v0, p0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->unRegisterLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->unRegisterFirewallContentObserver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->unRegisterFirewallService()V

    return-void
.end method

.method protected onDestroySearchView(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method protected onFirewallServiceConnected()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/miui/common/a/a/k;->onPause()V

    invoke-static {}, Lcom/miui/analytics/AnalyticsUtil;->recordPageEnd()V

    return-void
.end method

.method protected abstract onPostLoadDataTask()V
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/a/a/k;->onResume()V

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mIsInSearch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->notifyDataSetChanged()V

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/AnalyticsUtil;->recordPageStart(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->applyData()V

    goto :goto_0
.end method

.method public setEmptyText(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showEmptyView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mEmptyView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showLoadingView()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/a/a/k;->showLoadingView()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showLoadingView(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/a/a/k;->showLoadingView(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected startSearchMode()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/app/Activity;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mSearchActionModeCallback:Lmiui/view/SearchActionMode$Callback;

    invoke-virtual {v0, v1}, Lmiui/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    check-cast v0, Lmiui/view/SearchActionMode;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mSearchActionMode:Lmiui/view/SearchActionMode;

    :cond_0
    return-void
.end method

.method protected updateSearchResult(Ljava/lang/String;)V
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAppList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAppList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/AppInfo;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAppContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Lcom/miui/networkassistant/utils/LabelLoadHelper;->loadLabel(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f070220

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->setEmptyText(I)V

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->setSearchInput(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->setData(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected updateView()V
    .locals 0

    return-void
.end method
