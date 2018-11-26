.class public Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;
.super Lcom/miui/networkassistant/ui/activity/BaseStatsActivity;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsCallback;


# static fields
.field static final MSG_ID_REFRESH_UI:I = 0x1

.field private static final NETWORK_SPEED_DIAL_MAX_SISE:F = 2097152.0f

.field private static final NETWORK_SPEED_REFRESH_INTERVAL:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "NetworkDiagnostics_main"

.field public static final TOTAL_RX_BYTE:Ljava/lang/String; = "total_rx_byte"

.field public static final TOTAL_TX_BYTE:Ljava/lang/String; = "total_tx_byte"

.field private static final URI_NA_TRAFFIC_STATS:Ljava/lang/String; = "content://com.miui.networkassistant.provider/na_traffic_stats"

.field public static mCurrentSignalStrength:I

.field private static final synthetic tb:[I


# instance fields
.field private mBgBlueView:Landroid/view/View;

.field private mBgOrangeView:Landroid/view/View;

.field mCheckNetworkStateTask:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$CheckNetworkStateTask;

.field private mCollapseListener:Landroid/view/animation/Animation$AnimationListener;

.field private mConnectionReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentSpeed:Ljava/util/concurrent/atomic/AtomicLong;

.field private mDiagnosticsBtn:Landroid/widget/Button;

.field private mDialView:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;

.field private mHandler:Landroid/os/Handler;

.field private mIsNetworkConnected:Z

.field private mIsShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLastHideView:Landroid/view/View;

.field private mLastRefreshSpeedTime:J

.field private mLastRefreshSpeedTotalBytes:J

.field private mLastShowViewId:I

.field private mLayoutToolbar:Landroid/view/View;

.field private mMovableLayoutOnScrollListener:Lcom/miui/common/customview/e;

.field private mNetworkDiagnosticsManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

.field private mNetworkDiagnosticsResultFragment:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;

.field private mNetworkDiagnosticsScanningFragment:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;

.field private mNetworkSpeedForAppsFragment:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

.field private mNetworkUri:Landroid/net/Uri;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mRefreshTask:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$RefreshTask;

.field private mRootLayout:Lcom/miui/common/customview/MovableLayout;

.field private mServerList:Ljava/util/ArrayList;

.field private mSpeedView:Lcom/miui/networkassistant/ui/view/NetworkSpeedView;

.field private mStatusBarShowNetworkSpeed:I

.field private mTestSpeedMenu:Landroid/view/MenuItem;

.field private mTvCurrentActiveNetworkType:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mNetworkDiagnosticsScanningFragment:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;

    return-object v0
.end method

.method static synthetic -get11(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mNetworkSpeedForAppsFragment:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    return-object v0
.end method

.method static synthetic -get12(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)Lcom/miui/common/customview/MovableLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mRootLayout:Lcom/miui/common/customview/MovableLayout;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mCurrentSpeed:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mDiagnosticsBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get4(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mDialView:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mIsShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get7(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mLastHideView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get8(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mLastShowViewId:I

    return v0
.end method

.method static synthetic -get9(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mNetworkDiagnosticsResultFragment:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mIsNetworkConnected:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->checkNetworkStatus()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->onStartDiagnosticsBtnClick()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->refreshNetworkSpeed()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->refreshUI()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->showNetworkStatus(Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/BaseStatsActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mCheckNetworkStateTask:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$CheckNetworkStateTask;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mIsShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mCurrentSpeed:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$1;-><init>(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$2;-><init>(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mMovableLayoutOnScrollListener:Lcom/miui/common/customview/e;

    new-instance v0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$3;-><init>(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$4;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$4;-><init>(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mCollapseListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$5;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$5;-><init>(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private checkNetworkStatus()V
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mCheckNetworkStateTask:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$CheckNetworkStateTask;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$CheckNetworkStateTask;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$CheckNetworkStateTask;-><init>(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mCheckNetworkStateTask:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$CheckNetworkStateTask;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mCheckNetworkStateTask:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$CheckNetworkStateTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mServerList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$CheckNetworkStateTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private getTotalByte()J
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mIsNetworkConnected:Z

    if-nez v0, :cond_0

    return-wide v6

    :cond_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mNetworkUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "total_tx_byte"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-string/jumbo v3, "total_rx_byte"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    add-long/2addr v0, v4

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_1
    return-wide v0

    :cond_1
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_1

    :cond_2
    move-wide v0, v6

    goto :goto_0
.end method

.method private initView()V
    .locals 3

    const v2, 0x7f0a0073

    const v0, 0x7f0a006d

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mLayoutToolbar:Landroid/view/View;

    const v0, 0x7f0a0071

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mTvCurrentActiveNetworkType:Landroid/widget/TextView;

    const v0, 0x7f0a006b

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mBgBlueView:Landroid/view/View;

    const v0, 0x7f0a006c

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mBgOrangeView:Landroid/view/View;

    const v0, 0x7f0a0070

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/NetworkSpeedView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mSpeedView:Lcom/miui/networkassistant/ui/view/NetworkSpeedView;

    const v0, 0x7f0a006f

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mDialView:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;

    const v0, 0x7f0a0072

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mDiagnosticsBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mDiagnosticsBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a003f

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a006e

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mNetworkSpeedForAppsFragment:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a0075

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mNetworkDiagnosticsScanningFragment:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a0076

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mNetworkDiagnosticsResultFragment:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;

    const v0, 0x7f0a006a

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/customview/MovableLayout;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mRootLayout:Lcom/miui/common/customview/MovableLayout;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mRootLayout:Lcom/miui/common/customview/MovableLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/MovableLayout;->aGa(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mRootLayout:Lcom/miui/common/customview/MovableLayout;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mMovableLayoutOnScrollListener:Lcom/miui/common/customview/e;

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/MovableLayout;->aFZ(Lcom/miui/common/customview/e;)V

    iput v2, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mLastShowViewId:I

    invoke-static {}, Lcom/miui/common/b/e;->aHv()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mLayoutToolbar:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/NotchUtil;->setNotchToolbarMarginTop(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {p0}, Lcom/miui/common/b/e;->aHw(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mRootLayout:Lcom/miui/common/customview/MovableLayout;

    invoke-virtual {v1, v0}, Lcom/miui/common/customview/MovableLayout;->aFY(I)V

    :cond_0
    return-void
.end method

.method private onStartDiagnosticsBtnClick()V
    .locals 6

    const v3, 0x7f0701d5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/network/f;->aLZ(Landroid/content/Context;)Lcom/miui/common/network/NetworkUtils$NetworkState;

    move-result-object v0

    sget-object v1, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBM:Lcom/miui/common/network/NetworkUtils$NetworkState;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBO:Lcom/miui/common/network/NetworkUtils$NetworkState;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBP:Lcom/miui/common/network/NetworkUtils$NetworkState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getCurrentMobileSlotNum()I

    move-result v0

    invoke-static {v1, v0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isNetworkRoaming(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/MessageDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mActivity:Landroid/app/Activity;

    const v3, 0x7f070393

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/provider/ExtraNetwork;->isMobileRestrict(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$6;

    invoke-direct {v2, p0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$6;-><init>(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)V

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mActivity:Landroid/app/Activity;

    const v3, 0x7f070391

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mActivity:Landroid/app/Activity;

    const v4, 0x7f070238

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mActivity:Landroid/app/Activity;

    const v5, 0x7f070392

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->startDiagnostic()V

    :cond_2
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->startDiagnostic()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isAirModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/MessageDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mActivity:Landroid/app/Activity;

    const v3, 0x7f070364

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mNetworkDiagnosticsManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    invoke-virtual {v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->isMobileDataEnable()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mNetworkDiagnosticsManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    invoke-virtual {v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->isWifiEnable()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->startDiagnostic()V

    :goto_0
    return-void

    :cond_5
    new-instance v0, Lcom/miui/networkassistant/ui/dialog/MessageDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mActivity:Landroid/app/Activity;

    const v3, 0x7f070363

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mAppContext:Landroid/content/Context;

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/MessageDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0701e7

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private refreshNetworkSpeed()V
    .locals 10

    const-wide/16 v6, 0x0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->getTotalByte()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v6

    if-nez v4, :cond_0

    iput-wide v6, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mLastRefreshSpeedTime:J

    iput-wide v6, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mLastRefreshSpeedTotalBytes:J

    :cond_0
    iget-object v4, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mCurrentSpeed:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-wide v4, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mLastRefreshSpeedTime:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mLastRefreshSpeedTime:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    iget-wide v4, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mLastRefreshSpeedTotalBytes:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    cmp-long v4, v0, v6

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mLastRefreshSpeedTotalBytes:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mCurrentSpeed:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v6, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mLastRefreshSpeedTotalBytes:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    iget-wide v8, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mLastRefreshSpeedTime:J

    sub-long v8, v2, v8

    div-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_1
    iput-wide v2, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mLastRefreshSpeedTime:J

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mLastRefreshSpeedTotalBytes:J

    return-void
.end method

.method private refreshUI()V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mSpeedView:Lcom/miui/networkassistant/ui/view/NetworkSpeedView;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mCurrentSpeed:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/networkassistant/ui/view/NetworkSpeedView;->updateNetworkSpeed(J)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mCurrentSpeed:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    long-to-float v1, v2

    mul-float/2addr v1, v0

    const/high16 v2, 0x4a000000    # 2097152.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mDialView:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->setSpeedPercent(I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private registerConnectionReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerSignalStrengthListener()V
    .locals 9

    const/4 v8, 0x0

    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v0, "miui.telephony.TelephonyManager"

    invoke-static {v0}, Lcom/miui/a/c/d;->btN(Ljava/lang/String;)Lcom/miui/a/c/d;

    move-result-object v0

    const-string/jumbo v1, "getDefault"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v8, v2}, Lcom/miui/a/c/d;->btO(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/miui/a/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/a/c/d;->btS()Lcom/miui/a/c/d;

    move-result-object v0

    const-string/jumbo v1, "listenForSlot"

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    const-class v3, Landroid/telephony/PhoneStateListener;

    aput-object v3, v2, v6

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v7

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    new-instance v4, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$SignalStrengthListener;

    invoke-direct {v4, v8}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$SignalStrengthListener;-><init>(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$SignalStrengthListener;)V

    aput-object v4, v3, v6

    const/16 v4, 0x101

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/a/c/d;->btQ(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/miui/a/c/d;

    return-void
.end method

.method private showNetworkStatus(Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->uX()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mTvCurrentActiveNetworkType:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/miui/common/network/f;->aMh(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mTvCurrentActiveNetworkType:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070360

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->switchBackground(Z)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/miui/common/network/f;->aLT(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mTvCurrentActiveNetworkType:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070361

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lcom/miui/common/network/f;->aMj(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mTvCurrentActiveNetworkType:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07035f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mTvCurrentActiveNetworkType:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070362

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v3}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->switchBackground(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startDiagnostic()V
    .locals 3

    const v2, 0x7f0a0075

    invoke-static {}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackNetworkDiagnosticsStart()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mDiagnosticsBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const v0, 0x7f0a0073

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->switchView(IIZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mNetworkDiagnosticsScanningFragment:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->startDiagnostic()V

    goto :goto_0
.end method

.method private switchBackground(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mBgBlueView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mBgOrangeView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mDialView:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;

    const v1, 0x7f080088

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->setSetpDialColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mBgBlueView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mBgOrangeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mDialView:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;

    const v1, 0x7f080089

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->setSetpDialColor(I)V

    goto :goto_0
.end method

.method private static synthetic uX()[I
    .locals 3

    sget-object v0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->tb:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->tb:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->values()[Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->BLOCKED:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    invoke-virtual {v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CANCELLED:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    invoke-virtual {v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CAPTIVEPORTAL:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    invoke-virtual {v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CONNECTED:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    invoke-virtual {v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->UNKNOWN:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    invoke-virtual {v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->tb:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/networkassistant/ui/activity/BaseStatsActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mServerList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mServerList:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->getCaptivePortalServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mServerList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->getDefaultCaptivePortalServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "content://com.miui.networkassistant.provider/na_traffic_stats"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mNetworkUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mNetworkDiagnosticsManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->initView()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->registerConnectionReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->registerSignalStrengthListener()V

    return-void
.end method

.method protected onCreateContentView()I
    .locals 1

    const v0, 0x7f03000b

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a0427

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mTestSpeedMenu:Landroid/view/MenuItem;

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mTestSpeedMenu:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onCustomizeActionBar(Landroid/app/ActionBar;)V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Lcom/miui/networkassistant/ui/activity/BaseStatsActivity;->onDestroy()V

    return-void
.end method

.method public onNetworkDiagnosticsDone(Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->showNetworkStatus(Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;)V

    return-void
.end method

.method public onNetworkDiagnosticsProcessChanged(I)V
    .locals 2

    const/16 v0, 0x64

    const/4 v1, 0x0

    if-gez p1, :cond_1

    :goto_0
    if-le v1, v0, :cond_0

    :goto_1
    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mDialView:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->setStepPercent(I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v1, p1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.providers.downloads.ui.MEASURE_SPEED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsSettingFragment;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0427
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Lcom/miui/networkassistant/ui/activity/BaseStatsActivity;->onPause()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "status_bar_show_network_speed"

    iget v2, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mStatusBarShowNetworkSpeed:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method protected onResume()V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/activity/BaseStatsActivity;->onResume()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mRefreshTask:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$RefreshTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mRefreshTask:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$RefreshTask;

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$RefreshTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mRefreshTask:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$RefreshTask;

    :cond_0
    new-instance v0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$RefreshTask;

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$RefreshTask;-><init>(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$RefreshTask;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mRefreshTask:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$RefreshTask;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mRefreshTask:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$RefreshTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$RefreshTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mIsShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->checkNetworkStatus()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "status_bar_show_network_speed"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mStatusBarShowNetworkSpeed:I

    iget v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mStatusBarShowNetworkSpeed:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "status_bar_show_network_speed"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mIsShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mRefreshTask:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$RefreshTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mRefreshTask:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$RefreshTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$RefreshTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mRefreshTask:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$RefreshTask;

    :cond_0
    invoke-super {p0}, Lcom/miui/networkassistant/ui/activity/BaseStatsActivity;->onStop()V

    return-void
.end method

.method public switchView(IIZ)V
    .locals 5

    const/4 v1, 0x0

    iput p1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mLastShowViewId:I

    const v0, 0x7f0a0073

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mRootLayout:Lcom/miui/common/customview/MovableLayout;

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/MovableLayout;->aGa(Z)V

    :goto_0
    invoke-virtual {p0, p2}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mDialView:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->setStepPercent(I)V

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mLastHideView:Landroid/view/View;

    new-instance v2, Lcom/miui/common/e/b;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/miui/common/e/b;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mActivity:Landroid/app/Activity;

    const v4, 0x7f040002

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mCollapseListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v2, v0, v3, v4}, Lcom/miui/common/e/b;->aLi(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)Lcom/miui/common/e/b;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mActivity:Landroid/app/Activity;

    const v3, 0x7f040003

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Lcom/miui/common/e/b;->aLi(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)Lcom/miui/common/e/b;

    invoke-virtual {v2}, Lcom/miui/common/e/b;->start()V

    return-void
.end method
