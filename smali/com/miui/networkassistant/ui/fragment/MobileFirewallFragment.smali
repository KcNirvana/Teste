.class public Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;
.super Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/ui/view/FirewallRuleView$OnRuleChangedListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActiveSlotNum:I

.field private mIsDuCard:Z

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mSimHeadImageView:[Landroid/widget/ImageView;

.field private mSimHeadLayout:[Landroid/view/View;

.field private mSimRestrictedCount:[I

.field private mSimTitleTextView:[Landroid/widget/TextView;

.field private mTotalCount:I


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->toggleAllAppsMobileRule(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;-><init>()V

    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimHeadLayout:[Landroid/view/View;

    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimHeadImageView:[Landroid/widget/ImageView;

    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimTitleTextView:[Landroid/widget/TextView;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimRestrictedCount:[I

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private getCurrentOptSlot(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mActiveSlotNum:I

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
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mAppContext:Landroid/content/Context;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mActiveSlotNum:I

    invoke-static {v1, v2}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isNetworkRoaming(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getDataRoamingEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {v1}, Lcom/miui/networkassistant/service/IFirewallBinder;->getRoamingWhiteListEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    return v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isRoamingEnable"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private initViewDelay()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimHeadLayout:[Landroid/view/View;

    const v1, 0x7f0a025e

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimHeadLayout:[Landroid/view/View;

    const v1, 0x7f0a0263

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimHeadImageView:[Landroid/widget/ImageView;

    const v0, 0x7f0a025f

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimHeadImageView:[Landroid/widget/ImageView;

    const v0, 0x7f0a0264

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimTitleTextView:[Landroid/widget/TextView;

    const v0, 0x7f0a0261

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimTitleTextView:[Landroid/widget/TextView;

    const v0, 0x7f0a0266

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v3

    invoke-direct {p0, v2}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->updateListTitleGroup(Z)V

    const v0, 0x7f070216

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->setEmptyText(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private onSimHeadClick(I)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->getRoamingNetworkState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->onSimHeadClicked(I)V

    :cond_0
    return-void
.end method

.method private onSimHeadClicked(I)V
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mTotalCount:I

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimRestrictedCount:[I

    aget v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->getGroupChangeToRule(II)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v0

    sget-object v1, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->toggleAllAppsMobileRule(I)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mIsDuCard:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/utils/TextPrepareUtil;->getDualCardSuffix(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const v2, 0x7f070227

    invoke-virtual {p0, v2, v1}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const v0, 0x7f070228

    invoke-virtual {p0, v0, v2}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f07022a

    invoke-virtual {p0, v2}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f070229

    invoke-virtual {p0, v3}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;

    iget-object v5, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mActivity:Landroid/app/Activity;

    new-instance v6, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment$3;

    invoke-direct {v6, p0, p1}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment$3;-><init>(Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;I)V

    invoke-direct {v4, v5, v6}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;)V

    invoke-virtual {v4, v1, v0, v2, v3}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method private setDualCardSlot()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isDualSimInserted()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mIsDuCard:Z

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getCurrentMobileSlotNum()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mActiveSlotNum:I

    return-void
.end method

.method private setRuleCount()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mIsDuCard:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->setRuleCount(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->setRuleCount(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mActiveSlotNum:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->setRuleCount(I)V

    goto :goto_0
.end method

.method private setRuleCount(I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimRestrictedCount:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mAppList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/service/IFirewallBinder;->getMobileRestrictPackages(I)Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mAppList:Ljava/util/ArrayList;

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

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimRestrictedCount:[I

    aget v3, v0, p1

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getMobileRule"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method private showRoamingTipDialog()V
    .locals 7

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mAppContext:Landroid/content/Context;

    const v1, 0x7f07032d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f07032e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mAppContext:Landroid/content/Context;

    const v3, 0x1040009

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mAppContext:Landroid/content/Context;

    const v4, 0x7f07032f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;

    iget-object v5, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mActivity:Landroid/app/Activity;

    new-instance v6, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment$2;

    invoke-direct {v6, p0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;)V

    invoke-direct {v4, v5, v6}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;)V

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private toggleAllAppsMobileRule(I)V
    .locals 5

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mTotalCount:I

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimRestrictedCount:[I

    aget v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->getGroupChangeToRule(II)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mAppList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mAppList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/AppInfo;

    iget-object v0, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "icon_system_app"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {v0, v2, p1}, Lcom/miui/networkassistant/service/IFirewallBinder;->setMobileRuleForPackages(Ljava/util/Map;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->setRuleCount(I)V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->updateSimHeadView(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->notifyDataSetChanged()V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onMobileHeadClicked"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private updateListTitleGroup(Z)V
    .locals 7

    const v6, 0x7f0a0262

    const v5, 0x7f070213

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimHeadLayout:[Landroid/view/View;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimHeadLayout:[Landroid/view/View;

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimTitleTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimTitleTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mIsDuCard:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mActiveSlotNum:I

    if-nez v0, :cond_1

    const v0, 0x7f0a0261

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimTitleTextView:[Landroid/widget/TextView;

    aget-object v1, v1, v4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v6}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const v0, 0x7f0a0266

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimTitleTextView:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimHeadLayout:[Landroid/view/View;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimHeadLayout:[Landroid/view/View;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimTitleTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimTitleTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mIsDuCard:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimHeadLayout:[Landroid/view/View;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimHeadLayout:[Landroid/view/View;

    aget-object v0, v0, v4

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mActiveSlotNum:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimHeadLayout:[Landroid/view/View;

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimHeadLayout:[Landroid/view/View;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0260

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :goto_2
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v6}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimHeadLayout:[Landroid/view/View;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimHeadLayout:[Landroid/view/View;

    aget-object v0, v0, v4

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0265

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_2
.end method

.method private updateRuleHeadView(Lcom/miui/networkassistant/model/FirewallRule;I)V
    .locals 2

    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimRestrictedCount:[I

    aget v1, v0, p2

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p2

    :goto_0
    invoke-direct {p0, p2}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->updateSimHeadView(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimRestrictedCount:[I

    aget v1, v0, p2

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p2

    goto :goto_0
.end method

.method private updateSearchInputView()V
    .locals 6

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSearchInputView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mTotalCount:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mTotalCount:I

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

.method private updateSimHeadView(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimHeadImageView:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mTotalCount:I

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimRestrictedCount:[I

    aget v2, v2, p1

    invoke-virtual {p0, v1, v2}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->getGroupHeadImageSource(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimHeadImageView:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mTotalCount:I

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSimRestrictedCount:[I

    aget v2, v2, p1

    invoke-virtual {p0, v1, v2}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->getHeadViewDesp(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected initView()V
    .locals 1

    const v0, 0x7f07022c

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->setLoadingText(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->showLoadingView(Z)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->setDualCardSlot()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->initViewDelay()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->onSimHeadClick(I)V

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->onSimHeadClick(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a025e -> :sswitch_1
        0x7f0a0263 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreateListAdapter()Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;
    .locals 6

    new-instance v0, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mAppList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    const/4 v5, 0x0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/miui/networkassistant/service/IFirewallBinder;Lcom/miui/networkassistant/ui/view/FirewallRuleView$OnRuleChangedListener;Z)V

    return-object v0
.end method

.method protected onCreateListTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0300d3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateSearchView(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->updateListTitleGroup(Z)V

    return-void
.end method

.method protected onDestroySearchView(Landroid/view/ActionMode;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->updateListTitleGroup(Z)V

    return-void
.end method

.method protected onFirewallServiceConnected()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->getRoamingNetworkState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->showRoamingTipDialog()V

    :cond_0
    return-void
.end method

.method protected onPostLoadDataTask()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mTotalCount:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mIsDuCard:Z

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mActiveSlotNum:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->setDualCardData(ZI)V

    return-void
.end method

.method public onRuleChanged(Lcom/miui/networkassistant/ui/view/FirewallRuleView;Lcom/miui/networkassistant/model/FirewallRule;)V
    .locals 1

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/miui/networkassistant/model/AppInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->getCurrentOptSlot(I)I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->updateRuleHeadView(Lcom/miui/networkassistant/model/FirewallRule;I)V

    :cond_0
    return-void
.end method

.method public onRuleChanging(Lcom/miui/networkassistant/ui/view/FirewallRuleView;Lcom/miui/networkassistant/model/FirewallRule;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->getCurrentOptSlot(I)I

    move-result v1

    if-eqz v0, :cond_3

    instance-of v2, v0, Lcom/miui/networkassistant/model/AppInfo;

    if-eqz v2, :cond_3

    check-cast v0, Lcom/miui/networkassistant/model/AppInfo;

    iget-object v0, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->getRoamingNetworkState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mActiveSlotNum:I

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->showRoamingTipDialog()V

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne p2, v0, :cond_2

    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    :goto_0
    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {v3, v2, v0, v1}, Lcom/miui/networkassistant/service/IFirewallBinder;->setMobileRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;I)Z

    move-result v0

    return v0

    :cond_2
    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onRuleChanging:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method protected updateView()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->setRuleCount()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->updateSearchInputView()V

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mIsDuCard:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->updateSimHeadView(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->updateSimHeadView(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mActiveSlotNum:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->updateSimHeadView(I)V

    goto :goto_0
.end method
