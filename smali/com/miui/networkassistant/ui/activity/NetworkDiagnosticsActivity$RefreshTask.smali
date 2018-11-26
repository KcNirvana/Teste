.class Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$RefreshTask;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;


# direct methods
.method private constructor <init>(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$RefreshTask;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$RefreshTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$RefreshTask;-><init>(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$RefreshTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$RefreshTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$RefreshTask;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->-get2(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$RefreshTask;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->-wrap2(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$RefreshTask;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->-get8(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)I

    move-result v1

    const v2, 0x7f0a0073

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$RefreshTask;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->-get6(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$RefreshTask;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->-get11(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->refresh()V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$RefreshTask;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->-get2(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$RefreshTask;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->-get5(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    return-object v4

    :cond_2
    return-object v4
.end method
