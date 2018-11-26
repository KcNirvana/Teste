.class final Lcom/miui/powercenter/provider/h;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic aDa:Lcom/miui/powercenter/provider/d;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/provider/d;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/provider/h;->aDa:Lcom/miui/powercenter/provider/d;

    iput-object p2, p0, Lcom/miui/powercenter/provider/h;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected aOl(Lcom/miui/powercenter/batteryhistory/j;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/provider/h;->aDa:Lcom/miui/powercenter/provider/d;

    invoke-static {v0, p1}, Lcom/miui/powercenter/provider/d;->aOi(Lcom/miui/powercenter/provider/d;Lcom/miui/powercenter/batteryhistory/j;)Lcom/miui/powercenter/batteryhistory/j;

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/miui/powercenter/batteryhistory/j;
    .locals 4

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/b;->getInstance()Lcom/miui/powercenter/batteryhistory/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/b;->aTB()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "BatteryInfoReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update charge detail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/powercenter/provider/h;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/powercenter/batteryhistory/i;->aTQ(Landroid/content/Context;Ljava/util/List;)Lcom/miui/powercenter/batteryhistory/j;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/provider/h;->doInBackground([Ljava/lang/Void;)Lcom/miui/powercenter/batteryhistory/j;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/powercenter/batteryhistory/j;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/provider/h;->aOl(Lcom/miui/powercenter/batteryhistory/j;)V

    return-void
.end method
