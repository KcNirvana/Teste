.class public Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;
.super Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/ui/view/FirewallRuleView$OnRuleChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TITLE_FILED:I = 0x7f070223


# instance fields
.field private mActiveSlotNum:I

.field private mIsDuCard:Z

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mSimTitleTextView:[Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->updateAppFireRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mSimTitleTextView:[Landroid/widget/TextView;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private buildRestrictAndroidTipDialog(Ljava/lang/String;I)V
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mAppContext:Landroid/content/Context;

    const v1, 0x7f07021a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f07021b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mActivity:Landroid/app/Activity;

    new-instance v4, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment$3;

    invoke-direct {v4, p0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment$3;-><init>(Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;Ljava/lang/String;I)V

    invoke-direct {v2, v3, v4}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;)V

    invoke-virtual {v2, v0, v1}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getCurrentOptSlot(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mActiveSlotNum:I

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x7f0a026f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getRoamingNetworkState()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mAppContext:Landroid/content/Context;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mActiveSlotNum:I

    invoke-static {v1, v2}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isNetworkRoaming(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getDataRoamingEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {v1}, Lcom/miui/networkassistant/service/IFirewallBinder;->getRoamingWhiteListEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    return v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isRoamingEnable"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private initViewDelay()V
    .locals 3

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mSimTitleTextView:[Landroid/widget/TextView;

    const v0, 0x7f0a0261

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mSimTitleTextView:[Landroid/widget/TextView;

    const v0, 0x7f0a0266

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->updateListTitleGroup()V

    const v0, 0x7f070216

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->setEmptyText(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private isRestrictAndroidSystemApp(Ljava/lang/String;I)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {v0, p1, p2}, Lcom/miui/networkassistant/service/IFirewallBinder;->getMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "android"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    sget-object v1, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isRestrictAndroidSystemApp"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private setDualCardData()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isDualSimInserted()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mIsDuCard:Z

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getCurrentMobileSlotNum()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mActiveSlotNum:I

    return-void
.end method

.method private showRoamingTipDialog()V
    .locals 7

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mAppContext:Landroid/content/Context;

    const v1, 0x7f07032d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f07032e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mAppContext:Landroid/content/Context;

    const v3, 0x1040009

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mAppContext:Landroid/content/Context;

    const v4, 0x7f07032f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;

    iget-object v5, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mActivity:Landroid/app/Activity;

    new-instance v6, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment$2;

    invoke-direct {v6, p0}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;)V

    invoke-direct {v4, v5, v6}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;)V

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateAppFireRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/networkassistant/service/IFirewallBinder;->setMobileRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setMobileRule"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateListTitleGroup()V
    .locals 4

    const/4 v2, 0x0

    const/16 v3, 0x8

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mIsDuCard:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mActiveSlotNum:I

    if-nez v0, :cond_1

    const v0, 0x7f0a0261

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mSimTitleTextView:[Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const v1, 0x7f070213

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a0262

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f0a0266

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mSimTitleTextView:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSearchInputView(I)V
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mSearchInputView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0c000d

    invoke-virtual {v1, v3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected getAppList()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mAppMonitorWrapper:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getSystemAppList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected initView()V
    .locals 1

    const v0, 0x7f07022c

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->setLoadingText(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->showLoadingView(Z)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->setDualCardData()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->initViewDelay()V

    return-void
.end method

.method protected onCreateListAdapter()Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;
    .locals 6

    new-instance v0, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mAppList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    const/4 v5, 0x1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/miui/networkassistant/service/IFirewallBinder;Lcom/miui/networkassistant/ui/view/FirewallRuleView$OnRuleChangedListener;Z)V

    return-object v0
.end method

.method protected onCreateListTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0300d5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onPostLoadDataTask()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mIsDuCard:Z

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mActiveSlotNum:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->setDualCardData(ZI)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->updateSearchInputView(I)V

    return-void
.end method

.method public onRuleChanged(Lcom/miui/networkassistant/ui/view/FirewallRuleView;Lcom/miui/networkassistant/model/FirewallRule;)V
    .locals 2

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/miui/networkassistant/model/AppInfo;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/miui/networkassistant/model/AppInfo;

    iget-object v0, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->getCurrentOptSlot(I)I

    move-result v1

    invoke-direct {p0, v0, p2, v1}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->updateAppFireRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;I)V

    :cond_0
    return-void
.end method

.method public onRuleChanging(Lcom/miui/networkassistant/ui/view/FirewallRuleView;Lcom/miui/networkassistant/model/FirewallRule;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/miui/networkassistant/model/AppInfo;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/miui/networkassistant/model/AppInfo;

    iget-object v0, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->getCurrentOptSlot(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->isRestrictAndroidSystemApp(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->buildRestrictAndroidTipDialog(Ljava/lang/String;I)V

    return v3

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->getRoamingNetworkState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mActiveSlotNum:I

    if-ne v1, v0, :cond_1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->showRoamingTipDialog()V

    :cond_1
    return v3

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f070223

    return v0
.end method
