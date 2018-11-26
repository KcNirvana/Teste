.class final Lcom/miui/networkassistant/service/tm/AppMonitor$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/AppMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$1;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$1;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->-get2(Lcom/miui/networkassistant/service/tm/AppMonitor;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$1;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->-wrap1(Lcom/miui/networkassistant/service/tm/AppMonitor;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$1;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/AppMonitor;->-get4(Lcom/miui/networkassistant/service/tm/AppMonitor;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    const/4 v3, 0x5

    if-ge v0, v3, :cond_0

    invoke-static {}, Lcom/miui/networkassistant/service/tm/AppMonitor;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fillNetworkAccessedApps failed, retryCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$1;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->-wrap1(Lcom/miui/networkassistant/service/tm/AppMonitor;)V

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$1;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->-get4(Lcom/miui/networkassistant/service/tm/AppMonitor;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$1;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->-wrap0(Lcom/miui/networkassistant/service/tm/AppMonitor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
