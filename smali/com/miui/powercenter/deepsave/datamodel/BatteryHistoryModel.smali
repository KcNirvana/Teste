.class public Lcom/miui/powercenter/deepsave/datamodel/BatteryHistoryModel;
.super Lcom/miui/common/datamodel/BaseModel;
.source ""


# instance fields
.field private mLastUpdateTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/datamodel/BaseModel;-><init>()V

    return-void
.end method

.method private aZB(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.powercenter.BATTERY_HISTORY_DETAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private aZC(Lcom/miui/powercenter/deepsave/datamodel/j;)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/powercenter/deepsave/datamodel/BatteryHistoryModel;->mLastUpdateTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/miui/powercenter/deepsave/datamodel/BatteryHistoryModel;->mLastUpdateTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    :cond_0
    iput-wide v0, p0, Lcom/miui/powercenter/deepsave/datamodel/BatteryHistoryModel;->mLastUpdateTime:J

    new-instance v0, Lcom/miui/powercenter/deepsave/datamodel/k;

    invoke-direct {v0, p0, p1}, Lcom/miui/powercenter/deepsave/datamodel/k;-><init>(Lcom/miui/powercenter/deepsave/datamodel/BatteryHistoryModel;Lcom/miui/powercenter/deepsave/datamodel/j;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/deepsave/datamodel/k;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic aZD(Lcom/miui/powercenter/deepsave/datamodel/BatteryHistoryModel;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/deepsave/datamodel/BatteryHistoryModel;->aZB(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public aJU(ILandroid/view/View;Landroid/content/Context;Lcom/miui/common/datamodel/z;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/common/datamodel/BaseModel;->aJU(ILandroid/view/View;Landroid/content/Context;Lcom/miui/common/datamodel/z;)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/miui/powercenter/deepsave/datamodel/j;

    invoke-direct {v1, v2}, Lcom/miui/powercenter/deepsave/datamodel/j;-><init>(Lcom/miui/powercenter/deepsave/datamodel/j;)V

    const v0, 0x7f0a0304

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    iput-object v0, v1, Lcom/miui/powercenter/deepsave/datamodel/j;->aMX:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    new-instance v0, Lcom/miui/powercenter/deepsave/datamodel/t;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/deepsave/datamodel/t;-><init>(Lcom/miui/powercenter/deepsave/datamodel/BatteryHistoryModel;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/powercenter/deepsave/datamodel/BatteryHistoryModel;->aZC(Lcom/miui/powercenter/deepsave/datamodel/j;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/deepsave/datamodel/j;

    goto :goto_0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f030114

    return v0
.end method
