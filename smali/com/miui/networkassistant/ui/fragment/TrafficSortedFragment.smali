.class public Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;
.super Lcom/miui/networkassistant/ui/base/ListFragment;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$TrafficStatisticListener;


# static fields
.field private static final BUNDLE_SLOT_NUM_TAG:Ljava/lang/String; = "slot_num_tag"

.field private static final MSG_FIREWALL_SERVICE_CONNECTED:I = 0x3

.field private static final MSG_TRAFFIC_DATA_UPDATE:I = 0x2


# instance fields
.field private mAdapterType:I

.field private mAllAppDataUsageTotal:[J

.field private mAppTrafficInfoList:Ljava/util/List;

.field private mDataReady:Z

.field private mDateTypePrefix:[Ljava/lang/String;

.field private mDropDownArrowImageView:Landroid/widget/ImageView;

.field private mDropDownSingleChoiceMenu:Lmiui/widget/DropDownSingleChoiceMenu;

.field private mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

.field private mFirewallServiceConnection:Landroid/content/ServiceConnection;

.field private mHandler:Landroid/os/Handler;

.field private mImsi:Ljava/lang/String;

.field private mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

.field private mSlotNum:I

.field private mSortChoiceDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

.field private mSortedButton:Landroid/widget/ImageView;

.field private mSortedChoiceDialogListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

.field private mSortedType:I

.field private mSpinnerTitleTxt:[Ljava/lang/String;

.field private mTitleLayout:Landroid/view/View;

.field private mTitleType:I

.field private mTitleView:Landroid/widget/TextView;

.field private mTrafficAdapter:Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;

.field private mTrafficStatisticManager:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

.field private mTrafficType:[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mDropDownArrowImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)Lmiui/widget/DropDownSingleChoiceMenu;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mDropDownSingleChoiceMenu:Lmiui/widget/DropDownSingleChoiceMenu;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSortedType:I

    return v0
.end method

.method static synthetic -get4(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTitleType:I

    return v0
.end method

.method static synthetic -get5(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficAdapter:Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;

    return-object v0
.end method

.method static synthetic -get6(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficStatisticManager:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mDataReady:Z

    return p1
.end method

.method static synthetic -set1(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;Lcom/miui/networkassistant/service/IFirewallBinder;)Lcom/miui/networkassistant/service/IFirewallBinder;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    return-object p1
.end method

.method static synthetic -set2(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSortedType:I

    return p1
.end method

.method static synthetic -set3(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTitleType:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->updateData()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->updateSpinnerTitle()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/ListFragment;-><init>()V

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mDataReady:Z

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSlotNum:I

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mFirewallServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$3;-><init>(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSortedChoiceDialogListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

    return-void
.end method

.method private bindFirewallService()V
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/miui/networkassistant/service/FirewallService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mFirewallServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {}, Lcom/miui/common/b/f;->aHT()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v4, v3}, Lcom/miui/common/b/n;->aIK(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)V

    return-void
.end method

.method private bindTrafficStatisticService()V
    .locals 4

    new-instance v0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mImsi:Ljava/lang/String;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSortedType:I

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficStatisticManager:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficStatisticManager:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    invoke-virtual {v0, p0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->registerListener(Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$TrafficStatisticListener;)V

    return-void
.end method

.method private getSpinnerTitleText(I)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mAllAppDataUsageTotal:[J

    aget-wide v0, v0, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mDateTypePrefix:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficType:[Ljava/lang/String;

    iget v4, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSortedType:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initData()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSpinnerTitleTxt:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mDateTypePrefix:[Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficType:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "system_flag"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mAdapterType:I

    const-string/jumbo v1, "title_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTitleType:I

    const-string/jumbo v1, "sort_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSortedType:I

    const-string/jumbo v1, "slot_num_tag"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->parseSlotNum(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSlotNum:I

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/dual/SimCardHelper;->getSimImsi(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mImsi:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->initSpinnerData()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSpinnerTitleTxt:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mDateTypePrefix:[Ljava/lang/String;

    goto :goto_0
.end method

.method private initSpinnerData()V
    .locals 2

    new-instance v0, Lmiui/widget/DropDownSingleChoiceMenu;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmiui/widget/DropDownSingleChoiceMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mDropDownSingleChoiceMenu:Lmiui/widget/DropDownSingleChoiceMenu;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mDropDownSingleChoiceMenu:Lmiui/widget/DropDownSingleChoiceMenu;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSpinnerTitleTxt:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/widget/DropDownSingleChoiceMenu;->setItems([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mDropDownSingleChoiceMenu:Lmiui/widget/DropDownSingleChoiceMenu;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTitleLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Lmiui/widget/DropDownSingleChoiceMenu;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mDropDownSingleChoiceMenu:Lmiui/widget/DropDownSingleChoiceMenu;

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$4;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$4;-><init>(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)V

    invoke-virtual {v0, v1}, Lmiui/widget/DropDownSingleChoiceMenu;->setOnMenuListener(Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;)V

    return-void
.end method

.method private initViewDelay()V
    .locals 3

    const v0, 0x7f0a01ac

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTitleLayout:Landroid/view/View;

    const v0, 0x7f0a01ad

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTitleView:Landroid/widget/TextView;

    const v0, 0x7f0a027d

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mDropDownArrowImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTitleLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSortedChoiceDialogListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSortChoiceDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->initData()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->onResetTitle()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->bindTrafficStatisticService()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->bindFirewallService()V

    return-void
.end method

.method private onResetTitle()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isDualSimInserted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSlotNum:I

    invoke-static {v0, v1, v2}, Lcom/miui/networkassistant/utils/TextPrepareUtil;->getDualCardTitle(Landroid/content/Context;Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->setTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private parseSlotNum(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getCurrentMobileSlotNum()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSlotNum:I

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSlotNum:I

    invoke-static {v0}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlotNum(I)V

    return-void

    :cond_0
    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentOptSlotNum()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSlotNum:I

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "sim_slot_num_tag"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "sim_slot_num_tag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSlotNum:I

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSlotNum:I

    invoke-static {v0}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlotNum(I)V

    :cond_1
    return-void
.end method

.method private startSystemAppActivity()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "system_flag"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "title_type"

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTitleType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "sort_type"

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSortedType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/miui/networkassistant/ui/activity/TrafficSortedActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private unBindFirewallService()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mFirewallServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method private unBindTrafficStatisticService()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficStatisticManager:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficStatisticManager:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    invoke-virtual {v0, p0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->unRegisterListener(Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$TrafficStatisticListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficStatisticManager:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->quitStatistic()V

    :cond_0
    return-void
.end method

.method private updateAppTotalTraffic()V
    .locals 5

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mAdapterType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficStatisticManager:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->getNonSystemAppsListLocked()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mAppTrafficInfoList:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficStatisticManager:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->getAllAppDataUsageTotal()[J

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mAllAppDataUsageTotal:[J

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficAdapter:Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->setFirewall(Lcom/miui/networkassistant/service/IFirewallBinder;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficAdapter:Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mAppTrafficInfoList:Ljava/util/List;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTitleType:I

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSortedType:I

    iget v4, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSlotNum:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->setData(Ljava/util/List;III)V

    return-void

    :cond_1
    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mAdapterType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficStatisticManager:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->getSystemAppListLocked()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mAppTrafficInfoList:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficStatisticManager:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->getSystemAppDataUsageTotal()[J

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mAllAppDataUsageTotal:[J

    goto :goto_0
.end method

.method private updateData()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->isAttatched()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mDataReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficStatisticManager:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->updateAppTotalTraffic()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->updateSpinnerTitle()V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->hideLoadingView()V

    :cond_0
    return-void
.end method

.method private updateSpinnerTitle()V
    .locals 2

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTitleType:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->getSpinnerTitleText(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected initView()V
    .locals 1

    const v0, 0x7f07022d

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->setEmptyText(I)V

    const v0, 0x7f07022c

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->setLoadingText(I)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->showLoadingView()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->initViewDelay()V

    return-void
.end method

.method public onAppTrafficStatisticUpdated()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSortedButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mAppContext:Landroid/content/Context;

    const v1, 0x7f070237

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSortChoiceDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficType:[Ljava/lang/String;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSortedType:I

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTitleLayout:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mDropDownSingleChoiceMenu:Lmiui/widget/DropDownSingleChoiceMenu;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTitleType:I

    invoke-virtual {v0, v1}, Lmiui/widget/DropDownSingleChoiceMenu;->setSelectedItem(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mDropDownSingleChoiceMenu:Lmiui/widget/DropDownSingleChoiceMenu;

    invoke-virtual {v0}, Lmiui/widget/DropDownSingleChoiceMenu;->show()V

    goto :goto_0
.end method

.method protected onCreateFooterView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreateHeaderView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0300df

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateListAdapter()Landroid/widget/ListAdapter;
    .locals 4

    new-instance v0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mAdapterType:I

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSlotNum:I

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;-><init>(Landroid/app/Activity;II)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficAdapter:Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficAdapter:Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;

    return-object v0
.end method

.method protected onCustomizeActionBar(Landroid/app/ActionBar;)I
    .locals 4

    const/16 v0, 0x10

    const/4 v3, -0x2

    invoke-virtual {p1, v0, v0}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSortedButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSortedButton:Landroid/widget/ImageView;

    const v1, 0x7f0202e2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSortedButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f070237

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSortedButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const v1, 0x800015

    invoke-direct {v0, v3, v3, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSortedButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/ListFragment;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->unBindTrafficStatisticService()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->unBindFirewallService()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficAdapter:Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;

    invoke-virtual {v0, p3}, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/miui/networkassistant/model/TrafficInfo;

    if-eqz v2, :cond_0

    iget-object v0, v2, Lcom/miui/networkassistant/model/TrafficInfo;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v0, v0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    const/4 v1, -0x5

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, v2, Lcom/miui/networkassistant/model/TrafficInfo;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v0, v0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    const/4 v1, -0x4

    if-eq v0, v1, :cond_0

    iget-object v0, v2, Lcom/miui/networkassistant/model/TrafficInfo;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget-object v0, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mAdapterType:I

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/miui/networkassistant/utils/HybirdServiceUtil;->isHybirdService(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/networkassistant/utils/HybirdServiceUtil;->isHybirdIntentExist(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mAppContext:Landroid/content/Context;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTitleType:I

    iget-object v2, v2, Lcom/miui/networkassistant/model/TrafficInfo;->mAppStats:Lcom/miui/networkassistant/model/TrafficInfo$AppStatistic;

    iget-object v2, v2, Lcom/miui/networkassistant/model/TrafficInfo$AppStatistic;->mTotalBytes:[J

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTitleType:I

    aget-wide v2, v2, v3

    iget v4, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSortedType:I

    iget-object v5, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mImsi:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/miui/networkassistant/utils/HybirdServiceUtil;->startHybirdTrafficSortActivity(Landroid/content/Context;IJILjava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTitleType:I

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSortedType:I

    invoke-static {v1, v0, v2, v3}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->startAppDetailFragment(Landroid/app/Activity;Ljava/lang/String;II)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mAdapterType:I

    if-nez v1, :cond_4

    iget-object v1, v2, Lcom/miui/networkassistant/model/TrafficInfo;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v1, v1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    const/16 v2, -0xa

    if-ne v1, v2, :cond_4

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->startSystemAppActivity()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTitleType:I

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSortedType:I

    invoke-static {v1, v0, v2, v3}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->startAppDetailFragment(Landroid/app/Activity;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/ListFragment;->onResume()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficAdapter:Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->notifyDataSetChanged()V

    return-void
.end method
