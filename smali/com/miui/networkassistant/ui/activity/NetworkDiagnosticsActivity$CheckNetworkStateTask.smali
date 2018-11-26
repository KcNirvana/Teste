.class Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$CheckNetworkStateTask;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$CheckNetworkStateTask;->mActivity:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$CheckNetworkStateTask;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/util/ArrayList;)Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;
    .locals 7

    const/4 v0, 0x0

    sget-object v1, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->UNKNOWN:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    :try_start_0
    const-string/jumbo v2, "NetworkDiagnostics_main"

    const-string/jumbo v3, "CheckNetworkStateTask beg "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    aget-object v3, p1, v2

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v1

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$CheckNetworkStateTask;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->CheckNetworkState(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    const-string/jumbo v1, "NetworkDiagnostics_main"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CheckNetworkStateTask ret= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CONNECTED:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CAPTIVEPORTAL:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v0, v1, :cond_0

    :cond_2
    :goto_1
    const-string/jumbo v1, "NetworkDiagnostics_main"

    const-string/jumbo v2, "CheckNetworkStateTask end "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_0
    move-exception v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$CheckNetworkStateTask;->doInBackground([Ljava/util/ArrayList;)Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$CheckNetworkStateTask;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->-wrap4(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;)V

    iput-object v1, v0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mCheckNetworkStateTask:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$CheckNetworkStateTask;

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$CheckNetworkStateTask;->onPostExecute(Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;)V

    return-void
.end method
