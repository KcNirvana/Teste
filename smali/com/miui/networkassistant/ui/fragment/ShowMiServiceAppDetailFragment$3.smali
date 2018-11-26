.class final Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$3;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->-get3(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)Lcom/miui/networkassistant/model/AppInfo;

    move-result-object v2

    iget v2, v2, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildMobileDataUsage(IZ)Landroid/util/SparseArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->-set0(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->-get3(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)Lcom/miui/networkassistant/model/AppInfo;

    move-result-object v2

    iget v2, v2, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildWifiDataUsage(IZ)Landroid/util/SparseArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->-set3(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->hideLoadingView()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->-wrap0(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->-get3(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->-get3(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->closeSession()V

    :cond_0
    return-void
.end method
