.class public Lcom/miui/networkassistant/ui/NetworkAssistantActivity;
.super Lcom/miui/networkassistant/ui/activity/BaseStatsActivity;
.source ""


# static fields
.field private static final MSG_TRAFFIC_MANAGE_SERVICE_CONNECTED:I = 0x1

.field private static final MSG_TRAFFIC_UPDATE_DATA:I = 0x2

.field private static final MSG_UPDATE_BG_AND_WATER:I = 0x3

.field private static final TAG:Ljava/lang/String; = "NAMainActivity"

.field private static final synthetic tc:[I


# instance fields
.field private mBackTextView:Landroid/widget/TextView;

.field private mBackgroundView:Lcom/miui/networkassistant/ui/view/BackgroundView;

.field private mCachedTotal:J

.field private mCachedUsed:J

.field private mCachedWarnLevel:F

.field private mCurrentOperateSlotNum:I

.field private mDataReady:Z

.field private mHandler:Landroid/os/Handler;

.field private mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

.field private mIsDualCard:Z

.field private mMainIndicatorView:Lcom/miui/networkassistant/ui/view/MainIndicatorView;

.field private mMainViewPager:Landroid/support/v4/view/ViewPager;

.field private mMobileStatus:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnDailyCardGuideDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPagerViews:Ljava/util/ArrayList;

.field private mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

.field private mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

.field private mToolbar:Landroid/view/View;

.field private mToolbarFirewall:Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

.field private mToolbarUsagePurchase:Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

.field private mToolbarUsageSorted:Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

.field private mTrafficCornBinderListenerHost:Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;

.field private mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

.field private mTrafficInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;

.field private mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

.field private mTrafficManageConnection:Landroid/content/ServiceConnection;

.field private mTrafficUsedViews:[Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficCornBinderListenerHost:Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;

    return-object v0
.end method

.method static synthetic -get11(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)[Lcom/miui/networkassistant/service/ITrafficCornBinder;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    return-object v0
.end method

.method static synthetic -get12(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Lcom/miui/networkassistant/service/ITrafficManageBinder;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCachedTotal:J

    return-wide v0
.end method

.method static synthetic -get3(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCachedUsed:J

    return-wide v0
.end method

.method static synthetic -get4(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)F
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCachedWarnLevel:F

    return v0
.end method

.method static synthetic -get5(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    return v0
.end method

.method static synthetic -get6(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mIsDualCard:Z

    return v0
.end method

.method static synthetic -get8(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMobileStatus:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    return-object v0
.end method

.method static synthetic -get9(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)[Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    return p1
.end method

.method static synthetic -set1(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;Lcom/miui/networkassistant/service/ITrafficManageBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;I)Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getSimUserInfo(I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;JJF)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->doUpdateBgView(JJF)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->initData()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->onMainButtonClick()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateDataAndBg(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateData(IZ)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateMainIndicator(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateSelectedMainView(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/BaseStatsActivity;-><init>()V

    sget-object v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->Init:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMobileStatus:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mIsDualCard:Z

    iput-boolean v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mDataReady:Z

    new-array v0, v1, [Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficUsedViews:[Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    new-array v0, v1, [Lcom/miui/networkassistant/service/ITrafficCornBinder;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    new-array v0, v1, [Lcom/miui/networkassistant/config/SimUserInfo;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    iput v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCachedTotal:J

    new-instance v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$1;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    new-instance v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$2;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    new-instance v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$4;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$4;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$5;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$5;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficCornBinderListenerHost:Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;

    new-instance v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$6;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$6;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$7;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$7;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;

    new-instance v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mOnDailyCardGuideDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private addMainTrafficUsedView(I)V
    .locals 3

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficUsedViews:[Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    const v0, 0x7f030190

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    aput-object v0, v1, p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficUsedViews:[Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficUsedViews:[Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mPagerViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficUsedViews:[Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private bindTrafficManageService()V
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->getInstance()Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->bindTmService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private checkMobileStatus(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getSimUserInfo(I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/miui/networkassistant/utils/MiSimUtil;->isMiSimEnable(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->VirtualCard:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMobileStatus:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->isDualCardSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->MiSimPending:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMobileStatus:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->NoSimCardInfo:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMobileStatus:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficManageControlEnable()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->TrafficCtrlClosed:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMobileStatus:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isOversea()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isNetworkRoaming(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->OverseaRoaming:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMobileStatus:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->Oversea:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMobileStatus:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSmsAvailable()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->NormalRoaming:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMobileStatus:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isNotLimitCardEnable()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->UnLimitedCard:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMobileStatus:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    goto :goto_0

    :cond_7
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->isTotalDataUsageSetted(I)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->NoTotalPackage:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMobileStatus:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    goto :goto_0

    :cond_8
    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isOperatorSetted()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->NoOperatorSet:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMobileStatus:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    goto :goto_0

    :cond_9
    sget-object v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->Normal:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMobileStatus:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    goto :goto_0
.end method

.method private checkTrafficPurchaseEnable(I)V
    .locals 5

    const/4 v0, 0x0

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getSimUserInfo(I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isNATipsEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->setNATipsEnable(Z)Z

    iget-object v3, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/networkassistant/utils/TrafficUpdateUtil;->broadCastTrafficUpdated(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/miui/networkassistant/traffic/purchase/CooperationManager;->isTrafficPurchaseAvailable(Landroid/content/Context;Lcom/miui/networkassistant/config/SimUserInfo;Z)Z

    iget-object v3, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolbarUsagePurchase:Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

    if-eqz v1, :cond_2

    :goto_0
    invoke-virtual {v3, v0}, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->setVisibility(I)V

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->isCNLanguage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/utils/MiSimUtil;->isMiSimEnable(Landroid/content/Context;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolbarUsagePurchase:Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getNATrafficPurchaseOrderTips()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->setDescFromHtml(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private doUpdateBgView(JJF)V
    .locals 5

    const/4 v4, 0x1

    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    move-result-object v0

    long-to-float v1, p3

    long-to-float v2, p1

    mul-float/2addr v2, p5

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMainButtonBg(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mBackgroundView:Lcom/miui/networkassistant/ui/view/BackgroundView;

    sget v1, Lcom/miui/networkassistant/ui/view/BackgroundView;->RES_BG_COLOR_BLUE:I

    sget v2, Lcom/miui/networkassistant/ui/view/BackgroundView;->RES_BG_COLOR_BLUE:I

    invoke-virtual {v0, v1, v2, v4}, Lcom/miui/networkassistant/ui/view/BackgroundView;->setResBgColor(IIZ)V

    :goto_0
    return-void

    :cond_1
    cmp-long v1, p3, p1

    if-gez v1, :cond_2

    invoke-virtual {v0, v4}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMainButtonBg(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mBackgroundView:Lcom/miui/networkassistant/ui/view/BackgroundView;

    sget v1, Lcom/miui/networkassistant/ui/view/BackgroundView;->RES_BG_COLOR_YELLOW1:I

    sget v2, Lcom/miui/networkassistant/ui/view/BackgroundView;->RES_BG_COLOR_YELLOW2:I

    invoke-virtual {v0, v1, v2, v4}, Lcom/miui/networkassistant/ui/view/BackgroundView;->setResBgColor(IIZ)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMainButtonBg(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mBackgroundView:Lcom/miui/networkassistant/ui/view/BackgroundView;

    sget v1, Lcom/miui/networkassistant/ui/view/BackgroundView;->RES_BG_COLOR_RED1:I

    sget v2, Lcom/miui/networkassistant/ui/view/BackgroundView;->RES_BG_COLOR_RED2:I

    invoke-virtual {v0, v1, v2, v4}, Lcom/miui/networkassistant/ui/view/BackgroundView;->setResBgColor(IIZ)V

    goto :goto_0
.end method

.method private getSimUserInfo(I)Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private getTitleOperatorName(I)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const v0, 0x7f0702fa

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getSimName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string/jumbo v2, "%s(%s) "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f0702fb

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mAppContext:Landroid/content/Context;

    const v2, 0x7f070202

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getTrafficCorrection(I)Lcom/miui/networkassistant/service/ITrafficCornBinder;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficUsedViews:[Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private initData()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mDataReady:Z

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->initDualView()V

    const-string/jumbo v0, "NAMainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "slot num : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateDataAndBg(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMainViewPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    rsub-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateMainIndicator(I)V

    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateMainIndicator(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->parseGuideDailyCardSetting()V

    return-void
.end method

.method private initDualView()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mPagerViews:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->isDualCardSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->addMainTrafficUsedView(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->addMainTrafficUsedView(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMainIndicatorView:Lcom/miui/networkassistant/ui/view/MainIndicatorView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainIndicatorView;->setMainIndicatorListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mBackTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v0, 0x7f0a007c

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMainViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMainViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/miui/networkassistant/ui/adapter/MainTrafficViewPagerAdapter;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mPagerViews:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/ui/adapter/MainTrafficViewPagerAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMainViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->addMainTrafficUsedView(I)V

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    const v0, 0x7f0a006d

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolbar:Landroid/view/View;

    invoke-static {}, Lcom/miui/common/b/e;->aHv()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolbar:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/NotchUtil;->setNotchToolbarMarginTop(Landroid/content/Context;Landroid/view/View;)V

    :cond_0
    const v0, 0x7f0a007b

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/MainIndicatorView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMainIndicatorView:Lcom/miui/networkassistant/ui/view/MainIndicatorView;

    const v0, 0x7f0a007f

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolbarFirewall:Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

    const v0, 0x7f0a0080

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolbarUsageSorted:Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

    const v0, 0x7f0a007d

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolbarUsagePurchase:Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolbarFirewall:Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

    const v1, 0x7f0701df

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->setName(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolbarUsageSorted:Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

    const v1, 0x7f0701e0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->setName(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolbarUsagePurchase:Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

    const v1, 0x7f0701e1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->setName(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolbarFirewall:Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

    const v1, 0x7f020208

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->setIcon(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolbarUsageSorted:Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

    const v1, 0x7f020222

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->setIcon(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolbarUsagePurchase:Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

    const v1, 0x7f02021a

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->setIcon(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolbarFirewall:Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolbarUsageSorted:Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolbarUsagePurchase:Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a003f

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mBackTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mBackTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0047

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0078

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/BackgroundView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mBackgroundView:Lcom/miui/networkassistant/ui/view/BackgroundView;

    return-void
.end method

.method private isDualCardSupport()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mIsDualCard:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v1}, Lcom/miui/networkassistant/dual/SimCardHelper;->isDualSimInserted()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v1}, Lcom/miui/networkassistant/dual/SimCardHelper;->isDualSimInsertedOne()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/networkassistant/utils/MiSimUtil;->isSupportGlobalVirtualSim(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/MiSimUtil;->isMiSimCloudEnable(Landroid/content/Context;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isTotalDataUsageSetted(I)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result v0

    return v0
.end method

.method private odUpdateNormalTraffic(IZ)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->showTrafficAdjusting(I)V

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateNormalTraffic(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private onMainButtonClick()V
    .locals 5

    const/4 v2, 0x1

    invoke-static {}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->uY()[I

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMobileStatus:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->setTrafficManually()V

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->openTrafficCtrl(I)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "traffic_guide"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {v1, v2, v0}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    const-string/jumbo v0, "flow_set"

    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackMainButtonClickCountEvent(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSupportCorrection()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->setAdjustTrafficManually()V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-interface {v0, v2, v1, v3, v4}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->startCorrection(ZIZI)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    move-result-object v0

    iget v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getSimUserInfo(I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyUsedCardEffective()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMobileStatus:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    sget-object v2, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->UnLimitedCard:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    if-ne v1, v2, :cond_3

    :cond_1
    const v1, 0x7f0701e4

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonText(I)V

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonEnable(Z)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setErrorTextVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    const-string/jumbo v0, "flow_correction"

    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackMainButtonClickCountEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const v1, 0x7f0701e3

    :try_start_1
    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonText(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NAMainActivity"

    const-string/jumbo v2, "startCorrection "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :pswitch_5
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mAppContext:Landroid/content/Context;

    const-string/jumbo v1, "misim://router?launchfrom=netasistant"

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/MiSimUtil;->startMiSimMainActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    move-result-object v0

    const v1, 0x7f070205

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonText(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mAppContext:Landroid/content/Context;

    const-string/jumbo v1, "assistInfo"

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->startVirtualSimActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method private openTrafficCtrl(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficManageControlEnable(Z)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private parseGuideDailyCardSetting()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getSimUserInfo(I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyCardSettingGuideEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isOversea()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyCardSettingGuideEnable(Z)Z

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->showDailyCardSettingGuideDialog()V

    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    rsub-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getSimUserInfo(I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyCardSettingGuideEnable(Z)Z

    return-void
.end method

.method private parseSlotNum()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mIsDualCard:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "sim_slot_num_tag"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "sim_slot_num_tag"

    iget v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    :cond_0
    return-void
.end method

.method private setAdjustTrafficManually()V
    .locals 3

    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getSimUserInfo(I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    const v1, 0x7f070286

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070289

    invoke-virtual {p0, v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->clearInputText()V

    goto :goto_0
.end method

.method private setTrafficManually()V
    .locals 2

    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getSimUserInfo(I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->setAdjustTrafficManually()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private showDailyCardSettingGuideDialog()V
    .locals 3

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mOnDailyCardGuideDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;-><init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mAppContext:Landroid/content/Context;

    const v2, 0x7f07020e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mAppContext:Landroid/content/Context;

    const v2, 0x7f07020f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->setMessage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mAppContext:Landroid/content/Context;

    const v2, 0x7f070210

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->setPostiveText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mAppContext:Landroid/content/Context;

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->setNagetiveText(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->show()V

    return-void
.end method

.method private showNoTotalPackageView(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->showTrafficAdjusting(I)V

    const v1, 0x7f0701fb

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->showPrimaryMessage(I)V

    invoke-direct {p0, v0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateTrafficUsedOnly(Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;I)V

    return-void
.end method

.method private showTrafficAdjusting(I)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficCorrection(I)Lcom/miui/networkassistant/service/ITrafficCornBinder;

    move-result-object v3

    if-eqz v3, :cond_7

    :try_start_0
    invoke-interface {v3}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->isConfigUpdated()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    move-result-object v4

    if-nez v0, :cond_4

    if-eqz v3, :cond_1

    :try_start_1
    invoke-interface {v3}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->getTcType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getSimUserInfo(I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyUsedCardEffective()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const v0, 0x7f0701e4

    invoke-virtual {v4, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonText(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    invoke-virtual {v4, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonEnable(Z)V

    :goto_2
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "NAMainActivity"

    const-string/jumbo v5, "trafficCornBinder"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    goto :goto_0

    :cond_3
    const v0, 0x7f0701e3

    :try_start_2
    invoke-virtual {v4, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonText(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v2, "NAMainActivity"

    const-string/jumbo v3, "trafficCornBinder"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->isTotalDataUsageSetted(I)Z

    move-result v0

    if-nez v0, :cond_5

    const v0, 0x7f0701e6

    invoke-virtual {v4, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonText(I)V

    invoke-virtual {v4, v2}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonEnable(Z)V

    goto :goto_2

    :cond_5
    const v0, 0x7f0701e2

    invoke-virtual {v4, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonText(I)V

    invoke-virtual {v4, v2}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonEnable(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getTrafficTcResultCode()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v4, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setErrorTextVisibility(I)V

    goto :goto_2

    :cond_6
    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setErrorTextVisibility(I)V

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_0
.end method

.method private static synthetic uY()[I
    .locals 3

    sget-object v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->tc:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->tc:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->values()[Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->Init:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->MiSimPending:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->NoOperatorSet:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->NoSimCardInfo:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_3
    :try_start_4
    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->NoTotalPackage:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_4
    :try_start_5
    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->Normal:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_5
    :try_start_6
    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->NormalRoaming:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_6
    :try_start_7
    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->Oversea:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_7
    :try_start_8
    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->OverseaRoaming:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_8
    :try_start_9
    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->TrafficCtrlClosed:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_9
    :try_start_a
    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->UnLimitedCard:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_a
    :try_start_b
    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->VirtualCard:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_b
    sput-object v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->tc:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_b

    :catch_1
    move-exception v1

    goto :goto_a

    :catch_2
    move-exception v1

    goto :goto_9

    :catch_3
    move-exception v1

    goto :goto_8

    :catch_4
    move-exception v1

    goto :goto_7

    :catch_5
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_5

    :catch_7
    move-exception v1

    goto :goto_4

    :catch_8
    move-exception v1

    goto :goto_3

    :catch_9
    move-exception v1

    goto :goto_2

    :catch_a
    move-exception v1

    goto :goto_1

    :catch_b
    move-exception v1

    goto/16 :goto_0
.end method

.method private unbindTrafficManageService()V
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->getInstance()Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->unbindTmService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private updateBgView(JJF)V
    .locals 5

    const/4 v4, 0x3

    iget-wide v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCachedTotal:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct/range {p0 .. p5}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->doUpdateBgView(JJF)V

    :cond_0
    iput-wide p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCachedTotal:J

    iput-wide p3, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCachedUsed:J

    iput p5, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCachedWarnLevel:F

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private updateData(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mDataReady:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->checkMobileStatus(I)V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->checkTrafficPurchaseEnable(I)V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMainBottomViewVisible(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonEnable(Z)V

    const v1, 0x7f0701e2

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonText(I)V

    invoke-static {}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->uY()[I

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMobileStatus:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateNoInsertSimCard(I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateMiSimCardAdded(I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateOverSeaTraffic(IZ)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateNormalRoamingTraffic(IZ)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateTrafficCtl(I)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->showNoTotalPackageView(I)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->odUpdateNormalTraffic(IZ)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateVirtualSimTraffic(I)V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateUnLimitedCardTraffic(IZ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private updateDataAndBg(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateData(IZ)V

    return-void
.end method

.method private updateMainIndicator(I)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->isDualCardSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMainIndicatorView:Lcom/miui/networkassistant/ui/view/MainIndicatorView;

    iget v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainIndicatorView;->toggleIndicator(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMainIndicatorView:Lcom/miui/networkassistant/ui/view/MainIndicatorView;

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTitleOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/networkassistant/ui/view/MainIndicatorView;->setMainIndicatorTitle(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getMiSimCardTips()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMainIndicatorView:Lcom/miui/networkassistant/ui/view/MainIndicatorView;

    const v1, 0x7f020338

    invoke-virtual {v0, p1, v1}, Lcom/miui/networkassistant/ui/view/MainIndicatorView;->setIndicatorImage(II)V

    :cond_0
    return-void
.end method

.method private updateMiSimCardAdded(I)V
    .locals 9

    const-wide/16 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonVisible(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mAppContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mAppContext:Landroid/content/Context;

    const v5, 0x7f070204

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/miui/networkassistant/utils/MiSimUtil;->getMiSimActiveBtnTxt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mAppContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mAppContext:Landroid/content/Context;

    const v5, 0x7f070203

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/miui/networkassistant/utils/MiSimUtil;->getMiSimActiveDesc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setSimCardAddedInfo(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonEnable(Z)V

    const/4 v6, 0x0

    move-wide v4, v2

    invoke-virtual/range {v1 .. v7}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthPackageInfo(JJFZ)V

    invoke-virtual {v1, v7, v2, v3}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setLeisureTrafficRemained(ZJ)V

    invoke-virtual {v1, v7}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthRemainedViewVisible(Z)V

    invoke-virtual {v1, v7}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setUnitTextViewVisible(Z)V

    invoke-virtual {v1, v7}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setPrimaryTextLayoutVisible(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMainIndicatorView:Lcom/miui/networkassistant/ui/view/MainIndicatorView;

    invoke-virtual {v0, p1, v7}, Lcom/miui/networkassistant/ui/view/MainIndicatorView;->setIndicatorImage(II)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0, v8}, Lcom/miui/networkassistant/config/SimUserInfo;->setMiSimCardTips(Z)Z

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-virtual {v1, v7}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setBillLayoutVisible(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mBackgroundView:Lcom/miui/networkassistant/ui/view/BackgroundView;

    sget v1, Lcom/miui/networkassistant/ui/view/BackgroundView;->RES_BG_COLOR_BLUE:I

    sget v2, Lcom/miui/networkassistant/ui/view/BackgroundView;->RES_BG_COLOR_BLUE:I

    invoke-virtual {v0, v1, v2, v8}, Lcom/miui/networkassistant/ui/view/BackgroundView;->setResBgColor(IIZ)V

    return-void
.end method

.method private updateNoInsertSimCard(I)V
    .locals 9

    const/4 v8, 0x1

    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonVisible(Z)V

    const/4 v6, 0x0

    move-wide v4, v2

    invoke-virtual/range {v1 .. v7}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthPackageInfo(JJFZ)V

    invoke-virtual {v1, v7, v2, v3}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setLeisureTrafficRemained(ZJ)V

    invoke-virtual {v1, v7}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthRemainedViewVisible(Z)V

    invoke-virtual {v1, v7}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setUnitTextViewVisible(Z)V

    invoke-virtual {v1, v7}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setPrimaryTextLayoutVisible(Z)V

    invoke-virtual {v1, v8}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setSimNotInsertedVisible(Z)V

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-virtual {v1, v7}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setBillLayoutVisible(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mBackgroundView:Lcom/miui/networkassistant/ui/view/BackgroundView;

    sget v1, Lcom/miui/networkassistant/ui/view/BackgroundView;->RES_BG_COLOR_BLUE:I

    sget v2, Lcom/miui/networkassistant/ui/view/BackgroundView;->RES_BG_COLOR_BLUE:I

    invoke-virtual {v0, v1, v2, v8}, Lcom/miui/networkassistant/ui/view/BackgroundView;->setResBgColor(IIZ)V

    return-void
.end method

.method private updateNormalRoamingTraffic(IZ)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getSimUserInfo(I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0701e5

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonText(I)V

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateNormalTraffic(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->showNoTotalPackageView(I)V

    goto :goto_0
.end method

.method private updateNormalTraffic(IZ)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    move-result-object v9

    invoke-direct/range {p0 .. p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getSimUserInfo(I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCurrentMonthTotalPackage(I)J

    move-result-wide v4

    invoke-virtual/range {v18 .. v18}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageWarning()F

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getTodayDataUsageUsed(I)J

    move-result-wide v2

    invoke-virtual {v9, v2, v3}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setTodayUsed(J)V

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setHasLeisure(Z)V

    const/4 v2, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageEffective()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct/range {p0 .. p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->isTotalDataUsageSetted(I)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static/range {v18 .. v18}, Lcom/miui/networkassistant/traffic/statistic/LeisureTrafficHelper;->isLeisureTime(Lcom/miui/networkassistant/config/SimUserInfo;)Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCorrectedNormalAndLeisureMonthTotalUsed(I)[J

    move-result-object v10

    invoke-virtual/range {v18 .. v18}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageTotal()J

    move-result-wide v12

    const/4 v2, 0x1

    aget-wide v2, v10, v2

    cmp-long v2, v2, v12

    if-ltz v2, :cond_5

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x1

    aget-wide v6, v10, v3

    sub-long v6, v12, v6

    const/4 v3, 0x1

    invoke-virtual {v9, v3, v6, v7}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setLeisureTrafficRemained(ZJ)V

    if-eqz v17, :cond_9

    if-eqz p2, :cond_9

    if-eqz v17, :cond_1

    if-eqz v2, :cond_6

    :cond_1
    const/4 v2, 0x0

    aget-wide v6, v10, v2

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateBgView(JJF)V

    const/4 v2, 0x0

    aget-wide v10, v10, v2

    const/4 v15, 0x1

    move-wide v12, v4

    move v14, v8

    invoke-virtual/range {v9 .. v15}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthPackageInfo(JJFZ)V

    move/from16 v2, v17

    :goto_1
    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCorrectedNormalMonthDataUsageUsed(I)J

    move-result-wide v10

    invoke-virtual/range {v18 .. v18}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyUsedCardEffective()Z

    move-result v2

    if-eqz v2, :cond_8

    const v2, 0x7f070201

    invoke-virtual {v9, v2}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthUsedText(I)V

    :goto_2
    const/4 v15, 0x1

    move-wide v12, v4

    move v14, v8

    invoke-virtual/range {v9 .. v15}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthPackageInfo(JJFZ)V

    if-eqz p2, :cond_2

    move-object/from16 v3, p0

    move-wide v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateBgView(JJF)V

    :cond_2
    invoke-virtual/range {v18 .. v18}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillPackageRemained()J

    move-result-wide v2

    invoke-virtual {v9, v2, v3}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setBillRemainedTextView(J)V

    invoke-direct/range {p0 .. p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getSimUserInfo(I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageCorrectedTime()J

    move-result-wide v2

    invoke-virtual {v9, v2, v3}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setPreAdjustTime(J)V

    invoke-virtual/range {v18 .. v18}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataRoaming()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct/range {p0 .. p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->isTotalDataUsageSetted(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {v18 .. v18}, Lcom/miui/networkassistant/config/SimUserInfo;->isOperatorSetted()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {v18 .. v18}, Lcom/miui/networkassistant/config/SimUserInfo;->getTrafficSmsDetail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v2}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthRemainedClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-virtual/range {v18 .. v18}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillSmsDetail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v2}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setBillLayoutClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void

    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setHasLeisure(Z)V

    const/4 v2, 0x1

    aget-wide v14, v10, v2

    move-object/from16 v11, p0

    move/from16 v16, v8

    invoke-direct/range {v11 .. v16}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateBgView(JJF)V

    const/4 v2, 0x1

    aget-wide v10, v10, v2

    const/4 v15, 0x1

    move v14, v8

    invoke-virtual/range {v9 .. v15}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthPackageInfo(JJFZ)V

    move/from16 v2, v17

    goto/16 :goto_1

    :cond_7
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    invoke-virtual {v9, v3, v6, v7}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setLeisureTrafficRemained(ZJ)V

    goto/16 :goto_1

    :cond_8
    const v2, 0x7f0701f1

    invoke-virtual {v9, v2}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthUsedText(I)V

    goto :goto_2

    :cond_9
    move/from16 v2, v17

    goto/16 :goto_1
.end method

.method private updateOverSeaTraffic(IZ)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getSimUserInfo(I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setBillLayoutVisible(Z)V

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0701e5

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonText(I)V

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateOverseaTraffic(IZ)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->showNoTotalPackageView(I)V

    goto :goto_0
.end method

.method private updateOverseaTraffic(IZ)V
    .locals 13

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getSimUserInfo(I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v2, p1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCurrentMonthTotalPackage(I)J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageWarning()F

    move-result v6

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCorrectedNormalMonthDataUsageUsed(I)J

    move-result-wide v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getTodayDataUsageUsed(I)J

    move-result-wide v8

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthPackageInfo(JJFZ)V

    invoke-virtual {v1, v8, v9}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setTodayUsed(J)V

    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v8, v9}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setLeisureTrafficRemained(ZJ)V

    if-eqz p2, :cond_1

    move-object v7, p0

    move-wide v8, v4

    move-wide v10, v2

    move v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateBgView(JJF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateSelectedMainView(I)V
    .locals 2

    iput p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMainViewPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateDataAndBg(I)V

    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateMainIndicator(I)V

    return-void
.end method

.method private updateTrafficCtl(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateTrafficUsedOnly(Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;I)V

    const v1, 0x7f0701ee

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->showPrimaryMessage(I)V

    const v1, 0x7f0701ef

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonText(I)V

    return-void
.end method

.method private updateTrafficUsedOnly(Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;I)V
    .locals 10

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v0, p2}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCorrectedNormalMonthDataUsageUsed(I)J

    move-result-wide v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v0, p2}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getTodayDataUsageUsed(I)J

    move-result-wide v8

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthPackageInfo(JJFZ)V

    invoke-virtual {p1, v8, v9}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setTodayUsed(J)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setLeisureTrafficRemained(ZJ)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMainButtonBg(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mBackgroundView:Lcom/miui/networkassistant/ui/view/BackgroundView;

    sget v1, Lcom/miui/networkassistant/ui/view/BackgroundView;->RES_BG_COLOR_BLUE:I

    sget v2, Lcom/miui/networkassistant/ui/view/BackgroundView;->RES_BG_COLOR_BLUE:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/ui/view/BackgroundView;->setResBgColor(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateUnLimitedCardTraffic(IZ)V
    .locals 8

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->showTrafficAdjusting(I)V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getSimUserInfo(I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v7

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v1, p1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getTodayDataUsageUsed(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setTodayUsed(J)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setHasLeisure(Z)V

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setLeisureTrafficRemained(ZJ)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v1, p1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCorrectedNormalMonthDataUsageUsed(I)J

    move-result-wide v2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f070240

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setUnlimitedMonthPackageInfo(JLjava/lang/String;)V

    if-eqz p2, :cond_1

    const-wide/16 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const-wide v2, 0x7fffffffffffffffL

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateBgView(JJF)V

    :cond_1
    invoke-virtual {v7}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillPackageRemained()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setBillRemainedTextView(J)V

    invoke-virtual {v7}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageCorrectedTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setPreAdjustTime(J)V

    invoke-virtual {v7}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataRoaming()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v7}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillSmsDetail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setBillLayoutClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateVirtualSimTraffic(I)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setHasLeisure(Z)V

    const v1, 0x7f070205

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonText(I)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v6, v2, v3}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setLeisureTrafficRemained(ZJ)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->parseVirtualSimInfo(Landroid/content/Context;)Lcom/miui/networkassistant/model/VirtualSimInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/miui/networkassistant/model/VirtualSimInfo;->getAssistKey1()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setTodayUsed(J)V

    invoke-virtual {v1}, Lcom/miui/networkassistant/model/VirtualSimInfo;->getAssistKey1Title()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMainTodayUsedTextView(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/networkassistant/model/VirtualSimInfo;->getAssistCenter()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthRemain(J)V

    invoke-virtual {v1}, Lcom/miui/networkassistant/model/VirtualSimInfo;->getAssistCenter()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const v2, 0x7f0701e8

    invoke-virtual {p0, v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setmTextPrimaryTextView(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Lcom/miui/networkassistant/model/VirtualSimInfo;->getAssistKey2Title()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v6}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthPackageViewVisible(Z)V

    :goto_1
    invoke-virtual {v1}, Lcom/miui/networkassistant/model/VirtualSimInfo;->getAssistBalance()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setBillRemainedTextView(J)V

    invoke-virtual {v1}, Lcom/miui/networkassistant/model/VirtualSimInfo;->getAssistBalanceTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMainBillRemainTextView(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/miui/networkassistant/model/VirtualSimInfo;->getAssistCenterTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setmTextPrimaryTextView(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/miui/networkassistant/model/VirtualSimInfo;->getAssistKey2()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthPackage(J)V

    invoke-virtual {v1}, Lcom/miui/networkassistant/model/VirtualSimInfo;->getAssistKey2Title()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMainMonthPackageTextView(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/networkassistant/ui/activity/BaseStatsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->parseSlotNum()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->initView()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->bindTrafficManageService()V

    return-void
.end method

.method protected onCreateContentView()I
    .locals 1

    const v0, 0x7f03000d

    return v0
.end method

.method protected onCustomizeActionBar(Landroid/app/ActionBar;)V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/activity/BaseStatsActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficCornBinderListenerHost:Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;->getStub()Lcom/miui/networkassistant/service/ITrafficCornBinderListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->unRegisterLisener(Lcom/miui/networkassistant/service/ITrafficCornBinderListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficCornBinderListenerHost:Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;->getStub()Lcom/miui/networkassistant/service/ITrafficCornBinderListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->unRegisterLisener(Lcom/miui/networkassistant/service/ITrafficCornBinderListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->unbindTrafficManageService()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NAMainActivity"

    const-string/jumbo v2, "unRegisterListener slot 1"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "NAMainActivity"

    const-string/jumbo v2, "unRegisterListener slot 2"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/miui/networkassistant/ui/activity/BaseStatsActivity;->onResume()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
