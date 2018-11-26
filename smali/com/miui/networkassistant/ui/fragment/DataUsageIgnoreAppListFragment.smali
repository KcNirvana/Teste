.class public Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;
.super Lcom/miui/networkassistant/ui/base/PinnedListFragment;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter$AppSelectionAdapterListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DataUsageIgnoreFragment"

.field private static final TITLE_FILED:I = 0x7f070277


# instance fields
.field private mAllNetworkAccessedApps:Ljava/util/ArrayList;

.field private mAppUpdateMap:Ljava/util/Map;

.field private mConn:Landroid/content/ServiceConnection;

.field private mDataInited:Z

.field private mHeadView:Landroid/view/View;

.field private mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

.field private mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

.field private mNoWhiteAppCount:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSearchActionModeCallback:Lmiui/view/SearchActionMode$Callback;

.field private mSearchInputView:Landroid/widget/TextView;

.field private mSearchTextWatcher:Landroid/text/TextWatcher;

.field private mSearchView:Landroid/view/View;

.field protected mServiceConnected:Z

.field protected mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

.field protected mSlotNum:I

.field private mSortedType:I

.field protected mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

.field private mWhiteAppCount:I

.field private mWhiteListApps:Ljava/util/ArrayList;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    return-object v0
.end method

.method static synthetic -get10(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mSortedType:I

    return v0
.end method

.method static synthetic -get11(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mWhiteAppCount:I

    return v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mAppUpdateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get4(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)Lcom/miui/common/expandableview/PinnedHeaderListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mList:Lcom/miui/common/expandableview/PinnedHeaderListView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    return-object v0
.end method

.method static synthetic -get6(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mNoWhiteAppCount:I

    return v0
.end method

.method static synthetic -get7(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)Lmiui/view/SearchActionMode$Callback;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mSearchActionModeCallback:Lmiui/view/SearchActionMode$Callback;

    return-object v0
.end method

.method static synthetic -get8(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)Landroid/text/TextWatcher;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mSearchTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic -get9(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mSearchView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mAllNetworkAccessedApps:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->applyData()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;Lcom/miui/common/a/b/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->postOnUiThread(Lcom/miui/common/a/b/b;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->updateHeaderGroup(II)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->updateSearchResult(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/PinnedListFragment;-><init>()V

    iput v1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mSortedType:I

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mSearchActionModeCallback:Lmiui/view/SearchActionMode$Callback;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mSearchTextWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$3;-><init>(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$4;-><init>(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/networkassistant/config/SimUserInfo;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iput v1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mSlotNum:I

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$5;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$5;-><init>(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method private applyData()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mDataInited:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mAllNetworkAccessedApps:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mServiceConnected:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iput-boolean v6, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mDataInited:Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mWhiteListApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mAllNetworkAccessedApps:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/AppInfo;

    new-instance v3, Lcom/miui/networkassistant/model/WhiteListItem;

    invoke-direct {v3}, Lcom/miui/networkassistant/model/WhiteListItem;-><init>()V

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mAppContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-static {v4, v5}, Lcom/miui/networkassistant/utils/LabelLoadHelper;->loadLabel(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/networkassistant/model/WhiteListItem;->setAppLabel(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/networkassistant/model/WhiteListItem;->setPkgName(Ljava/lang/String;)V

    :try_start_0
    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget-object v0, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget v5, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mSlotNum:I

    invoke-interface {v4, v0, v5}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->isDataUsageIgnore(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/miui/networkassistant/model/WhiteListItem;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mWhiteListApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "DataUsageIgnoreFragment"

    const-string/jumbo v4, "isDataUsageIgnore"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v3, v0}, Lcom/miui/networkassistant/model/WhiteListItem;->setEnabled(Z)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mAppUpdateMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mWhiteListApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mWhiteListApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mWhiteAppCount:I

    new-instance v0, Lcom/miui/networkassistant/model/WhiteGroupHeader;

    invoke-direct {v0}, Lcom/miui/networkassistant/model/WhiteGroupHeader;-><init>()V

    sget-object v2, Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;->ENABLED:Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/model/WhiteGroupHeader;->setGroupHeaderType(Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mWhiteAppCount:I

    new-array v4, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mWhiteAppCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const v5, 0x7f0c0006

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/model/WhiteGroupHeader;->setHeaderTitle(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mAppUpdateMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mWhiteListApps:Ljava/util/ArrayList;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mNoWhiteAppCount:I

    new-instance v0, Lcom/miui/networkassistant/model/WhiteGroupHeader;

    invoke-direct {v0}, Lcom/miui/networkassistant/model/WhiteGroupHeader;-><init>()V

    sget-object v2, Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;->DISABLED:Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/model/WhiteGroupHeader;->setGroupHeaderType(Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mNoWhiteAppCount:I

    new-array v4, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mNoWhiteAppCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const v5, 0x7f0c0007

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/model/WhiteGroupHeader;->setHeaderTitle(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mAppUpdateMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mAppUpdateMap:Ljava/util/Map;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mSortedType:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->updateData(Ljava/util/Map;I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    invoke-virtual {v0, p0}, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->setOnSelectionListener(Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter$AppSelectionAdapterListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mSearchInputView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mAllNetworkAccessedApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mAllNetworkAccessedApps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const v4, 0x7f0c000d

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private bindTrafficManageService()V
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->getInstance()Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->bindTmService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private registerMonitorCenter()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->registerLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V

    return-void
.end method

.method private setDataUsageIgnore(Lcom/miui/networkassistant/model/WhiteListItem;Z)V
    .locals 3

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/model/WhiteListItem;->setEnabled(Z)V

    if-eqz p2, :cond_1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mWhiteAppCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mWhiteAppCount:I

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mNoWhiteAppCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mNoWhiteAppCount:I

    :goto_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mServiceConnected:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/WhiteListItem;->getPkgName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mSlotNum:I

    invoke-interface {v0, v1, p2, v2}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->setDataUsageIgnore(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mWhiteAppCount:I

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mNoWhiteAppCount:I

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->updateHeaderGroup(II)V

    return-void

    :cond_1
    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mWhiteAppCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mWhiteAppCount:I

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mNoWhiteAppCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mNoWhiteAppCount:I

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DataUsageIgnoreFragment"

    const-string/jumbo v2, "setDataUsageIgnore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private unRegisterMonitorCenter()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->unRegisterLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V

    :cond_0
    return-void
.end method

.method private unbindTrafficManageService()V
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->getInstance()Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->unbindTmService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private updateHeaderGroup(II)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    sget-object v1, Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;->ENABLED:Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0c0006

    invoke-virtual {v2, v4, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->setHeaderTitle(Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    sget-object v1, Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;->DISABLED:Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0c0007

    invoke-virtual {v2, v4, p2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->setHeaderTitle(Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateSearchResult(Ljava/lang/String;)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mAppUpdateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v2, Lcom/miui/networkassistant/model/WhiteGroupHeader;

    invoke-direct {v2}, Lcom/miui/networkassistant/model/WhiteGroupHeader;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/WhiteGroupHeader;

    iget-object v5, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mAppUpdateMap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/WhiteListItem;

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/WhiteListItem;->getAppLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->updateSearchResultGroupHeader(Lcom/miui/networkassistant/model/WhiteGroupHeader;I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->setSearchInput(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    invoke-virtual {v0, p0}, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->setOnSelectionListener(Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter$AppSelectionAdapterListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->updateData(Ljava/util/Map;I)V

    return-void
.end method

.method private updateSearchResultGroupHeader(Lcom/miui/networkassistant/model/WhiteGroupHeader;I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0c0010

    invoke-virtual {v0, v2, p2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/model/WhiteGroupHeader;->setHeaderTitle(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected initView()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mWhiteListApps:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mHeadView:Landroid/view/View;

    const v1, 0x7f0a025c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mSearchView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mSearchView:Landroid/view/View;

    const v1, 0x1020009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mSearchInputView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mSearchView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->bindTrafficManageService()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->registerMonitorCenter()V

    return-void
.end method

.method public onAppSelected(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 0

    check-cast p2, Lcom/miui/networkassistant/model/WhiteListItem;

    invoke-direct {p0, p2, p3}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->setDataUsageIgnore(Lcom/miui/networkassistant/model/WhiteListItem;Z)V

    return-void
.end method

.method protected onCreateFooterView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreateHeaderView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f030191

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mHeadView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mHeadView:Landroid/view/View;

    return-object v0
.end method

.method protected onCreateListAdapter()Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;
    .locals 2

    new-instance v0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onCustomizeActionBar(Landroid/app/ActionBar;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->onDestroy()V

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mServiceConnected:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mSlotNum:I

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->reloadIgnoreAppList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->unRegisterMonitorCenter()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->unbindTrafficManageService()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DataUsageIgnoreFragment"

    const-string/jumbo v2, "reloadIgnoreAppList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f070277

    return v0
.end method

.method protected resetTitle()V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$6;

    invoke-direct {v0, p0, p0}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$6;-><init>(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;Landroid/app/Fragment;)V

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->postOnUiThread(Lcom/miui/common/a/b/b;)V

    return-void
.end method
