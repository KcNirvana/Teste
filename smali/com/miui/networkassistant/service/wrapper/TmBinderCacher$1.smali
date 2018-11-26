.class final Lcom/miui/networkassistant/service/wrapper/TmBinderCacher$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher$1;->this$0:Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    const-string/jumbo v0, "TmBinderCacher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher$1;->this$0:Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    invoke-static {v0}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->-get1(Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher$1;->this$0:Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->-set1(Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher$1;->this$0:Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    invoke-static {v0, p2}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->-set0(Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;Landroid/os/IBinder;)Landroid/os/IBinder;

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher$1;->this$0:Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    invoke-static {v0}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->-get3(Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher$1;->this$0:Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    invoke-static {v0}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->-get3(Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    iget-object v4, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher$1;->this$0:Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    invoke-static {v4}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->-get2(Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;)Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher$1;->this$0:Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    invoke-static {v5}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->-get0(Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;)Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v1

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string/jumbo v0, "TmBinderCacher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher$1;->this$0:Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    invoke-static {v0}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->-get1(Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher$1;->this$0:Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    invoke-static {v0}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->-wrap0(Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
