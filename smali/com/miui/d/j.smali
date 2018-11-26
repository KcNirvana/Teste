.class final Lcom/miui/d/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic bdS:Lcom/miui/d/d;


# direct methods
.method constructor <init>(Lcom/miui/d/d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/d/j;->bdS:Lcom/miui/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    const-string/jumbo v0, "RemoteUnifiedAdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected. from startting binding service to connected,it spent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/miui/d/d;->bBr()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/miui/d/j;->bdS:Lcom/miui/d/d;

    invoke-static {v0}, Lcom/miui/d/d;->bBp(Lcom/miui/d/d;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/miui/d/j;->bdS:Lcom/miui/d/d;

    invoke-static {p2}, Lcom/miui/systemAdSolution/changeSkin/IChangeSkinService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/systemAdSolution/changeSkin/IChangeSkinService;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/d/d;->bBs(Lcom/miui/d/d;Lcom/miui/systemAdSolution/changeSkin/IChangeSkinService;)Lcom/miui/systemAdSolution/changeSkin/IChangeSkinService;

    iget-object v0, p0, Lcom/miui/d/j;->bdS:Lcom/miui/d/d;

    invoke-static {v0}, Lcom/miui/d/d;->bBp(Lcom/miui/d/d;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RemoteUnifiedAdService"

    const-string/jumbo v2, "onServiceConnected"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string/jumbo v0, "RemoteUnifiedAdService"

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/d/j;->bdS:Lcom/miui/d/d;

    invoke-static {v0}, Lcom/miui/d/d;->bBp(Lcom/miui/d/d;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/d/j;->bdS:Lcom/miui/d/d;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/miui/d/d;->bBs(Lcom/miui/d/d;Lcom/miui/systemAdSolution/changeSkin/IChangeSkinService;)Lcom/miui/systemAdSolution/changeSkin/IChangeSkinService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
