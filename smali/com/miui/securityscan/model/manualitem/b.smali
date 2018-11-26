.class Lcom/miui/securityscan/model/manualitem/b;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic Av:Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;

.field mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/manualitem/b;->Av:Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/miui/securityscan/model/manualitem/b;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected Bu(Ljava/util/List;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/b;->Av:Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;->Bt(Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;Z)Z

    invoke-static {p1}, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;->Bs(Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/miui/securityscan/model/manualitem/b;->Av:Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    return-void

    :cond_0
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/manualitem/b;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/b;->Av:Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;->Bt(Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;Z)Z

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/powercenter/c/b;->ben(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/manualitem/b;->Bu(Ljava/util/List;)V

    return-void
.end method
