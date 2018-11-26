.class public Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;
.super Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;
.implements Lcom/miui/networkassistant/ui/view/FirewallRuleView$OnRuleChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mSimHeadImageView:Landroid/widget/ImageView;

.field private mSimHeadLayout:Landroid/view/View;

.field private mSimRestrictedCount:I

.field private mTotalCount:I


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->onWifiHeadClicked()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->toggleAllAppsWifiRule()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;-><init>()V

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private onWifiHeadClicked()V
    .locals 7

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mTotalCount:I

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mSimRestrictedCount:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->getGroupChangeToRule(II)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v0

    sget-object v1, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->toggleAllAppsWifiRule()V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f070225

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070226

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07022a

    invoke-virtual {p0, v2}, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f070229

    invoke-virtual {p0, v3}, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;

    iget-object v5, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mActivity:Landroid/app/Activity;

    new-instance v6, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment$3;

    invoke-direct {v6, p0}, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment$3;-><init>(Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;)V

    invoke-direct {v4, v5, v6}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;)V

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setRuleCount()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mSimRestrictedCount:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mAppList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {v0}, Lcom/miui/networkassistant/service/IFirewallBinder;->getWifiRestrictPackages()Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mAppList:Ljava/util/ArrayList;

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

    iget-object v0, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mSimRestrictedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mSimRestrictedCount:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setRuleCount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method private setSearchListTitle(Z)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    const v0, 0x7f0a026a

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a026d

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private toggleAllAppsWifiRule()V
    .locals 4

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mTotalCount:I

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mSimRestrictedCount:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->getGroupChangeToRule(II)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mAppList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mAppList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/AppInfo;

    iget-object v0, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {v0, v2}, Lcom/miui/networkassistant/service/IFirewallBinder;->setWifiRuleForPackages(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->updateView()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->notifyDataSetChanged()V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onWifiHeadClicked"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private updateRuleHeadView(Lcom/miui/networkassistant/model/FirewallRule;)V
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mSimRestrictedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mSimRestrictedCount:I

    :goto_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->updateSimHeadView()V

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mSimRestrictedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mSimRestrictedCount:I

    goto :goto_0
.end method

.method private updateSimHeadView()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mSimHeadImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mTotalCount:I

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mSimRestrictedCount:I

    invoke-virtual {p0, v1, v2}, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->getGroupHeadImageSource(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mSimHeadImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mTotalCount:I

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mSimRestrictedCount:I

    invoke-virtual {p0, v1, v2}, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->getHeadViewDesp(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateWifiRuleView(Lcom/miui/networkassistant/ui/view/FirewallRuleView;Lcom/miui/networkassistant/model/FirewallRule;)V
    .locals 2

    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    const v0, 0x7f0703d4

    :goto_1
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p2}, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->updateRuleHeadView(Lcom/miui/networkassistant/model/FirewallRule;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const v0, 0x7f0703d5

    goto :goto_1
.end method


# virtual methods
.method protected initView()V
    .locals 2

    const v0, 0x7f070215

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->setEmptyText(I)V

    const v0, 0x7f0a026a

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mSimHeadLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mSimHeadLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a026b

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mSimHeadImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method protected onCreateListAdapter()Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;
    .locals 4

    new-instance v0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mAppList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/miui/networkassistant/service/IFirewallBinder;Lcom/miui/networkassistant/ui/view/FirewallRuleView$OnRuleChangedListener;)V

    return-object v0
.end method

.method protected onCreateListTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0300d6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateSearchView(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->setSearchListTitle(Z)V

    return-void
.end method

.method protected onDestroySearchView(Landroid/view/ActionMode;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->setSearchListTitle(Z)V

    return-void
.end method

.method protected onPostLoadDataTask()V
    .locals 6

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mTotalCount:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mSearchInputView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mTotalCount:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mTotalCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0c000d

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onRuleChanged(Lcom/miui/networkassistant/ui/view/FirewallRuleView;Lcom/miui/networkassistant/model/FirewallRule;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->updateWifiRuleView(Lcom/miui/networkassistant/ui/view/FirewallRuleView;Lcom/miui/networkassistant/model/FirewallRule;)V

    return-void
.end method

.method public onRuleChanging(Lcom/miui/networkassistant/ui/view/FirewallRuleView;Lcom/miui/networkassistant/model/FirewallRule;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/networkassistant/model/AppInfo;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/networkassistant/model/AppInfo;

    iget-object v0, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    :goto_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {v2, v1, v0}, Lcom/miui/networkassistant/service/IFirewallBinder;->setWifiRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)Z

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onRuleChanging:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected updateView()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->setRuleCount()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->updateSimHeadView()V

    return-void
.end method
