.class public Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;
.super Lcom/miui/gamebooster/service/IGameBooster$Stub;
.source ""


# instance fields
.field final synthetic lC:Lcom/miui/gamebooster/service/GameBoosterService;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/service/GameBoosterService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->lC:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-direct {p0}, Lcom/miui/gamebooster/service/IGameBooster$Stub;-><init>()V

    return-void
.end method

.method private op(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "GameBoosterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->lC:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->oc(Lcom/miui/gamebooster/service/GameBoosterService;)V

    const-string/jumbo v0, "GameBoosterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "gamebooster:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic or(Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->op(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public oj()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->lC:Lcom/miui/gamebooster/service/GameBoosterService;

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->lC:Lcom/miui/gamebooster/service/GameBoosterService;

    iget-object v2, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->lC:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v2}, Lcom/miui/gamebooster/service/GameBoosterService;->nF(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gamebooster/service/d;->pa(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gamebooster/service/d;->pb()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/F;->ii(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public ok()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->lC:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nz(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/a/F;->ih(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ol()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->lC:Lcom/miui/gamebooster/service/GameBoosterService;

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->lC:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v1}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/miui/gamebooster/c/b;->tw(Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/service/GameBoosterService;->nS(Lcom/miui/gamebooster/service/GameBoosterService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method

.method public om()V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->lC:Lcom/miui/gamebooster/service/GameBoosterService;

    const-string/jumbo v1, "gamebooster_xunyou_cache_time"

    const-wide/16 v2, -0x1

    invoke-static {v1, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/miui/gamebooster/service/GameBoosterService;->nX(Lcom/miui/gamebooster/service/GameBoosterService;J)J

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->lC:Lcom/miui/gamebooster/service/GameBoosterService;

    const-string/jumbo v1, "gb_notification_business_period"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/service/GameBoosterService;->nP(Lcom/miui/gamebooster/service/GameBoosterService;I)I

    return-void
.end method

.method public on(Ljava/util/List;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->lC:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nK(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->lC:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nD(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->lC:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nD(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/miui/gamebooster/a/y;->getInstance()Lcom/miui/gamebooster/a/y;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->lC:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v2}, Lcom/miui/gamebooster/service/GameBoosterService;->nD(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->lC:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v3}, Lcom/miui/gamebooster/service/GameBoosterService;->nz(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/miui/gamebooster/a/y;->hG(Ljava/util/List;Landroid/content/Context;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "GameBoosterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "JSONException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public oo(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->lC:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nH(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->lC:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nI(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->lC:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/service/GameBoosterService;->oa(Lcom/miui/gamebooster/service/GameBoosterService;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->lC:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nF(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/service/k;

    invoke-direct {v1, p0, p1}, Lcom/miui/gamebooster/service/k;-><init>(Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->lC:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nH(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->lC:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/service/GameBoosterService;->nU(Lcom/miui/gamebooster/service/GameBoosterService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->op(Ljava/lang/String;)V

    return-void
.end method

.method public oq()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->lC:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nF(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->lC:Lcom/miui/gamebooster/service/GameBoosterService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gamebooster/service/GameBoosterService;->nQ(Lcom/miui/gamebooster/service/GameBoosterService;Z)Z

    return-void
.end method
