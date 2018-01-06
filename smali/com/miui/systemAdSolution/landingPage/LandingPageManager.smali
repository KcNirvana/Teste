.class public Lcom/miui/systemAdSolution/landingPage/LandingPageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LandingPageManager"

.field private static volatile sManager:Lcom/miui/systemAdSolution/landingPage/LandingPageManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method private buildIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.ad.LANDING_PAGE_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.systemAdSolution"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/systemAdSolution/landingPage/LandingPageManager;
    .locals 2

    sget-object v0, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->sManager:Lcom/miui/systemAdSolution/landingPage/LandingPageManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->sManager:Lcom/miui/systemAdSolution/landingPage/LandingPageManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;

    invoke-direct {v0, p0}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->sManager:Lcom/miui/systemAdSolution/landingPage/LandingPageManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->sManager:Lcom/miui/systemAdSolution/landingPage/LandingPageManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isSupported()Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->buildIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public cancelDownload(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    new-instance v0, Lcom/miui/systemAdSolution/landingPage/LandingPageManager$5;

    iget-object v2, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/miui/systemAdSolution/landingPage/ILandingPageService;

    invoke-direct {v0, p0, v2, v3, p1}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager$5;-><init>(Lcom/miui/systemAdSolution/landingPage/LandingPageManager;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->buildIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager$5;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public deeplinkStartApp(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    invoke-direct {p0}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/miui/systemAdSolution/landingPage/LandingPageManager$1;

    iget-object v2, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/miui/systemAdSolution/landingPage/ILandingPageService;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager$1;-><init>(Lcom/miui/systemAdSolution/landingPage/LandingPageManager;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->buildIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager$1;->invokeAsync(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public getDownloadId(Ljava/lang/String;)J
    .locals 5

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-wide v2

    :cond_0
    new-instance v0, Lcom/miui/systemAdSolution/landingPage/LandingPageManager$8;

    iget-object v1, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->mContext:Landroid/content/Context;

    const-class v4, Lcom/miui/systemAdSolution/landingPage/ILandingPageService;

    invoke-direct {v0, p0, v1, v4, p1}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager$8;-><init>(Lcom/miui/systemAdSolution/landingPage/LandingPageManager;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->buildIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager$8;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    :goto_1
    move-wide v2, v0

    goto :goto_0

    :cond_1
    move-wide v0, v2

    goto :goto_1
.end method

.method public getPackageInstallationStatus(Ljava/lang/String;)I
    .locals 4

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    new-instance v0, Lcom/miui/systemAdSolution/landingPage/LandingPageManager$2;

    iget-object v2, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/miui/systemAdSolution/landingPage/ILandingPageService;

    invoke-direct {v0, p0, v2, v3, p1}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager$2;-><init>(Lcom/miui/systemAdSolution/landingPage/LandingPageManager;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->buildIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager$2;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public getServiceVersion()I
    .locals 4

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    new-instance v0, Lcom/miui/systemAdSolution/landingPage/LandingPageManager$7;

    iget-object v2, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/miui/systemAdSolution/landingPage/ILandingPageService;

    invoke-direct {v0, p0, v2, v3}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager$7;-><init>(Lcom/miui/systemAdSolution/landingPage/LandingPageManager;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->buildIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager$7;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public registerListener(Ljava/lang/String;Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;)V
    .locals 6

    invoke-direct {p0}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/miui/systemAdSolution/landingPage/LandingPageManager$6;

    iget-object v2, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/miui/systemAdSolution/landingPage/ILandingPageService;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager$6;-><init>(Lcom/miui/systemAdSolution/landingPage/LandingPageManager;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;)V

    invoke-direct {p0}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->buildIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager$6;->invokeAsync(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public showAppDetailCard(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    invoke-direct {p0}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/miui/systemAdSolution/landingPage/LandingPageManager$3;

    iget-object v2, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/miui/systemAdSolution/landingPage/ILandingPageService;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager$3;-><init>(Lcom/miui/systemAdSolution/landingPage/LandingPageManager;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->buildIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager$3;->invokeAsync(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public startDownload(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    invoke-direct {p0}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/miui/systemAdSolution/landingPage/LandingPageManager$4;

    iget-object v2, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/miui/systemAdSolution/landingPage/ILandingPageService;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager$4;-><init>(Lcom/miui/systemAdSolution/landingPage/LandingPageManager;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->buildIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager$4;->invokeAsync(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public unregisterListener(Ljava/lang/String;Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;)V
    .locals 6

    invoke-direct {p0}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/miui/systemAdSolution/landingPage/LandingPageManager$9;

    iget-object v2, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/miui/systemAdSolution/landingPage/ILandingPageService;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager$9;-><init>(Lcom/miui/systemAdSolution/landingPage/LandingPageManager;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;)V

    invoke-direct {p0}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager;->buildIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager$9;->invokeAsync(Landroid/content/Intent;)V

    goto :goto_0
.end method
