.class public Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;
.super Lcom/miui/securityscan/model/AbsModel;
.source ""


# instance fields
.field private AM:J

.field private AN:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/securityscan/model/AbsModel;-><init>(Ljava/lang/String;I)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;->AM:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;->AN:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;->setDelayOptimized(Z)V

    const-string/jumbo v0, "flow_verify"

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;->setTrackStr(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic BB(Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;->AM:J

    return-wide v0
.end method

.method static synthetic BC(Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;J)J
    .locals 1

    iput-wide p1, p0, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;->AM:J

    return-wide p1
.end method

.method static synthetic BD(Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;I)I
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;->AN:I

    return p1
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 5

    iget-wide v0, p0, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;->AM:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0706b9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;->AN:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;->AN:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0c0039

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0706b8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optimize(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.NETWORKASSISTANT_ENTRANCE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Lcom/miui/common/b/k;->aIq(Landroid/app/Activity;Landroid/content/Intent;I)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f070712

    invoke-static {p1, v0}, Lcom/miui/common/b/o;->aIX(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public scan()V
    .locals 5

    :try_start_0
    new-instance v0, Lcom/miui/securityscan/model/manualitem/k;

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/securityscan/model/manualitem/k;-><init>(Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;Landroid/content/Context;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/miui/securityscan/model/manualitem/k;

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

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

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
    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PackageVerifyModel"

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

    const-string/jumbo v1, "PackageVerifyModel"

    const-string/jumbo v2, "scan ExecutionException "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
