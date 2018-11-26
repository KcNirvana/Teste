.class public Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;
.super Lcom/miui/networkassistant/ui/base/PinnedListFragment;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter$AppSelectionAdapterListener;


# static fields
.field private static final TITLE_FILED:I = 0x7f07024c


# instance fields
.field private mAllowCount:I

.field private mAppUpdateMap:Ljava/util/Map;

.field private mBgPolicyService:Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

.field private mFilterAppsList:Ljava/util/ArrayList;

.field private mHeadView:Landroid/view/View;

.field private mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

.field private mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mRestrictAppList:Ljava/util/ArrayList;

.field private mRestrictCount:I

.field private mSearchActionModeCallback:Lmiui/view/SearchActionMode$Callback;

.field private mSearchInputView:Landroid/widget/TextView;

.field private mSearchTextWatcher:Landroid/text/TextWatcher;

.field private mSearchView:Landroid/view/View;

.field private mSortedType:I


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    return-object v0
.end method

.method static synthetic -get10(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mSortedType:I

    return v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAllowCount:I

    return v0
.end method

.method static synthetic -get3(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAppUpdateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get4(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)Lcom/miui/common/expandableview/PinnedHeaderListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mList:Lcom/miui/common/expandableview/PinnedHeaderListView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    return-object v0
.end method

.method static synthetic -get6(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mRestrictCount:I

    return v0
.end method

.method static synthetic -get7(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)Lmiui/view/SearchActionMode$Callback;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mSearchActionModeCallback:Lmiui/view/SearchActionMode$Callback;

    return-object v0
.end method

.method static synthetic -get8(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)Landroid/text/TextWatcher;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mSearchTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic -get9(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mSearchView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mFilterAppsList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->applyData()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;Lcom/miui/common/a/b/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->postOnUiThread(Lcom/miui/common/a/b/b;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->updateHeaderGroup(II)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->updateSearchResult(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/PinnedListFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mSortedType:I

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mSearchActionModeCallback:Lmiui/view/SearchActionMode$Callback;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$3;-><init>(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mSearchTextWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$4;-><init>(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    return-void
.end method

.method private applyData()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mFilterAppsList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mRestrictAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mFilterAppsList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/AppInfo;

    iget-object v3, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {v4}, Lcom/miui/common/b/f;->aHX(I)I

    move-result v4

    const/16 v5, 0x2710

    if-lt v4, v5, :cond_1

    invoke-static {v3}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isPrePolicyPackage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lcom/miui/networkassistant/model/WhiteListItem;

    invoke-direct {v4}, Lcom/miui/networkassistant/model/WhiteListItem;-><init>()V

    iget-object v5, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAppContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-static {v5, v6}, Lcom/miui/networkassistant/utils/LabelLoadHelper;->loadLabel(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/networkassistant/model/WhiteListItem;->setAppLabel(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/miui/networkassistant/model/WhiteListItem;->setPkgName(Ljava/lang/String;)V

    iget v5, v0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-virtual {v4, v5}, Lcom/miui/networkassistant/model/WhiteListItem;->setUid(I)V

    iget-object v5, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mBgPolicyService:Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

    iget v0, v0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-virtual {v5, v3, v0}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->isAppRestrictBackground(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v4, v7}, Lcom/miui/networkassistant/model/WhiteListItem;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mRestrictAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v8}, Lcom/miui/networkassistant/model/WhiteListItem;->setEnabled(Z)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAppUpdateMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mRestrictAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mRestrictAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mRestrictCount:I

    new-instance v0, Lcom/miui/networkassistant/model/WhiteGroupHeader;

    invoke-direct {v0}, Lcom/miui/networkassistant/model/WhiteGroupHeader;-><init>()V

    sget-object v2, Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;->ENABLED:Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/model/WhiteGroupHeader;->setGroupHeaderType(Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mRestrictCount:I

    new-array v4, v8, [Ljava/lang/Object;

    iget v5, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mRestrictCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const v5, 0x7f0c000a

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/model/WhiteGroupHeader;->setHeaderTitle(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAppUpdateMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mRestrictAppList:Ljava/util/ArrayList;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAllowCount:I

    new-instance v0, Lcom/miui/networkassistant/model/WhiteGroupHeader;

    invoke-direct {v0}, Lcom/miui/networkassistant/model/WhiteGroupHeader;-><init>()V

    sget-object v2, Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;->DISABLED:Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/model/WhiteGroupHeader;->setGroupHeaderType(Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAllowCount:I

    new-array v4, v8, [Ljava/lang/Object;

    iget v5, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAllowCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const v5, 0x7f0c0009

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/model/WhiteGroupHeader;->setHeaderTitle(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAppUpdateMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAppUpdateMap:Ljava/util/Map;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mSortedType:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->updateData(Ljava/util/Map;I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    invoke-virtual {v0, p0}, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->setOnSelectionListener(Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter$AppSelectionAdapterListener;)V

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mRestrictCount:I

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAllowCount:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mSearchInputView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const v4, 0x7f0c000d

    invoke-virtual {v2, v4, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private registerMonitorCenter()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->registerLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V

    return-void
.end method

.method private setBgNetworkAllow(Lcom/miui/networkassistant/model/WhiteListItem;Z)V
    .locals 3

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/model/WhiteListItem;->setEnabled(Z)V

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mRestrictCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mRestrictCount:I

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAllowCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAllowCount:I

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mBgPolicyService:Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/WhiteListItem;->getUid()I

    move-result v1

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->setAppRestrictBackground(IZ)V

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mRestrictCount:I

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAllowCount:I

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->updateHeaderGroup(II)V

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mRestrictCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mRestrictCount:I

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAllowCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAllowCount:I

    goto :goto_0
.end method

.method private unRegisterMonitorCenter()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->unRegisterLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V

    :cond_0
    return-void
.end method

.method private updateHeaderGroup(II)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    sget-object v1, Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;->ENABLED:Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0c000a

    invoke-virtual {v2, v4, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->setHeaderTitle(Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    sget-object v1, Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;->DISABLED:Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0c0009

    invoke-virtual {v2, v4, p2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->setHeaderTitle(Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateSearchResult(Ljava/lang/String;)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAppUpdateMap:Ljava/util/Map;

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

    iget-object v5, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAppUpdateMap:Ljava/util/Map;

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

    invoke-direct {p0, v2, v0}, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->updateSearchResultGroupHeader(Lcom/miui/networkassistant/model/WhiteGroupHeader;I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->setSearchInput(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    invoke-virtual {v0, p0}, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->setOnSelectionListener(Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter$AppSelectionAdapterListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->updateData(Ljava/util/Map;I)V

    return-void
.end method

.method private updateSearchResultGroupHeader(Lcom/miui/networkassistant/model/WhiteGroupHeader;I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAppContext:Landroid/content/Context;

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

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mBgPolicyService:Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mRestrictAppList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mHeadView:Landroid/view/View;

    const v1, 0x7f0a025c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mSearchView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mSearchView:Landroid/view/View;

    const v1, 0x1020009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mSearchInputView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mSearchView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->registerMonitorCenter()V

    return-void
.end method

.method public onAppSelected(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 0

    check-cast p2, Lcom/miui/networkassistant/model/WhiteListItem;

    invoke-direct {p0, p2, p3}, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->setBgNetworkAllow(Lcom/miui/networkassistant/model/WhiteListItem;Z)V

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

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mHeadView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mHeadView:Landroid/view/View;

    return-object v0
.end method

.method protected onCreateListAdapter()Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;
    .locals 2

    new-instance v0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onCustomizeActionBar(Landroid/app/ActionBar;)I
    .locals 4

    const/16 v0, 0x10

    const/4 v3, -0x2

    invoke-virtual {p1, v0, v0}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f07021a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    sget v1, Lmiui/R$drawable;->icon_info_light:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$5;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$5;-><init>(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    const v2, 0x800015

    invoke-direct {v1, v3, v3, v2}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->unRegisterMonitorCenter()V

    return-void
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f07024c

    return v0
.end method
