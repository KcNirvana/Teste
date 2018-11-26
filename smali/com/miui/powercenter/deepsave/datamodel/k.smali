.class Lcom/miui/powercenter/deepsave/datamodel/k;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field aMY:Lcom/miui/powercenter/deepsave/datamodel/j;

.field final synthetic aMZ:Lcom/miui/powercenter/deepsave/datamodel/BatteryHistoryModel;


# direct methods
.method public constructor <init>(Lcom/miui/powercenter/deepsave/datamodel/BatteryHistoryModel;Lcom/miui/powercenter/deepsave/datamodel/j;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/deepsave/datamodel/k;->aMZ:Lcom/miui/powercenter/deepsave/datamodel/BatteryHistoryModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/miui/powercenter/deepsave/datamodel/k;->aMY:Lcom/miui/powercenter/deepsave/datamodel/j;

    return-void
.end method


# virtual methods
.method protected aZE(Lcom/miui/powercenter/batteryhistory/c;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/datamodel/k;->aMY:Lcom/miui/powercenter/deepsave/datamodel/j;

    iget-object v0, v0, Lcom/miui/powercenter/deepsave/datamodel/j;->aMX:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    iget-object v1, p1, Lcom/miui/powercenter/batteryhistory/c;->aGW:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aUb(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/datamodel/k;->aMY:Lcom/miui/powercenter/deepsave/datamodel/j;

    iget-object v0, v0, Lcom/miui/powercenter/deepsave/datamodel/j;->aMX:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->invalidate()V

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

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/deepsave/datamodel/k;->doInBackground([Ljava/lang/Void;)Lcom/miui/powercenter/batteryhistory/c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/powercenter/batteryhistory/c;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/deepsave/datamodel/k;->aZE(Lcom/miui/powercenter/batteryhistory/c;)V

    return-void
.end method
