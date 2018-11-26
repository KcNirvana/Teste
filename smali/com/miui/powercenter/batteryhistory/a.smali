.class Lcom/miui/powercenter/batteryhistory/a;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic aGU:Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;


# direct methods
.method private constructor <init>(Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/a;->aGU:Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;Lcom/miui/powercenter/batteryhistory/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/a;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;)V

    return-void
.end method


# virtual methods
.method protected aTy(Lcom/miui/powercenter/batteryhistory/c;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/a;->aGU:Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;->aTv(Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;)Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/powercenter/batteryhistory/c;->aGW:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aUb(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/a;->aGU:Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;->aTv(Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;)Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->invalidate()V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/a;->aGU:Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;->aTw(Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;)Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/powercenter/batteryhistory/c;->aGW:Ljava/util/List;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aTG(Ljava/util/List;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/a;->aGU:Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;->aTw(Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;)Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->invalidate()V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/a;->aGU:Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;

    iget-wide v2, p1, Lcom/miui/powercenter/batteryhistory/c;->aGX:J

    invoke-static {v0, v2, v3}, Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;->aTx(Lcom/miui/powercenter/batteryhistory/BatteryHistoryDetailActivity;J)V

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/miui/powercenter/batteryhistory/c;
    .locals 1

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/b;->getInstance()Lcom/miui/powercenter/batteryhistory/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/b;->aTz()Lcom/miui/powercenter/batteryhistory/c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/batteryhistory/a;->doInBackground([Ljava/lang/Void;)Lcom/miui/powercenter/batteryhistory/c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/powercenter/batteryhistory/c;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/batteryhistory/a;->aTy(Lcom/miui/powercenter/batteryhistory/c;)V

    return-void
.end method
