.class Lcom/miui/powercenter/batteryhistory/f;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field private aHO:Z

.field private aHP:Ljava/util/List;

.field final synthetic aHQ:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;Ljava/util/List;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/f;->aHQ:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/f;->aHP:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/f;->aHO:Z

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/f;->aHP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/f;->aHP:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->isLayoutRtl()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/f;->aHO:Z

    return-void
.end method


# virtual methods
.method protected varargs aTK([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 4

    new-instance v0, Lcom/miui/powercenter/batteryhistory/e;

    invoke-direct {v0}, Lcom/miui/powercenter/batteryhistory/e;-><init>()V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/f;->aHQ:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    iget-object v1, v1, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHH:Lcom/miui/powercenter/batteryhistory/k;

    iput-object v1, v0, Lcom/miui/powercenter/batteryhistory/e;->aHv:Lcom/miui/powercenter/batteryhistory/k;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/f;->aHQ:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    iget-object v1, v1, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHz:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/f;->aHQ:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    iget-object v1, v1, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHz:Landroid/graphics/Path;

    iput-object v1, v0, Lcom/miui/powercenter/batteryhistory/e;->aHo:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/f;->aHQ:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    iget v1, v1, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHy:I

    iput v1, v0, Lcom/miui/powercenter/batteryhistory/e;->aHn:I

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/f;->aHQ:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    iget-object v1, v1, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHK:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/f;->aHQ:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    iget-object v1, v1, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHK:Landroid/graphics/Path;

    iput-object v1, v0, Lcom/miui/powercenter/batteryhistory/e;->aHu:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/f;->aHQ:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    iget v1, v1, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHJ:I

    iput v1, v0, Lcom/miui/powercenter/batteryhistory/e;->aHt:I

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/f;->aHQ:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    iget-object v1, v1, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHD:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/f;->aHQ:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    iget-object v1, v1, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHD:Landroid/graphics/Path;

    iput-object v1, v0, Lcom/miui/powercenter/batteryhistory/e;->aHs:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/f;->aHQ:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    iget v1, v1, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHC:I

    iput v1, v0, Lcom/miui/powercenter/batteryhistory/e;->aHr:I

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/f;->aHQ:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    iget-object v1, v1, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHN:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/f;->aHQ:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    iget-object v1, v1, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHN:Landroid/graphics/Path;

    iput-object v1, v0, Lcom/miui/powercenter/batteryhistory/e;->aHx:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/f;->aHQ:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    iget v1, v1, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHM:I

    iput v1, v0, Lcom/miui/powercenter/batteryhistory/e;->aHw:I

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/f;->aHQ:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    iget-object v1, v1, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHB:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/f;->aHQ:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    iget-object v1, v1, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHB:Landroid/graphics/Path;

    iput-object v1, v0, Lcom/miui/powercenter/batteryhistory/e;->aHq:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/f;->aHQ:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    iget v1, v1, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHA:I

    iput v1, v0, Lcom/miui/powercenter/batteryhistory/e;->aHp:I

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/f;->aHP:Ljava/util/List;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-boolean v3, p0, Lcom/miui/powercenter/batteryhistory/f;->aHO:Z

    invoke-static {v0, v1, v2, v3}, Lcom/miui/powercenter/batteryhistory/h;->aTO(Lcom/miui/powercenter/batteryhistory/e;Ljava/util/List;IZ)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/batteryhistory/f;->aTK([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/batteryhistory/f;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/f;->aHQ:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->invalidate()V

    return-void
.end method
