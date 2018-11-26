.class public Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;
.super Lcom/miui/networkassistant/ui/base/ListFragment;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TITLE_FILED:I = 0x7f0702fd


# instance fields
.field private mAllAppList:Ljava/util/List;

.field private mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

.field private mCurrentImsi:Ljava/lang/String;

.field private mDateTypePrefix:[Ljava/lang/String;

.field private mDropDownArrowImageView:Landroid/widget/ImageView;

.field private mDropDownSingleChoiceMenu:Lmiui/widget/DropDownSingleChoiceMenu;

.field private mMobileTraffic:Landroid/util/SparseArray;

.field private mSlotNum:I

.field private mSortChoiceDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

.field private mSortedButton:Landroid/widget/ImageView;

.field private mSortedChoiceListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

.field private mSortedType:I

.field private mSpinnerTitleTxt:[Ljava/lang/String;

.field private mStatisticAppTraffic:Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

.field private mTitleLayout:Landroid/view/View;

.field private mTitleType:I

.field private mTitleView:Landroid/widget/TextView;

.field private mTotalTraffic:J

.field private mTrafficAdapter:Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;

.field private mTrafficType:[Ljava/lang/String;

.field private mWifiTraffic:Landroid/util/SparseArray;

.field private miHelper:Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)Lcom/miui/networkassistant/model/AppInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mDropDownArrowImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)Lmiui/widget/DropDownSingleChoiceMenu;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mDropDownSingleChoiceMenu:Lmiui/widget/DropDownSingleChoiceMenu;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mStatisticAppTraffic:Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mMobileTraffic:Landroid/util/SparseArray;

    return-object p1
.end method

.method static synthetic -set1(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSortedType:I

    return p1
.end method

.method static synthetic -set2(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTitleType:I

    return p1
.end method

.method static synthetic -set3(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mWifiTraffic:Landroid/util/SparseArray;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->initData()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->updateSpinnerTitle()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->updateTrafficData()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->updateTrafficSorted()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/ListFragment;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTitleType:I

    iput v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSortedType:I

    iput v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSlotNum:I

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSortedChoiceListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

    return-void
.end method

.method private getSpinnerTitleText(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mDateTypePrefix:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTrafficType:[Ljava/lang/String;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSortedType:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mAppContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTotalTraffic:J

    invoke-static {v1, v2, v3}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initData()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->initSpinnerData()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->updateTrafficSorted()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->updateSpinnerTitle()V

    return-void
.end method

.method private initSpinnerData()V
    .locals 2

    new-instance v0, Lmiui/widget/DropDownSingleChoiceMenu;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmiui/widget/DropDownSingleChoiceMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mDropDownSingleChoiceMenu:Lmiui/widget/DropDownSingleChoiceMenu;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mDropDownSingleChoiceMenu:Lmiui/widget/DropDownSingleChoiceMenu;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSpinnerTitleTxt:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/widget/DropDownSingleChoiceMenu;->setItems([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mDropDownSingleChoiceMenu:Lmiui/widget/DropDownSingleChoiceMenu;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTitleLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Lmiui/widget/DropDownSingleChoiceMenu;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mDropDownSingleChoiceMenu:Lmiui/widget/DropDownSingleChoiceMenu;

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)V

    invoke-virtual {v0, v1}, Lmiui/widget/DropDownSingleChoiceMenu;->setOnMenuListener(Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;)V

    return-void
.end method

.method private initViewDelayed()V
    .locals 3

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSpinnerTitleTxt:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mDateTypePrefix:[Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTrafficType:[Ljava/lang/String;

    const v0, 0x7f0a01ac

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTitleLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTitleLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01ad

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTitleView:Landroid/widget/TextView;

    const v0, 0x7f0a027d

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mDropDownArrowImageView:Landroid/widget/ImageView;

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSortedChoiceListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSortChoiceDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSpinnerTitleTxt:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mDateTypePrefix:[Ljava/lang/String;

    goto :goto_0
.end method

.method private onResetTitle()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isDualSimInserted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "%s-%s"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v2, v3

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSlotNum:I

    if-nez v0, :cond_1

    const v0, 0x7f0702fa

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->setTitle(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f0702fb

    goto :goto_0
.end method

.method private updateAppTraffic()V
    .locals 2

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$3;-><init>(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private updateSpinnerTitle()V
    .locals 2

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTitleType:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->getSpinnerTitleText(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTrafficAdapter:Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private updateTrafficData()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->miHelper:Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTitleType:I

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSortedType:I

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mCurrentImsi:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->query(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mAllAppList:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->miHelper:Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->getTotalTraffic()J

    move-result-wide v2

    new-instance v1, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;

    invoke-direct {v1}, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;-><init>()V

    const-string/jumbo v0, "com.xiaomi.xmsf"

    iput-object v0, v1, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;->packageName:Ljava/lang/CharSequence;

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSortedType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-wide v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTotalTraffic:J

    sub-long v2, v4, v2

    iput-wide v2, v1, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;->totalTraffic:J

    iget-wide v2, v1, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;->totalTraffic:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mAllAppList:Ljava/util/List;

    invoke-interface {v0, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTrafficAdapter:Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mAllAppList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->setData(Ljava/util/List;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mMobileTraffic:Landroid/util/SparseArray;

    iget v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTitleType:I

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTotalTraffic:J

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mWifiTraffic:Landroid/util/SparseArray;

    iget v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTitleType:I

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTotalTraffic:J

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateTrafficSorted()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->updateTrafficData()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTrafficAdapter:Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSortedType:I

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->trafficSorted(I)V

    return-void
.end method


# virtual methods
.method protected initView()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "package_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "title_type"

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTitleType:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    div-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSortedType:I

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTitleType:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getAppInfoByPackageName(Ljava/lang/String;)Lcom/miui/networkassistant/model/AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->finish()V

    return-void

    :cond_1
    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentOptSlotNum()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSlotNum:I

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->onResetTitle()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSlotNum:I

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/dual/SimCardHelper;->getSimImsi(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mCurrentImsi:Ljava/lang/String;

    new-instance v0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mCurrentImsi:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mStatisticAppTraffic:Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    new-instance v0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->miHelper:Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;

    const v0, 0x7f07022d

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->setEmptyText(I)V

    const v0, 0x7f07022c

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->setLoadingText(I)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->showLoadingView()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->initViewDelayed()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->updateAppTraffic()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSortedButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mAppContext:Landroid/content/Context;

    const v1, 0x7f070237

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSortChoiceDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTrafficType:[Ljava/lang/String;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSortedType:I

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTitleLayout:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mDropDownSingleChoiceMenu:Lmiui/widget/DropDownSingleChoiceMenu;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTitleType:I

    invoke-virtual {v0, v1}, Lmiui/widget/DropDownSingleChoiceMenu;->setSelectedItem(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mDropDownSingleChoiceMenu:Lmiui/widget/DropDownSingleChoiceMenu;

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
    .locals 2

    new-instance v0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTrafficAdapter:Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTrafficAdapter:Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;

    return-object v0
.end method

.method protected onCustomizeActionBar(Landroid/app/ActionBar;)I
    .locals 4

    const/16 v0, 0x10

    const/4 v3, -0x2

    invoke-virtual {p1, v0, v0}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSortedButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSortedButton:Landroid/widget/ImageView;

    const v1, 0x7f0202e2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSortedButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f070237

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSortedButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const v1, 0x800015

    invoke-direct {v0, v3, v3, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSortedButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const/4 v0, 0x0

    return v0
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f0702fd

    return v0
.end method
