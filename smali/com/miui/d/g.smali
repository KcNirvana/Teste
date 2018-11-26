.class abstract Lcom/miui/d/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private bdO:Ljava/lang/Object;

.field final synthetic bdP:Lcom/miui/d/d;


# direct methods
.method protected constructor <init>(Lcom/miui/d/d;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/d/g;->bdP:Lcom/miui/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/d/g;->bdO:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method abstract bBw(Lcom/miui/systemAdSolution/changeSkin/IChangeSkinService;Ljava/lang/Object;)Ljava/lang/String;
.end method

.method abstract bBx(Ljava/lang/String;)V
.end method

.method public run()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/d/g;->bdP:Lcom/miui/d/d;

    invoke-static {v1}, Lcom/miui/d/d;->bBp(Lcom/miui/d/d;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/miui/d/g;->bdP:Lcom/miui/d/d;

    invoke-static {v2}, Lcom/miui/d/d;->bBv(Lcom/miui/d/d;)V

    iget-object v2, p0, Lcom/miui/d/g;->bdP:Lcom/miui/d/d;

    invoke-static {v2}, Lcom/miui/d/d;->bBt(Lcom/miui/d/d;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/d/g;->bdP:Lcom/miui/d/d;

    invoke-static {v2}, Lcom/miui/d/d;->bBp(Lcom/miui/d/d;)Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    iget-object v2, p0, Lcom/miui/d/g;->bdP:Lcom/miui/d/d;

    invoke-static {v2}, Lcom/miui/d/d;->bBt(Lcom/miui/d/d;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/miui/d/g;->bdP:Lcom/miui/d/d;

    invoke-static {v0}, Lcom/miui/d/d;->bBq(Lcom/miui/d/d;)Lcom/miui/systemAdSolution/changeSkin/IChangeSkinService;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/d/g;->bdO:Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcom/miui/d/g;->bBw(Lcom/miui/systemAdSolution/changeSkin/IChangeSkinService;Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/d/g;->bdP:Lcom/miui/d/d;

    invoke-static {v2}, Lcom/miui/d/d;->bBo(Lcom/miui/d/d;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/miui/d/i;

    invoke-direct {v2, p0, v0}, Lcom/miui/d/i;-><init>(Lcom/miui/d/g;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-void

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/miui/d/g;->bdP:Lcom/miui/d/d;

    invoke-static {v0}, Lcom/miui/d/d;->bBq(Lcom/miui/d/d;)Lcom/miui/systemAdSolution/changeSkin/IChangeSkinService;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/d/g;->bdO:Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcom/miui/d/g;->bBw(Lcom/miui/systemAdSolution/changeSkin/IChangeSkinService;Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RemoteUnifiedAdService"

    const-string/jumbo v2, "colud not invoke the remote method."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
