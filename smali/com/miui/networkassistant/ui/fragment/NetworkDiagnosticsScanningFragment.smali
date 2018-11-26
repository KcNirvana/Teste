.class public Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;
.super Lcom/miui/common/a/a/f;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkDiagnostics_ScanningFragment"

.field private static final TASK_DONE:I = 0x1

.field private static final TASK_INIT:I = 0x2

.field private static final TASK_ITEM_SCANNING_RET:I = 0x3

.field private static final TITLE_FILED:I = 0x7f07035b

.field private static final showItemInterMillion:I = 0x3e8


# instance fields
.field private mActiveNetworkType:I

.field private mBtnStoptDignoze:Landroid/widget/Button;

.field private mDiagnoseMobileDataTask:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseMobileDataTask;

.field private mDiagnoseUsbShareTask:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseUsbShareTask;

.field private mDiagnoseWifiTask:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseWifiTask;

.field private mHandler:Landroid/os/Handler;

.field private mIsScanning:Z

.field private mNDManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mScanningBar:Lcom/miui/networkassistant/ui/view/ScanningBar;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mIsScanning:Z

    return v0
.end method

.method static synthetic -get4(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;)Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mNDManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;)Lcom/miui/networkassistant/ui/view/ScanningBar;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mScanningBar:Lcom/miui/networkassistant/ui/view/ScanningBar;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->showDiagnosticResult()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->stopDiagnostic()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/miui/common/a/a/f;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mNDManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mBtnStoptDignoze:Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mScanningBar:Lcom/miui/networkassistant/ui/view/ScanningBar;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mDiagnoseMobileDataTask:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseMobileDataTask;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mDiagnoseUsbShareTask:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseUsbShareTask;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mDiagnoseWifiTask:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseWifiTask;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mActiveNetworkType:I

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private showDiagnosticResult()V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mDiagnoseMobileDataTask:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseMobileDataTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mDiagnoseMobileDataTask:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseMobileDataTask;

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseMobileDataTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mDiagnoseMobileDataTask:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseMobileDataTask;

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mDiagnoseUsbShareTask:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseUsbShareTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mDiagnoseUsbShareTask:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseUsbShareTask;

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseUsbShareTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mDiagnoseUsbShareTask:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseUsbShareTask;

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mDiagnoseWifiTask:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseWifiTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mDiagnoseWifiTask:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseWifiTask;

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseWifiTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mDiagnoseWifiTask:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseWifiTask;

    :cond_2
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->isAttatched()Z

    move-result v0

    if-eqz v0, :cond_3

    const-class v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsCallback;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsCallback;

    const v1, 0x7f0a0076

    const v2, 0x7f0a0075

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsCallback;->switchView(IIZ)V

    :cond_3
    return-void
.end method

.method private startMobileDataDiagnostic()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mScanningBar:Lcom/miui/networkassistant/ui/view/ScanningBar;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/view/ScanningBar;->resetScanningBar()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mDiagnoseMobileDataTask:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseMobileDataTask;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseMobileDataTask;

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseMobileDataTask;-><init>(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseMobileDataTask;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mDiagnoseMobileDataTask:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseMobileDataTask;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mDiagnoseMobileDataTask:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseMobileDataTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseMobileDataTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private startUsbShareDiagnostic()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mScanningBar:Lcom/miui/networkassistant/ui/view/ScanningBar;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/view/ScanningBar;->resetScanningBar()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mDiagnoseUsbShareTask:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseUsbShareTask;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseUsbShareTask;

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseUsbShareTask;-><init>(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseUsbShareTask;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mDiagnoseUsbShareTask:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseUsbShareTask;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mDiagnoseUsbShareTask:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseUsbShareTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseUsbShareTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private startWifiDiagnostic()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mScanningBar:Lcom/miui/networkassistant/ui/view/ScanningBar;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/view/ScanningBar;->resetScanningBar()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mDiagnoseWifiTask:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseWifiTask;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseWifiTask;

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseWifiTask;-><init>(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseWifiTask;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mDiagnoseWifiTask:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseWifiTask;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mDiagnoseWifiTask:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseWifiTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseWifiTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private stopDiagnostic()V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mIsScanning:Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mDiagnoseMobileDataTask:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseMobileDataTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mDiagnoseMobileDataTask:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseMobileDataTask;

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseMobileDataTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mDiagnoseMobileDataTask:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseMobileDataTask;

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mDiagnoseUsbShareTask:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseUsbShareTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mDiagnoseUsbShareTask:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseUsbShareTask;

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseUsbShareTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mDiagnoseUsbShareTask:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseUsbShareTask;

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mDiagnoseWifiTask:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseWifiTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mDiagnoseWifiTask:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseWifiTask;

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseWifiTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mDiagnoseWifiTask:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseWifiTask;

    :cond_2
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->isAttatched()Z

    move-result v0

    if-eqz v0, :cond_3

    const-class v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsCallback;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsCallback;

    const v1, 0x7f0a0073

    const v2, 0x7f0a0075

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsCallback;->switchView(IIZ)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected initView()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mNDManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    const v0, 0x7f0a01be

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mBtnStoptDignoze:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mBtnStoptDignoze:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01bc

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/ScanningBar;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mScanningBar:Lcom/miui/networkassistant/ui/view/ScanningBar;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f030093

    return v0
.end method

.method protected onCustomizeActionBar(Landroid/app/ActionBar;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/miui/common/a/a/f;->onResume()V

    return-void
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f07035b

    return v0
.end method

.method public startDiagnostic()V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mIsScanning:Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mNDManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    invoke-virtual {v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->getActiveNetworkType()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mActiveNetworkType:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mNDManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mActiveNetworkType:I

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->setDiagnosingNetworkType(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mNDManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->setDiagnosingNetworkInterface(Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mActiveNetworkType:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->startMobileDataDiagnostic()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mNDManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/common/network/f;->getMobileIface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->setDiagnosingNetworkInterface(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mActiveNetworkType:I

    if-ne v0, v2, :cond_2

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->startWifiDiagnostic()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mNDManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/common/network/f;->aLV(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->setDiagnosingNetworkInterface(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mActiveNetworkType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->startUsbShareDiagnostic()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mNDManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/common/network/f;->aLW(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->setDiagnosingNetworkInterface(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mActiveNetworkType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mNDManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    invoke-virtual {v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->isWifiEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mNDManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    invoke-virtual {v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->checkWlanConnected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->startWifiDiagnostic()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mNDManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    invoke-virtual {v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->isWifiEnable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->mNDManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    invoke-virtual {v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->isMobileDataEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->startMobileDataDiagnostic()V

    goto :goto_0
.end method
