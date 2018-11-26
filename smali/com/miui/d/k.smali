.class final Lcom/miui/d/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic bdT:Lcom/miui/d/d;

.field final synthetic bdU:Ljava/lang/String;

.field final synthetic bdV:Lcom/miui/systemAdSolution/common/AdTrackType;

.field final synthetic bdW:Ljava/lang/String;

.field final synthetic bdX:J

.field final synthetic bdY:Lcom/miui/systemAdSolution/common/Material;

.field final synthetic bdZ:J

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/d/d;Ljava/lang/String;Ljava/lang/String;Lcom/miui/systemAdSolution/common/AdTrackType;Ljava/lang/String;JLcom/miui/systemAdSolution/common/Material;J)V
    .locals 0

    iput-object p1, p0, Lcom/miui/d/k;->bdT:Lcom/miui/d/d;

    iput-object p2, p0, Lcom/miui/d/k;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/d/k;->bdU:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/d/k;->bdV:Lcom/miui/systemAdSolution/common/AdTrackType;

    iput-object p5, p0, Lcom/miui/d/k;->bdW:Ljava/lang/String;

    iput-wide p6, p0, Lcom/miui/d/k;->bdX:J

    iput-object p8, p0, Lcom/miui/d/k;->bdY:Lcom/miui/systemAdSolution/common/Material;

    iput-wide p9, p0, Lcom/miui/d/k;->bdZ:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 14

    const/4 v13, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/miui/d/k;->bdT:Lcom/miui/d/d;

    invoke-static {v0}, Lcom/miui/d/d;->bBp(Lcom/miui/d/d;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/miui/d/k;->bdT:Lcom/miui/d/d;

    invoke-static {v0}, Lcom/miui/d/d;->bBv(Lcom/miui/d/d;)V

    iget-object v0, p0, Lcom/miui/d/k;->bdT:Lcom/miui/d/d;

    invoke-static {v0}, Lcom/miui/d/d;->bBt(Lcom/miui/d/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/d/k;->bdT:Lcom/miui/d/d;

    invoke-static {v0}, Lcom/miui/d/d;->bBp(Lcom/miui/d/d;)Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    :cond_0
    iget-object v0, p0, Lcom/miui/d/k;->bdT:Lcom/miui/d/d;

    invoke-static {v0}, Lcom/miui/d/d;->bBt(Lcom/miui/d/d;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/miui/d/k;->bdT:Lcom/miui/d/d;

    invoke-static {v0}, Lcom/miui/d/d;->bBq(Lcom/miui/d/d;)Lcom/miui/systemAdSolution/changeSkin/IChangeSkinService;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/d/k;->val$packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/d/k;->bdU:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/d/k;->bdV:Lcom/miui/systemAdSolution/common/AdTrackType;

    iget-object v5, p0, Lcom/miui/d/k;->bdW:Ljava/lang/String;

    iget-wide v6, p0, Lcom/miui/d/k;->bdX:J

    iget-object v0, p0, Lcom/miui/d/k;->bdY:Lcom/miui/systemAdSolution/common/Material;

    invoke-virtual {v0}, Lcom/miui/systemAdSolution/common/Material;->getId()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/miui/d/k;->bdZ:J

    invoke-interface/range {v1 .. v11}, Lcom/miui/systemAdSolution/changeSkin/IChangeSkinService;->doTrack(Ljava/lang/String;Ljava/lang/String;Lcom/miui/systemAdSolution/common/AdTrackType;Ljava/lang/String;JJJ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    :try_start_4
    monitor-exit v12

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v12

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RemoteUnifiedAdService"

    const-string/jumbo v2, "could not do track async."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/d/k;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
