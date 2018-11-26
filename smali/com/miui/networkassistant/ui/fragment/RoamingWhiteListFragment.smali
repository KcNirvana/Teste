.class public Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;
.super Lcom/miui/networkassistant/ui/base/PinnedListFragment;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter$AppSelectionAdapterListener;


# static fields
.field private static final MSG_FIREWALL_SERVICE_CONNECTED:I = 0x0

.field private static final MSG_MONITOR_CENTER_CONNECTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RoamingFragment"

.field private static final TITLE_FILED:I = 0x7f07032c

.field private static final mMiServicePackage:Ljava/lang/String; = "com.xiaomi.xmsf"

.field private static mRelatedMIServiceAppsList:Ljava/util/List;


# instance fields
.field private mAllNetworkAccessedApps:Ljava/util/ArrayList;

.field private mAppDependTipDialog:Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;

.field private mAppDependTipListener:Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;

.field private mAppUpdateMap:Ljava/util/Map;

.field private mConn:Landroid/content/ServiceConnection;

.field private mDataInited:Z

.field private mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

.field private mHandler:Landroid/os/Handler;

.field private mHeadView:Landroid/view/View;

.field private mMiServiceListItem:Lcom/miui/networkassistant/model/WhiteListItem;

.field private mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

.field private mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

.field private mNoWhiteAppCount:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSearchActionModeCallback:Lmiui/view/SearchActionMode$Callback;

.field private mSearchInputView:Landroid/widget/TextView;

.field private mSearchTextWatcher:Landroid/text/TextWatcher;

.field private mSearchView:Landroid/view/View;

.field private mServiceConnected:Z

.field private mSortedType:I

.field private mWhiteAppCount:I

.field private mWhiteListApps:Ljava/util/ArrayList;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAppUpdateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get10(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mSortedType:I

    return v0
.end method

.method static synthetic -get11(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mWhiteAppCount:I

    return v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)Lcom/miui/common/expandableview/PinnedHeaderListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mList:Lcom/miui/common/expandableview/PinnedHeaderListView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)Lcom/miui/networkassistant/model/WhiteListItem;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mMiServiceListItem:Lcom/miui/networkassistant/model/WhiteListItem;

    return-object v0
.end method

.method static synthetic -get5(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    return-object v0
.end method

.method static synthetic -get6(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mNoWhiteAppCount:I

    return v0
.end method

.method static synthetic -get7(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)Lmiui/view/SearchActionMode$Callback;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mSearchActionModeCallback:Lmiui/view/SearchActionMode$Callback;

    return-object v0
.end method

.method static synthetic -get8(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)Landroid/text/TextWatcher;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mSearchTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic -get9(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mSearchView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAllNetworkAccessedApps:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -set1(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;Lcom/miui/networkassistant/service/IFirewallBinder;)Lcom/miui/networkassistant/service/IFirewallBinder;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    return-object p1
.end method

.method static synthetic -set2(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mServiceConnected:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->applyData()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->initViewDelay()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;Lcom/miui/networkassistant/model/WhiteListItem;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->setWhiteList(Lcom/miui/networkassistant/model/WhiteListItem;Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->updateHeaderGroup(II)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->updateSearchResult(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mRelatedMIServiceAppsList:Ljava/util/List;

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mRelatedMIServiceAppsList:Ljava/util/List;

    const-string/jumbo v1, "com.miui.cloudservice"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mRelatedMIServiceAppsList:Ljava/util/List;

    const-string/jumbo v1, "com.android.mms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mRelatedMIServiceAppsList:Ljava/util/List;

    const-string/jumbo v1, "com.xiaomi.channel"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/PinnedListFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mSortedType:I

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mSearchActionModeCallback:Lmiui/view/SearchActionMode$Callback;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mSearchTextWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$3;-><init>(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$4;-><init>(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mConn:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$5;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$5;-><init>(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$6;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$6;-><init>(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$7;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$7;-><init>(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAppDependTipListener:Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;

    return-void
.end method

.method private addRelatedApp(Lcom/miui/networkassistant/model/WhiteListItem;)V
    .locals 2

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mRelatedMIServiceAppsList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/WhiteListItem;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->isContainMiService()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/WhiteListItem;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->buildAppsDependDialog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private applyData()V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mDataInited:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAllNetworkAccessedApps:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    if-eqz v0, :cond_6

    iput-boolean v8, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mDataInited:Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mWhiteListApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAllNetworkAccessedApps:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/AppInfo;

    iget-object v5, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isPreFirewallWhiteListPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/miui/networkassistant/model/WhiteListItem;

    invoke-direct {v5}, Lcom/miui/networkassistant/model/WhiteListItem;-><init>()V

    iget-object v6, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAppContext:Landroid/content/Context;

    iget-object v7, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-static {v6, v7}, Lcom/miui/networkassistant/utils/LabelLoadHelper;->loadLabel(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/networkassistant/model/WhiteListItem;->setAppLabel(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/networkassistant/model/WhiteListItem;->setPkgName(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    iget-object v6, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "com.xiaomi.xmsf"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iput-object v5, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mMiServiceListItem:Lcom/miui/networkassistant/model/WhiteListItem;

    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    iget-object v0, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lcom/miui/networkassistant/service/IFirewallBinder;->getRoamingRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v0

    sget-object v6, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v0, v6, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/miui/networkassistant/model/WhiteListItem;->setEnabled(Z)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    move v0, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/miui/networkassistant/model/WhiteListItem;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mWhiteListApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v5, "RoamingFragment"

    const-string/jumbo v6, "firewall get roaming rule"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAppUpdateMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mWhiteListApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mWhiteListApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mWhiteAppCount:I

    new-instance v0, Lcom/miui/networkassistant/model/WhiteGroupHeader;

    invoke-direct {v0}, Lcom/miui/networkassistant/model/WhiteGroupHeader;-><init>()V

    sget-object v4, Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;->ENABLED:Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;

    invoke-virtual {v0, v4}, Lcom/miui/networkassistant/model/WhiteGroupHeader;->setGroupHeaderType(Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;)V

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mWhiteAppCount:I

    new-array v6, v8, [Ljava/lang/Object;

    iget v7, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mWhiteAppCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const v7, 0x7f0c000e

    invoke-virtual {v4, v7, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/miui/networkassistant/model/WhiteGroupHeader;->setHeaderTitle(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAppUpdateMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mWhiteListApps:Ljava/util/ArrayList;

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mNoWhiteAppCount:I

    new-instance v0, Lcom/miui/networkassistant/model/WhiteGroupHeader;

    invoke-direct {v0}, Lcom/miui/networkassistant/model/WhiteGroupHeader;-><init>()V

    sget-object v4, Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;->DISABLED:Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;

    invoke-virtual {v0, v4}, Lcom/miui/networkassistant/model/WhiteGroupHeader;->setGroupHeaderType(Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;)V

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mNoWhiteAppCount:I

    new-array v6, v8, [Ljava/lang/Object;

    iget v7, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mNoWhiteAppCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const v7, 0x7f0c000f

    invoke-virtual {v4, v7, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/miui/networkassistant/model/WhiteGroupHeader;->setHeaderTitle(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAppUpdateMap:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAppUpdateMap:Ljava/util/Map;

    iget v4, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mSortedType:I

    invoke-virtual {v0, v3, v4}, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->updateData(Ljava/util/Map;I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    invoke-virtual {v0, p0}, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->setOnSelectionListener(Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter$AppSelectionAdapterListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mSearchInputView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const v2, 0x7f0c000d

    invoke-virtual {v3, v2, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->hideLoadingView()V

    :cond_6
    return-void
.end method

.method private bindFirewallService()V
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/miui/networkassistant/service/FirewallService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mConn:Landroid/content/ServiceConnection;

    invoke-static {}, Lcom/miui/common/b/f;->aHT()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v4, v3}, Lcom/miui/common/b/n;->aIK(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method private buildAppsDependDialog(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAppContext:Landroid/content/Context;

    const v1, 0x7f070336

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/miui/networkassistant/utils/PackageUtil;->getLableByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAppContext:Landroid/content/Context;

    const v3, 0x7f070337

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAppDependTipDialog:Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;

    invoke-virtual {v2, v0, v1}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initViewDelay()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelOpenRoamingWhiteListNotify(Landroid/content/Context;)V

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAppDependTipListener:Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAppDependTipDialog:Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mWhiteListApps:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mHeadView:Landroid/view/View;

    const v1, 0x7f0a025c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mSearchView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mSearchView:Landroid/view/View;

    const v1, 0x1020009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mSearchInputView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mSearchView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->registerMonitorCenter()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->bindFirewallService()V

    return-void
.end method

.method private isContainMiService()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mWhiteListApps:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/WhiteListItem;

    const-string/jumbo v2, "com.xiaomi.xmsf"

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/WhiteListItem;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private registerMonitorCenter()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->registerLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V

    return-void
.end method

.method private setWhiteList(Lcom/miui/networkassistant/model/WhiteListItem;Z)V
    .locals 3

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/model/WhiteListItem;->setEnabled(Z)V

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mWhiteAppCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mWhiteAppCount:I

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mNoWhiteAppCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mNoWhiteAppCount:I

    :goto_0
    if-eqz p2, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/WhiteListItem;->getPkgName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-interface {v0, v1, v2}, Lcom/miui/networkassistant/service/IFirewallBinder;->setRoamingRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mWhiteAppCount:I

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mNoWhiteAppCount:I

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->updateHeaderGroup(II)V

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mWhiteAppCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mWhiteAppCount:I

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mNoWhiteAppCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mNoWhiteAppCount:I

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/WhiteListItem;->getPkgName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-interface {v0, v1, v2}, Lcom/miui/networkassistant/service/IFirewallBinder;->setRoamingRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RoamingFragment"

    const-string/jumbo v2, "firewall set roaming rule"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private unBindFirewallService()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mServiceConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v2, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mConn:Landroid/content/ServiceConnection;

    :cond_0
    return-void
.end method

.method private unRegisterMonitorCenter()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->unRegisterLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V

    :cond_0
    return-void
.end method

.method private updateHeaderGroup(II)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    sget-object v1, Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;->ENABLED:Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0c000e

    invoke-virtual {v2, v4, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->setHeaderTitle(Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    sget-object v1, Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;->DISABLED:Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0c000f

    invoke-virtual {v2, v4, p2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->setHeaderTitle(Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateSearchResult(Ljava/lang/String;)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAppUpdateMap:Ljava/util/Map;

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

    iget-object v5, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAppUpdateMap:Ljava/util/Map;

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

    invoke-direct {p0, v2, v0}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->updateSearchResultGroupHeader(Lcom/miui/networkassistant/model/WhiteGroupHeader;I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->setSearchInput(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    invoke-virtual {v0, p0}, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->setOnSelectionListener(Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter$AppSelectionAdapterListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->updateData(Ljava/util/Map;I)V

    return-void
.end method

.method private updateSearchResultGroupHeader(Lcom/miui/networkassistant/model/WhiteGroupHeader;I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAppContext:Landroid/content/Context;

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
    .locals 1

    const v0, 0x7f07022c

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->setLoadingText(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->showLoadingView(Z)V

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$8;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$8;-><init>(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)V

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->postOnIdleUiThread(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method public onAppSelected(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 0

    check-cast p2, Lcom/miui/networkassistant/model/WhiteListItem;

    invoke-direct {p0, p2, p3}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->setWhiteList(Lcom/miui/networkassistant/model/WhiteListItem;Z)V

    if-eqz p3, :cond_0

    invoke-direct {p0, p2}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->addRelatedApp(Lcom/miui/networkassistant/model/WhiteListItem;)V

    :cond_0
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

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mHeadView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mHeadView:Landroid/view/View;

    return-object v0
.end method

.method protected onCreateListAdapter()Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;
    .locals 2

    new-instance v0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onCustomizeActionBar(Landroid/app/ActionBar;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->unRegisterMonitorCenter()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->unBindFirewallService()V

    return-void
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f07032c

    return v0
.end method
