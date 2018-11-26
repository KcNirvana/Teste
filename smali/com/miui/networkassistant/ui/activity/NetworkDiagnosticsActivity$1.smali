.class final Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$1;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "NetworkDiagnostics_main"

    const-string/jumbo v1, "mConnectionReceiver : network changed broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$1;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->-wrap0(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$1;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->-get1(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$1;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    :goto_0
    invoke-static {v1, v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->-set0(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;Z)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
