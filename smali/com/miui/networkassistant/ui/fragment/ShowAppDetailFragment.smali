.class public Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;
.super Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/ui/view/AppDetailTrafficView$ChartDragListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MENU_APP_DETAIL:I = 0x1

.field private static final MSG_FW_CONNECTED:I = 0x2

.field private static final MSG_TM_CONNECTED:I = 0x3

.field private static final MSG_UPDATE_DATA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ShowAppDetailFragment"

.field private static final TITLE_FILED:I = 0x7f070232

.field private static final X_MARGIN_HOUR:I = 0x3f

.field private static final X_MARGIN_MONTH:I = 0x10

.field private static final Y_MARGIN:I = 0x28


# instance fields
.field private mAppDetailMenuItem:Landroid/view/MenuItem;

.field private mAppDetailTrafficView:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

.field private mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

.field private mAppMonitorListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

.field private mAppMonitorWrapper:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

.field private mBackgroundPolicyService:Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

.field private mBackgroundRestrictChangedListener:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;

.field private mBackgroundRestrictLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

.field private mDataReady:Z

.field protected mDensity:F

.field private mDropDownArrowImageView:Landroid/widget/ImageView;

.field private mDropDownSingleChoiceMenu:Lmiui/widget/DropDownSingleChoiceMenu;

.field private mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

.field private mFirewallServiceConnection:Landroid/content/ServiceConnection;

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/widget/ImageView;

.field private mInited:Z

.field private mIsFromAM:Z

.field private mIsManagedProfileApp:Z

.field private mLabel:Landroid/widget/TextView;

.field private mLastMonthMobileTrafficPreDayList:[J

.field private mLastMonthStart:J

.field private mLastMonthWlanTrafficPreDayList:[J

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mLocations:[I

.field private mMiServiceAppDetailItem:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

.field private mMobileFirewallChangedListener1:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;

.field private mMobileFirewallChangedListener2:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;

.field private mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

.field private mMobileTraffic:Landroid/util/SparseArray;

.field private mMonthMobileTrafficPerDayList:[J

.field private mMonthWlanTrafficPerDayList:[J

.field private mNetworkTrafficWarningLayout:Landroid/widget/LinearLayout;

.field private mPackageName:Ljava/lang/String;

.field private mRealPackageName:Ljava/lang/String;

.field private mScreenWidth:I

.field private mStatisticAppTraffic:Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

.field private mThisMonthEnd:J

.field private mThisMonthStart:J

.field private mTitleLayout:Landroid/view/View;

.field private mTitleStrings:[Ljava/lang/String;

.field private mTitleType:I

.field private mTitleView:Landroid/widget/TextView;

.field private mTodayMobileTrafficPerHourList:[J

.field private mTodayStart:J

.field private mTodayWlanTrafficPerHourList:[J

.field private mTrafficDragView:Lcom/miui/networkassistant/ui/view/TrafficDragView;

.field private mVersion:Landroid/widget/TextView;

.field private mVersionStr:Ljava/lang/String;

.field private mWifiTraffic:Landroid/util/SparseArray;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWlanFirewallChangedListener:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;

.field private mWlanFirewallLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

.field private mYesterdayMobileTrafficPerHourList:[J

.field private mYesterdayWlanTrafficPerHourList:[J


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Lcom/miui/networkassistant/model/AppInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Lcom/miui/networkassistant/firewall/BackgroundPolicyService;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundPolicyService:Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

    return-object v0
.end method

.method static synthetic -get10(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWlanFirewallLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundRestrictLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mDropDownArrowImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Lmiui/widget/DropDownSingleChoiceMenu;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mDropDownSingleChoiceMenu:Lmiui/widget/DropDownSingleChoiceMenu;

    return-object v0
.end method

.method static synthetic -get5(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Lcom/miui/networkassistant/service/IFirewallBinder;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    return-object v0
.end method

.method static synthetic -get6(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mSlotNum:I

    return v0
.end method

.method static synthetic -get9(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mStatisticAppTraffic:Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mDataReady:Z

    return p1
.end method

.method static synthetic -set1(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;Lcom/miui/networkassistant/service/IFirewallBinder;)Lcom/miui/networkassistant/service/IFirewallBinder;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    return-object p1
.end method

.method static synthetic -set2(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleType:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->isAttatched()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;IZ)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->setMobileRule(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->applyTrafficData()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->initData()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->showRestrictBackgroundNetDialog(ZI)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->updateAppTraffic()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->updateLastMonthTraffic()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->updateThisMonthTraffic()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->updateTodayTraffic()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->updateYesterdayTraffic()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleType:I

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppMonitorListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mDataReady:Z

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mInited:Z

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$3;-><init>(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mFirewallServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$4;-><init>(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallChangedListener1:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$5;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$5;-><init>(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallChangedListener2:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$6;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$6;-><init>(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWlanFirewallChangedListener:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$7;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$7;-><init>(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundRestrictChangedListener:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLocations:[I

    return-void
.end method

.method private applyTrafficData()V
    .locals 14

    const-wide/16 v0, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->isAttatched()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleType:I

    packed-switch v2, :pswitch_data_0

    move-wide v2, v0

    move-wide v4, v0

    :goto_0
    iget-object v6, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleStrings:[Ljava/lang/String;

    iget v7, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleType:I

    aget-object v6, v6, v7

    invoke-direct {p0, v6, v4, v5}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->updateSpinnerHead(Ljava/lang/String;J)V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->showBackgroundTraffic(JJ)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileTraffic:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileTraffic:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileTraffic:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v0

    iget-object v6, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppDetailTrafficView:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

    iget-object v7, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mYesterdayMobileTrafficPerHourList:[J

    invoke-virtual {v6, v7, v9}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->setData([JI)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWifiTraffic:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWifiTraffic:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWifiTraffic:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v0

    iget-object v6, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppDetailTrafficView:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

    iget-object v7, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mYesterdayWlanTrafficPerHourList:[J

    invoke-virtual {v6, v7, v9}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->setData([JI)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileTraffic:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileTraffic:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileTraffic:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v0

    iget-object v6, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppDetailTrafficView:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

    iget-object v7, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTodayMobileTrafficPerHourList:[J

    invoke-virtual {v6, v7, v9}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->setData([JI)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWifiTraffic:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWifiTraffic:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWifiTraffic:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v0

    iget-object v6, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppDetailTrafficView:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

    iget-object v7, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTodayWlanTrafficPerHourList:[J

    invoke-virtual {v6, v7, v9}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->setData([JI)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileTraffic:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileTraffic:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileTraffic:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v0

    iget-object v6, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppDetailTrafficView:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

    iget-object v7, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMonthMobileTrafficPerDayList:[J

    invoke-virtual {v6, v7, v8}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->setData([JI)V

    iget-object v6, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppDetailTrafficView:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

    iget-wide v8, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mThisMonthStart:J

    iget-wide v10, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mThisMonthEnd:J

    invoke-virtual {v6, v8, v9, v10, v11}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->setDurations(JJ)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWifiTraffic:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWifiTraffic:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWifiTraffic:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v0

    iget-object v6, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppDetailTrafficView:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

    iget-object v7, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMonthWlanTrafficPerDayList:[J

    invoke-virtual {v6, v7, v8}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->setData([JI)V

    iget-object v6, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppDetailTrafficView:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

    iget-wide v8, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mThisMonthStart:J

    iget-wide v10, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mThisMonthEnd:J

    invoke-virtual {v6, v8, v9, v10, v11}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->setDurations(JJ)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileTraffic:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileTraffic:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileTraffic:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v0

    iget-object v6, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppDetailTrafficView:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

    iget-object v7, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLastMonthMobileTrafficPreDayList:[J

    invoke-virtual {v6, v7, v8}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->setData([JI)V

    iget-object v6, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppDetailTrafficView:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

    iget-wide v8, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLastMonthStart:J

    iget-wide v10, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mThisMonthStart:J

    const-wide/32 v12, 0xea60

    sub-long/2addr v10, v12

    invoke-virtual {v6, v8, v9, v10, v11}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->setDurations(JJ)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWifiTraffic:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWifiTraffic:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWifiTraffic:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v0

    iget-object v6, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppDetailTrafficView:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

    iget-object v7, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLastMonthWlanTrafficPreDayList:[J

    invoke-virtual {v6, v7, v8}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->setData([JI)V

    iget-object v6, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppDetailTrafficView:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

    iget-wide v8, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLastMonthStart:J

    iget-wide v10, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mThisMonthStart:J

    const-wide/32 v12, 0xea60

    sub-long/2addr v10, v12

    invoke-virtual {v6, v8, v9, v10, v11}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->setDurations(JJ)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private bindFirewallService()V
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/miui/networkassistant/service/FirewallService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mFirewallServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {}, Lcom/miui/common/b/f;->aHT()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v4, v3}, Lcom/miui/common/b/n;->aIK(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)V

    return-void
.end method

.method private buildRestrictAndroidTipDialog(Ljava/lang/String;I)V
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppContext:Landroid/content/Context;

    const v1, 0x7f07021a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f07021b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mActivity:Landroid/app/Activity;

    new-instance v4, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$9;

    invoke-direct {v4, p0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$9;-><init>(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;Ljava/lang/String;I)V

    invoke-direct {v2, v3, v4}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;)V

    invoke-virtual {v2, v0, v1}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkPackageAvailable()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mRealPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/PackageUtil;->isInstalledPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mIsManagedProfileApp:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private getScreenX(F)D
    .locals 10

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    float-to-double v0, p1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->getXMargin()I

    move-result v2

    float-to-double v4, p1

    int-to-double v6, v2

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mScreenWidth:I

    int-to-double v6, v3

    cmpl-double v3, v4, v6

    if-lez v3, :cond_1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mScreenWidth:I

    int-to-double v0, v0

    int-to-double v4, v2

    div-double/2addr v4, v8

    sub-double/2addr v0, v4

    :cond_0
    :goto_0
    int-to-double v2, v2

    div-double/2addr v2, v8

    sub-double/2addr v0, v2

    return-wide v0

    :cond_1
    float-to-double v4, p1

    int-to-double v6, v2

    div-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpg-double v3, v4, v6

    if-gez v3, :cond_0

    int-to-double v0, v2

    div-double/2addr v0, v8

    goto :goto_0
.end method

.method private getTimeInterval(I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->isMonthTrafficType()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mThisMonthStart:J

    invoke-static {v0, v1, p1}, Lcom/miui/networkassistant/utils/DateUtil;->dayInterval(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->isLastMonthTrafficType()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLastMonthStart:J

    invoke-static {v0, v1, p1}, Lcom/miui/networkassistant/utils/DateUtil;->dayInterval(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-wide v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTodayStart:J

    invoke-static {v0, v1, p1}, Lcom/miui/networkassistant/utils/DateUtil;->timeInterval(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTraffic(I)J
    .locals 4

    const-wide/16 v0, 0x0

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleType:I

    packed-switch v2, :pswitch_data_0

    return-wide v0

    :pswitch_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mYesterdayMobileTrafficPerHourList:[J

    :goto_0
    if-eqz v2, :cond_0

    if-ltz p1, :cond_0

    array-length v3, v2

    if-ge p1, v3, :cond_0

    aget-wide v0, v2, p1

    :cond_0
    return-wide v0

    :pswitch_1
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mYesterdayWlanTrafficPerHourList:[J

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTodayMobileTrafficPerHourList:[J

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTodayWlanTrafficPerHourList:[J

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMonthMobileTrafficPerDayList:[J

    goto :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMonthWlanTrafficPerDayList:[J

    goto :goto_0

    :pswitch_6
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLastMonthMobileTrafficPreDayList:[J

    goto :goto_0

    :pswitch_7
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLastMonthWlanTrafficPreDayList:[J

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private getXMargin()I
    .locals 2

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->isMonthTrafficType()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->isLastMonthTrafficType()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mDensity:F

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_1
    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mDensity:F

    const/high16 v1, 0x427c0000    # 63.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private initBundleData()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "package_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/networkassistant/utils/PackageUtil;->getRealPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mRealPackageName:Ljava/lang/String;

    const-string/jumbo v1, "magaged_profile_package"

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mRealPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mIsManagedProfileApp:Z

    const-string/jumbo v1, "sort_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "title_type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleType:I

    :cond_0
    return-void
.end method

.method private initData()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mInited:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mDataReady:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mServiceConnected:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mInited:Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/PackageUtil;->isManagedProfileApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mIsManagedProfileApp:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/networkassistant/model/AppInfo;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mRealPackageName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/model/AppInfo;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/networkassistant/utils/PackageUtil;->parseUidByPackageName(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    :goto_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppMonitorWrapper:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mRealPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getAppInfoByPackageName(Ljava/lang/String;)Lcom/miui/networkassistant/model/AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppMonitorWrapper:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getAppInfoByPackageName(Ljava/lang/String;)Lcom/miui/networkassistant/model/AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget-object v0, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/miui/networkassistant/utils/IconCacheHelper;->getInstance()Lcom/miui/networkassistant/utils/IconCacheHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Lcom/miui/networkassistant/utils/IconCacheHelper;->setIconToImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/networkassistant/utils/LabelLoadHelper;->loadLabel(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/common/b/k;->aIB(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mVersion:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mVersionStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mSlotNum:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mStatisticAppTraffic:Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->updateTraffic()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->initFirewallData()V

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mIsFromAM:Z

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mNetworkTrafficWarningLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v0, v0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {v0}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isGroupUid(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    return-void

    :cond_4
    const/16 v0, 0x8

    goto :goto_2
.end method

.method private initDrag()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mDensity:F

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mScreenWidth:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWindowManager:Landroid/view/WindowManager;

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLocations:[I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppDetailTrafficView:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLocations:[I

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->getLocationOnScreen([I)V

    :cond_1
    return-void
.end method

.method private initDragView(FFI)V
    .locals 8

    const/4 v1, -0x2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->getScreenX(F)D

    move-result-wide v2

    double-to-int v3, v2

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mDensity:F

    const/high16 v4, 0x42200000    # 40.0f

    mul-float/2addr v2, v4

    sub-float v2, p2, v2

    float-to-int v4, v2

    const/16 v5, 0x3ea

    const/16 v6, 0x300

    const/4 v7, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v1, Lcom/miui/networkassistant/ui/view/TrafficDragView;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/ui/view/TrafficDragView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTrafficDragView:Lcom/miui/networkassistant/ui/view/TrafficDragView;

    invoke-direct {p0, p3}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->getTimeInterval(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTrafficDragView:Lcom/miui/networkassistant/ui/view/TrafficDragView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, p3}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->getTraffic(I)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/miui/networkassistant/ui/view/TrafficDragView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTrafficDragView:Lcom/miui/networkassistant/ui/view/TrafficDragView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initFirewallData()V
    .locals 7

    const v6, 0x7f070234

    const/4 v1, 0x0

    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    const v0, 0x7f0a01b5

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    aput-object v0, v4, v3

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    const v0, 0x7f0a01b6

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    aput-object v0, v4, v2

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isDualSimInserted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v3}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->setMobileFirewallTile(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    aget-object v0, v0, v3

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallChangedListener1:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;

    invoke-virtual {v0, v4}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setToolbarItemClickListener(Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;)V

    invoke-direct {p0, v2}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->setMobileFirewallTile(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    aget-object v0, v0, v2

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallChangedListener2:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;

    invoke-virtual {v0, v4}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setToolbarItemClickListener(Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;)V

    :cond_0
    :goto_0
    const v0, 0x7f0a01b7

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWlanFirewallLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWlanFirewallLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWlanFirewallChangedListener:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;

    invoke-virtual {v0, v4}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setToolbarItemClickListener(Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWlanFirewallLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    const v4, 0x7f070235

    invoke-virtual {v0, v4}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setName(I)V

    const v0, 0x7f0a01b8

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundRestrictLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundRestrictLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundRestrictChangedListener:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;

    invoke-virtual {v0, v4}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setToolbarItemClickListener(Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundRestrictLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    const v4, 0x7f07023a

    invoke-virtual {v0, v4}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setName(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundRestrictLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setSummaryVisibility(I)V

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mIsManagedProfileApp:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v5}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v5}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWlanFirewallLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    invoke-virtual {v0, v5}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundRestrictLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    invoke-virtual {v0, v5}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getCurrentMobileSlotNum()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v6}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setName(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    aget-object v0, v0, v3

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallChangedListener1:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;

    invoke-virtual {v0, v4}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setToolbarItemClickListener(Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v5}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v6}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setName(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    aget-object v0, v0, v2

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallChangedListener2:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;

    invoke-virtual {v0, v4}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setToolbarItemClickListener(Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v5}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->finish()V

    return-void

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget-object v4, v4, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/miui/networkassistant/service/IFirewallBinder;->getRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRuleSet;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v1, v0

    :goto_2
    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->finish()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "ShowAppDetailFragment"

    const-string/jumbo v5, "get firewall rule set"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    aget-object v4, v0, v3

    iget-object v0, v1, Lcom/miui/networkassistant/model/FirewallRuleSet;->mobileRule:Lcom/miui/networkassistant/model/FirewallRule;

    sget-object v5, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v0, v5, :cond_c

    move v0, v2

    :goto_3
    invoke-virtual {v4, v0}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setChecked(Z)V

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    aget-object v4, v0, v2

    iget-object v0, v1, Lcom/miui/networkassistant/model/FirewallRuleSet;->mobileRule2:Lcom/miui/networkassistant/model/FirewallRule;

    sget-object v5, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v0, v5, :cond_d

    move v0, v2

    :goto_4
    invoke-virtual {v4, v0}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setChecked(Z)V

    :cond_6
    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWlanFirewallLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    iget-object v0, v1, Lcom/miui/networkassistant/model/FirewallRuleSet;->wifiRule:Lcom/miui/networkassistant/model/FirewallRule;

    sget-object v5, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v0, v5, :cond_e

    move v0, v2

    :goto_5
    invoke-virtual {v4, v0}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundPolicyService:Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundPolicyService:Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mRealPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v5, v5, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-virtual {v0, v4, v5}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->isAppRestrictBackground(Ljava/lang/String;I)Z

    move-result v4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundRestrictLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    xor-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v5}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWlanFirewallLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setToolbarItemEnable(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundRestrictLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setToolbarItemEnable(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget-boolean v0, v0, Lcom/miui/networkassistant/model/AppInfo;->isSystemApp:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWlanFirewallLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setToolbarItemEnable(Z)V

    iget-object v0, v1, Lcom/miui/networkassistant/model/FirewallRuleSet;->wifiRule:Lcom/miui/networkassistant/model/FirewallRule;

    sget-object v1, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    if-eq v0, v1, :cond_8

    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget-object v1, v1, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-interface {v0, v1, v5}, Lcom/miui/networkassistant/service/IFirewallBinder;->setWifiRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    :goto_6
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWlanFirewallLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setChecked(Z)V

    :cond_8
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v0, v0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {v0}, Lcom/miui/common/b/f;->aHX(I)I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_9

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mRealPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isPrePolicyPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundRestrictLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setToolbarItemEnable(Z)V

    if-eqz v4, :cond_a

    :try_start_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundPolicyService:Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v1, v1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->setAppRestrictBackground(IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_a
    :goto_7
    invoke-static {}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->getPreFirewallWhiteList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mRealPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setToolbarItemEnable(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setToolbarItemEnable(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWlanFirewallLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setToolbarItemEnable(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundRestrictLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setToolbarItemEnable(Z)V

    :cond_b
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/enterprise/ApplicationHelper;->shouldGrantPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "Enterprise"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Net config is restricted for package"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    array-length v2, v1

    move v0, v3

    :goto_8
    if-ge v0, v2, :cond_f

    aget-object v4, v1, v0

    invoke-virtual {v4, v3}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setToolbarItemEnable(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_c
    move v0, v3

    goto/16 :goto_3

    :cond_d
    move v0, v3

    goto/16 :goto_4

    :cond_e
    move v0, v3

    goto/16 :goto_5

    :catch_1
    move-exception v0

    const-string/jumbo v1, "ShowAppDetailFragment"

    const-string/jumbo v5, "set firewall rule"

    invoke-static {v1, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :cond_f
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWlanFirewallLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setToolbarItemEnable(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundRestrictLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setToolbarItemEnable(Z)V

    :cond_10
    return-void

    :cond_11
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private initSpinnerData()V
    .locals 2

    new-instance v0, Lmiui/widget/DropDownSingleChoiceMenu;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmiui/widget/DropDownSingleChoiceMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mDropDownSingleChoiceMenu:Lmiui/widget/DropDownSingleChoiceMenu;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mDropDownSingleChoiceMenu:Lmiui/widget/DropDownSingleChoiceMenu;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleStrings:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/widget/DropDownSingleChoiceMenu;->setItems([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mDropDownSingleChoiceMenu:Lmiui/widget/DropDownSingleChoiceMenu;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Lmiui/widget/DropDownSingleChoiceMenu;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mDropDownSingleChoiceMenu:Lmiui/widget/DropDownSingleChoiceMenu;

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$8;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$8;-><init>(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V

    invoke-virtual {v0, v1}, Lmiui/widget/DropDownSingleChoiceMenu;->setOnMenuListener(Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;)V

    return-void
.end method

.method private isLastMonthTrafficType()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMonthTrafficType()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRestrictAndroidSystemApp(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mSlotNum:I

    invoke-interface {v0, p1, v2}, Lcom/miui/networkassistant/service/IFirewallBinder;->getMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;
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

    const-string/jumbo v2, "ShowAppDetailFragment"

    const-string/jumbo v3, "isRestrictAndroidSystemApp"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private setMobileFirewallTile(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f070234

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/miui/networkassistant/utils/TextPrepareUtil;->getDualCardTitle(Landroid/content/Context;Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private setMobileRule(IZ)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget-object v0, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->isRestrictAndroidSystemApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    xor-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0, v1, p1}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->buildRestrictAndroidTipDialog(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    if-eqz p2, :cond_2

    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    :goto_1
    invoke-interface {v2, v1, v0, p1}, Lcom/miui/networkassistant/service/IFirewallBinder;->setMobileRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;I)Z

    move-result v0

    return v0

    :cond_2
    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ShowAppDetailFragment"

    const-string/jumbo v2, "setMobileRule"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private showAppDetail()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    const-string/jumbo v2, "package"

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mRealPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.applications.InstalledAppDetails"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showBackgroundTraffic(JJ)V
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f07023c

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v3, p1, p2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f07023d

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v3, p3, p4}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundRestrictLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setSummary(Ljava/lang/String;)V

    return-void
.end method

.method private showRestrictBackgroundNetDialog(ZI)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppContext:Landroid/content/Context;

    const v1, 0x7f07021a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f07021c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mActivity:Landroid/app/Activity;

    new-instance v4, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$10;

    invoke-direct {v4, p0, p2}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$10;-><init>(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;I)V

    invoke-direct {v2, v3, v4}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;)V

    invoke-virtual {v2, v0, v1}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundPolicyService:Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v1, v1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->setAppRestrictBackground(IZ)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundRestrictLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setChecked(Z)V

    goto :goto_0
.end method

.method public static startAppDetailFragment(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->startAppDetailFragment(Landroid/app/Activity;Ljava/lang/String;II)V

    return-void
.end method

.method public static startAppDetailFragment(Landroid/app/Activity;Ljava/lang/String;II)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "package_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "title_type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "sort_type"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-class v1, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-static {p0, v1, v0}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method private unBindFirewallService()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mFirewallServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private updateAppTraffic()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mIsManagedProfileApp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mStatisticAppTraffic:Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v1, v1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-virtual {v0, v1, v3}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildMobileDataUsage(IZ)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileTraffic:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mStatisticAppTraffic:Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v1, v1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-virtual {v0, v1, v3}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildWifiDataUsage(IZ)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWifiTraffic:Landroid/util/SparseArray;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mStatisticAppTraffic:Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v1, v1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildMobileDataUsage(IZ)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileTraffic:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mStatisticAppTraffic:Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v1, v1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildWifiDataUsage(IZ)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWifiTraffic:Landroid/util/SparseArray;

    goto :goto_0
.end method

.method private updateDragView(FFI)V
    .locals 6

    invoke-direct {p0, p3}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->getTimeInterval(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTrafficDragView:Lcom/miui/networkassistant/ui/view/TrafficDragView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, p3}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->getTraffic(I)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/ui/view/TrafficDragView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->getScreenX(F)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mDensity:F

    const/high16 v2, 0x42200000    # 40.0f

    mul-float/2addr v1, v2

    sub-float v1, p2, v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTrafficDragView:Lcom/miui/networkassistant/ui/view/TrafficDragView;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateLastMonthTraffic()V
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v2, 0x0

    const/16 v8, 0x1f

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mStatisticAppTraffic:Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v1, v1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->getAppLastMonthPerDayTraffic(I)Landroid/util/SparseArray;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLastMonthWlanTrafficPreDayList:[J

    if-nez v0, :cond_0

    new-array v0, v8, [J

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLastMonthWlanTrafficPreDayList:[J

    new-array v0, v8, [J

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLastMonthMobileTrafficPreDayList:[J

    :cond_0
    if-nez v3, :cond_1

    return-void

    :cond_1
    move v1, v2

    :goto_0
    if-ge v1, v8, :cond_3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLastMonthMobileTrafficPreDayList:[J

    aget-object v5, v0, v2

    invoke-virtual {v5}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v6

    aput-wide v6, v4, v1

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLastMonthWlanTrafficPreDayList:[J

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v6

    aput-wide v6, v4, v1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLastMonthMobileTrafficPreDayList:[J

    aput-wide v10, v0, v1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLastMonthWlanTrafficPreDayList:[J

    aput-wide v10, v0, v1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private updateSpinnerHead(Ljava/lang/String;J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1, p2, p3}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateThisMonthTraffic()V
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v2, 0x0

    const/16 v8, 0x1f

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mStatisticAppTraffic:Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v1, v1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->getAppThisMonthPerDayTraffic(I)Landroid/util/SparseArray;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMonthWlanTrafficPerDayList:[J

    if-nez v0, :cond_0

    new-array v0, v8, [J

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMonthWlanTrafficPerDayList:[J

    new-array v0, v8, [J

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMonthMobileTrafficPerDayList:[J

    :cond_0
    if-nez v3, :cond_1

    return-void

    :cond_1
    move v1, v2

    :goto_0
    if-ge v1, v8, :cond_3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMonthMobileTrafficPerDayList:[J

    aget-object v5, v0, v2

    invoke-virtual {v5}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v6

    aput-wide v6, v4, v1

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMonthWlanTrafficPerDayList:[J

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v6

    aput-wide v6, v4, v1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMonthMobileTrafficPerDayList:[J

    aput-wide v10, v0, v1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMonthWlanTrafficPerDayList:[J

    aput-wide v10, v0, v1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private updateTodayTraffic()V
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v2, 0x0

    const/16 v8, 0x18

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mStatisticAppTraffic:Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v1, v1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->getAppTodayPerHourTraffic(I)Landroid/util/SparseArray;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTodayMobileTrafficPerHourList:[J

    if-nez v0, :cond_0

    new-array v0, v8, [J

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTodayMobileTrafficPerHourList:[J

    new-array v0, v8, [J

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTodayWlanTrafficPerHourList:[J

    :cond_0
    if-nez v3, :cond_1

    return-void

    :cond_1
    move v1, v2

    :goto_0
    if-ge v1, v8, :cond_3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTodayMobileTrafficPerHourList:[J

    aget-object v5, v0, v2

    invoke-virtual {v5}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v6

    aput-wide v6, v4, v1

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTodayWlanTrafficPerHourList:[J

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v6

    aput-wide v6, v4, v1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTodayMobileTrafficPerHourList:[J

    aput-wide v10, v0, v1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTodayWlanTrafficPerHourList:[J

    aput-wide v10, v0, v1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private updateTraffic()V
    .locals 2

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$11;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$11;-><init>(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$11;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private updateYesterdayTraffic()V
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v2, 0x0

    const/16 v8, 0x18

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mStatisticAppTraffic:Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v1, v1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->getAppYesterdayPerHourTraffic(I)Landroid/util/SparseArray;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mYesterdayMobileTrafficPerHourList:[J

    if-nez v0, :cond_0

    new-array v0, v8, [J

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mYesterdayMobileTrafficPerHourList:[J

    new-array v0, v8, [J

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mYesterdayWlanTrafficPerHourList:[J

    :cond_0
    if-nez v3, :cond_1

    return-void

    :cond_1
    move v1, v2

    :goto_0
    if-ge v1, v8, :cond_3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mYesterdayMobileTrafficPerHourList:[J

    aget-object v5, v0, v2

    invoke-virtual {v5}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v6

    aput-wide v6, v4, v1

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mYesterdayWlanTrafficPerHourList:[J

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v6

    aput-wide v6, v4, v1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mYesterdayMobileTrafficPerHourList:[J

    aput-wide v10, v0, v1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mYesterdayWlanTrafficPerHourList:[J

    aput-wide v10, v0, v1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method protected initView()V
    .locals 5

    const/4 v4, 0x1

    const v0, 0x7f0a01a9

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a01aa

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLabel:Landroid/widget/TextView;

    const v0, 0x7f0a01ab

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mVersion:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppContext:Landroid/content/Context;

    const v1, 0x7f070233

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mVersionStr:Ljava/lang/String;

    const-string/jumbo v0, "com.xiaomi.xmsf"

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mRealPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a01b4

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMiServiceAppDetailItem:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMiServiceAppDetailItem:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMiServiceAppDetailItem:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    const v1, 0x7f0702fc

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setName(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMiServiceAppDetailItem:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    invoke-virtual {v0, p0}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0a01af

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppDetailTrafficView:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppDetailTrafficView:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

    invoke-virtual {v0, p0}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->setChartDragListener(Lcom/miui/networkassistant/ui/view/AppDetailTrafficView$ChartDragListener;)V

    const v0, 0x7f0a01b0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mNetworkTrafficWarningLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01ac

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleLayout:Landroid/view/View;

    const v0, 0x7f0a01ad

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleView:Landroid/widget/TextView;

    const v0, 0x7f0a01ae

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mDropDownArrowImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleStrings:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->initSpinnerData()V

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTodayStart:J

    invoke-static {v4}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthBeginTimeMillis(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mThisMonthStart:J

    invoke-static {v4}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthEndTimeMillis(I)J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mThisMonthEnd:J

    invoke-static {v4}, Lcom/miui/networkassistant/utils/DateUtil;->getLastMonthBeginTimeMillis(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLastMonthStart:J

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleLayout:Landroid/view/View;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mDropDownSingleChoiceMenu:Lmiui/widget/DropDownSingleChoiceMenu;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleType:I

    invoke-virtual {v0, v1}, Lmiui/widget/DropDownSingleChoiceMenu;->setSelectedItem(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mDropDownSingleChoiceMenu:Lmiui/widget/DropDownSingleChoiceMenu;

    invoke-virtual {v0}, Lmiui/widget/DropDownSingleChoiceMenu;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMiServiceAppDetailItem:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "package_name"

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget-object v2, v2, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "title_type"

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;

    invoke-static {v1, v2, v0}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->setHasOptionsMenu(Z)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->initBundleData()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->bindFirewallService()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppMonitorWrapper:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppMonitorWrapper:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppMonitorListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->registerLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from_appmanager"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mIsFromAM:Z

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1, p2}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mIsFromAM:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mIsManagedProfileApp:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const v0, 0x7f07023e

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppDetailMenuItem:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppDetailMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f02005b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppDetailMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppDetailMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    return-void
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f030091

    return v0
.end method

.method protected onCustomizeActionBar(Landroid/app/ActionBar;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->unBindFirewallService()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppMonitorWrapper:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppMonitorListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->unRegisterLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V

    return-void
.end method

.method public onDragEnd()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTrafficDragView:Lcom/miui/networkassistant/ui/view/TrafficDragView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTrafficDragView:Lcom/miui/networkassistant/ui/view/TrafficDragView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTrafficDragView:Lcom/miui/networkassistant/ui/view/TrafficDragView;

    :cond_0
    return-void
.end method

.method public onDragMove(FFI)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->initDrag()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTrafficDragView:Lcom/miui/networkassistant/ui/view/TrafficDragView;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->initDragView(FFI)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->updateDragView(FFI)V

    return-void
.end method

.method public onDragStart(FFI)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->initDrag()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTrafficDragView:Lcom/miui/networkassistant/ui/view/TrafficDragView;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->initDragView(FFI)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->updateDragView(FFI)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->showAppDetail()V

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->onResume()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->checkPackageAvailable()V

    return-void
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f070232

    return v0
.end method

.method protected onTrafficManageServiceConnected()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
