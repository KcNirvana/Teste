.class public Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;
.super Lcom/miui/common/a/a/k;
.source ""


# static fields
.field private static final MSG_ID_HIDE_LOADING:I = 0x2

.field private static final MSG_ID_REFRESH_UI:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NetworkSpeedForApps"


# instance fields
.field private mAdapter:Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;

.field private mConfirmForceStopDialog:Lcom/miui/networkassistant/ui/dialog/CommonDialog;

.field private mCurAppInfo:Lcom/miui/networkassistant/model/AppInfo;

.field private mCurrentActiveIface:Ljava/lang/String;

.field private mCurrentRefreshTime:J

.field private mEmptyView:Landroid/widget/TextView;

.field private mHandler:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$RefreshHandler;

.field private mLastRefreshTime:J

.field private mList:Landroid/widget/ListView;

.field private mLoadingDialog:Lmiui/app/ProgressDialog;

.field private mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

.field private mMonitorCenterListener:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$SpeedAppMonitorListener;

.field private mNetworkConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mRxTextView:Landroid/widget/TextView;

.field mSpeedDetail:Ljava/util/ArrayList;

.field private mSpeedTotalInfo:Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$NetworkSpeedTotalInfo;

.field private mStatusBarShowNetworkSpeed:I

.field private mTxTextView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)Lcom/miui/networkassistant/ui/dialog/CommonDialog;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mConfirmForceStopDialog:Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    return-object v0
.end method

.method static synthetic -get4(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)Lcom/miui/networkassistant/model/AppInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mCurAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    return-object v0
.end method

.method static synthetic -get5(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;Lcom/miui/networkassistant/ui/dialog/CommonDialog;)Lcom/miui/networkassistant/ui/dialog/CommonDialog;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mConfirmForceStopDialog:Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    return-object p1
.end method

.method static synthetic -set1(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;Lcom/miui/networkassistant/model/AppInfo;)Lcom/miui/networkassistant/model/AppInfo;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mCurAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    return-object p1
.end method

.method static synthetic -set2(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mCurrentActiveIface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->refreshUI()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Lcom/miui/common/a/a/k;-><init>()V

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mLastRefreshTime:J

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mCurrentRefreshTime:J

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$RefreshHandler;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$RefreshHandler;-><init>(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mHandler:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$RefreshHandler;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$SpeedAppMonitorListener;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$SpeedAppMonitorListener;-><init>(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mMonitorCenterListener:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$SpeedAppMonitorListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mNetworkConnectivityReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private refreshUI()V
    .locals 7

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mLastRefreshTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mCurrentRefreshTime:J

    iget-wide v4, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mLastRefreshTime:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    iget-wide v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mCurrentRefreshTime:J

    iget-wide v4, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mLastRefreshTime:J

    sub-long/2addr v0, v4

    :goto_0
    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;

    iget-object v5, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mSpeedDetail:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mCurrentActiveIface:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v0, v1}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->refresh(Ljava/util/ArrayList;Ljava/lang/String;J)Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$NetworkSpeedTotalInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mSpeedTotalInfo:Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$NetworkSpeedTotalInfo;

    iget-wide v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mCurrentRefreshTime:J

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mLastRefreshTime:J

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mSpeedTotalInfo:Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$NetworkSpeedTotalInfo;

    iget-wide v0, v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$NetworkSpeedTotalInfo;->total:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mSpeedTotalInfo:Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$NetworkSpeedTotalInfo;

    iget-wide v2, v1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$NetworkSpeedTotalInfo;->rxTotal:J

    invoke-static {v0, v2, v3}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatSpeed(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mRxTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mSpeedTotalInfo:Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$NetworkSpeedTotalInfo;

    iget-wide v2, v1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$NetworkSpeedTotalInfo;->txTotal:J

    invoke-static {v0, v2, v3}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatSpeed(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mTxTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    monitor-exit p0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mLoadingDialog:Lmiui/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mHandler:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$RefreshHandler;

    const-wide/16 v2, 0x1f4

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$RefreshHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void

    :cond_3
    move-wide v0, v2

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mAppContext:Landroid/content/Context;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatSpeed(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mRxTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mTxTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private registerNetworkConnectivityReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mNetworkConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unRegisterNetworkConnectivityRececiver()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mNetworkConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public hideLoadingView()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mLoadingDialog:Lmiui/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mLoadingDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mLoadingDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mLoadingDialog:Lmiui/app/ProgressDialog;

    const-string/jumbo v0, "NetworkSpeedForApps"

    const-string/jumbo v1, "hideLoadingView,mLoadingDialog.dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NetworkSpeedForApps"

    const-string/jumbo v2, "hideLoadingView"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected initView()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07039e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/network/f;->aLW(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mCurrentActiveIface:Ljava/lang/String;

    const v0, 0x7f0a0268

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mRxTextView:Landroid/widget/TextView;

    const v0, 0x7f0a0269

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mTxTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mAppContext:Landroid/content/Context;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatSpeed(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mRxTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mTxTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v0, v5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mMonitorCenterListener:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$SpeedAppMonitorListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->registerLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->registerNetworkConnectivityReceiver()V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->showLoadingView()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mList:Landroid/widget/ListView;

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;-><init>(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onContentScrolled()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_1

    return v2

    :cond_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method protected onCreateFooterView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreateHeaderView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0300d4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateListAdapter()Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;
    .locals 2

    new-instance v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;

    return-object v0
.end method

.method protected onCreateView2(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 3

    const v0, 0x7f0a01bf

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, v0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->onCreateHeaderView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    const v0, 0x7f0a01c0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->onCreateFooterView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mList:Landroid/widget/ListView;

    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->onCreateListAdapter()Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f0300d7

    return v0
.end method

.method protected onCustomizeActionBar(Landroid/app/ActionBar;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/a/a/k;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->unRegisterNetworkConnectivityRececiver()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mMonitorCenterListener:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$SpeedAppMonitorListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->unRegisterLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mHandler:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$RefreshHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$RefreshHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->hideLoadingView()V

    invoke-super {p0}, Lcom/miui/common/a/a/k;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/miui/common/a/a/k;->onPause()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mHandler:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$RefreshHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$RefreshHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "status_bar_show_network_speed"

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mStatusBarShowNetworkSpeed:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/miui/common/a/a/k;->onResume()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "status_bar_show_network_speed"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mStatusBarShowNetworkSpeed:I

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mStatusBarShowNetworkSpeed:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "status_bar_show_network_speed"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Lcom/miui/common/a/a/k;->onStop()V

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mConfirmForceStopDialog:Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mConfirmForceStopDialog:Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->getDialog()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NetworkSpeedForApps"

    const-string/jumbo v2, "onStop"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized refresh()V
    .locals 2

    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lmiui/securitycenter/net/NetworkStatWrapper;->getStatsInfo()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mSpeedDetail:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mCurrentRefreshTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mHandler:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$RefreshHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$RefreshHandler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public showLoadingView()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mLoadingDialog:Lmiui/app/ProgressDialog;

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lmiui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lmiui/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mLoadingDialog:Lmiui/app/ProgressDialog;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mLoadingDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07022c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->mLoadingDialog:Lmiui/app/ProgressDialog;

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)V

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method
