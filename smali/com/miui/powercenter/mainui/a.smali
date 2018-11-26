.class Lcom/miui/powercenter/mainui/a;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic aOh:Lcom/miui/powercenter/mainui/BatteryStatusView;

.field mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/mainui/BatteryStatusView;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/powercenter/mainui/a;->aOh:Lcom/miui/powercenter/mainui/BatteryStatusView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/miui/powercenter/mainui/a;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/powercenter/mainui/BatteryStatusView;->bcR(Lcom/miui/powercenter/mainui/BatteryStatusView;)Lcom/miui/powercenter/view/BatteryStatusValueText;

    move-result-object v0

    const v1, 0x7f070498

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/view/BatteryStatusValueText;->setText(I)V

    invoke-static {p1}, Lcom/miui/powercenter/mainui/BatteryStatusView;->bcQ(Lcom/miui/powercenter/mainui/BatteryStatusView;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected bcX(Ljava/lang/Long;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/powercenter/mainui/BatteryStatusView;->bcT(J)J

    iget-object v0, p0, Lcom/miui/powercenter/mainui/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/powercenter/a/a;->baJ(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/miui/powercenter/mainui/BatteryStatusView;->bcU(Z)Z

    iget-object v0, p0, Lcom/miui/powercenter/mainui/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/powercenter/a/a;->baC(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/powercenter/mainui/BatteryStatusView;->bcS(I)I

    iget-object v0, p0, Lcom/miui/powercenter/mainui/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/powercenter/a/a;->baD(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/powercenter/mainui/BatteryStatusView;->bcV(I)I

    iget-object v0, p0, Lcom/miui/powercenter/mainui/a;->aOh:Lcom/miui/powercenter/mainui/BatteryStatusView;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/miui/powercenter/mainui/BatteryStatusView;->bcW(Lcom/miui/powercenter/mainui/BatteryStatusView;J)V

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 2

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/b;->getInstance()Lcom/miui/powercenter/batteryhistory/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/b;->aTB()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/mainui/a;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/powercenter/a/a;->baJ(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/powercenter/mainui/a;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/powercenter/batteryhistory/i;->aTQ(Landroid/content/Context;Ljava/util/List;)Lcom/miui/powercenter/batteryhistory/j;

    move-result-object v0

    iget-wide v0, v0, Lcom/miui/powercenter/batteryhistory/j;->aHR:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/miui/powercenter/mainui/a;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/powercenter/batteryhistory/g;->aTL(Landroid/content/Context;Ljava/util/List;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/mainui/a;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/mainui/a;->bcX(Ljava/lang/Long;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
