.class public Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;
.super Lcom/miui/common/a/d;
.source ""


# instance fields
.field private aGR:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

.field private aGS:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

.field private aGT:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    return-void
.end method

.method private aTt(J)V
    .locals 3

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-double v0, v0

    invoke-static {p0, v0, v1}, Lcom/miui/powercenter/a/d;->bbc(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const v0, 0x7f070463

    invoke-virtual {p0, v0, v1}, Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;->aGT:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private aTu()V
    .locals 3

    new-instance v0, Lcom/miui/powercenter/batteryhistory/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/powercenter/batteryhistory/a;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;Lcom/miui/powercenter/batteryhistory/a;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/powercenter/batteryhistory/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic aTv(Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;)Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;->aGR:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    return-object v0
.end method

.method static synthetic aTw(Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;)Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;->aGS:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    return-object v0
.end method

.method static synthetic aTx(Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;->aTt(J)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030108

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;->setContentView(I)V

    const v0, 0x7f0a00b0

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;->aGT:Landroid/widget/TextView;

    const v0, 0x7f0a0304

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;->aGR:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    const v0, 0x7f0a0305

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;->aGS:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/common/a/d;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/miui/common/a/d;->onResume()V

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;->aTu()V

    return-void
.end method
