.class final Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$11;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$11;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$11;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$11;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->-wrap5(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$11;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->-wrap9(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$11;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->-wrap8(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$11;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->-wrap7(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$11;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->-wrap6(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$11;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$11;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->-wrap0(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$11;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->hideLoadingView()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$11;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->-wrap2(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$11;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->-get9(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$11;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->-get9(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->closeSession()V

    :cond_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$11;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    const v1, 0x7f07022c

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->setLoadingText(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$11;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->showLoadingView(Z)V

    return-void
.end method
