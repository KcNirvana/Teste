.class public Lcom/miui/securityscan/model/manualitem/DataPurchaseModel;
.super Lcom/miui/securityscan/model/AbsModel;
.source ""


# instance fields
.field private AD:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/securityscan/model/AbsModel;-><init>(Ljava/lang/String;I)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/securityscan/model/manualitem/DataPurchaseModel;->AD:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/DataPurchaseModel;->setDelayOptimized(Z)V

    const-string/jumbo v0, "flow_purchase"

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/DataPurchaseModel;->setTrackStr(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/DataPurchaseModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0706bf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/DataPurchaseModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0706be

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optimize(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/securityscan/c;->Ou(Z)V

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "100008"

    invoke-static {v0, v1}, Lmiui/provider/ExtraNetwork;->navigateToTrafficPurchasePage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public scan()V
    .locals 5

    :try_start_0
    new-instance v0, Lcom/miui/securityscan/model/manualitem/h;

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/DataPurchaseModel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/securityscan/model/manualitem/h;-><init>(Lcom/miui/securityscan/model/manualitem/DataPurchaseModel;Landroid/content/Context;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/miui/securityscan/model/manualitem/h;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/DataPurchaseModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    :goto_0
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :goto_1
    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_2
    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/DataPurchaseModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DataPurchaseModel"

    const-string/jumbo v2, "scan Interrupted "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    :try_start_1
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string/jumbo v1, "DataPurchaseModel"

    const-string/jumbo v2, "scan ExecutionException "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
