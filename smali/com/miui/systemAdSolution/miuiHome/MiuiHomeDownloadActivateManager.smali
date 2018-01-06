.class public Lcom/miui/systemAdSolution/miuiHome/MiuiHomeDownloadActivateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiHomeDownloadActivateManager"

.field private static volatile sManager:Lcom/miui/systemAdSolution/miuiHome/MiuiHomeDownloadActivateManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/systemAdSolution/miuiHome/MiuiHomeDownloadActivateManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/systemAdSolution/miuiHome/MiuiHomeDownloadActivateManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/miui/systemAdSolution/miuiHome/MiuiHomeDownloadActivateManager;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method private buildIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.ad.MIUI_HOME_DOWNLOAD_ACTIVATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.systemAdSolution"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/systemAdSolution/miuiHome/MiuiHomeDownloadActivateManager;
    .locals 2

    sget-object v0, Lcom/miui/systemAdSolution/miuiHome/MiuiHomeDownloadActivateManager;->sManager:Lcom/miui/systemAdSolution/miuiHome/MiuiHomeDownloadActivateManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/systemAdSolution/miuiHome/MiuiHomeDownloadActivateManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/systemAdSolution/miuiHome/MiuiHomeDownloadActivateManager;->sManager:Lcom/miui/systemAdSolution/miuiHome/MiuiHomeDownloadActivateManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/systemAdSolution/miuiHome/MiuiHomeDownloadActivateManager;

    invoke-direct {v0, p0}, Lcom/miui/systemAdSolution/miuiHome/MiuiHomeDownloadActivateManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/systemAdSolution/miuiHome/MiuiHomeDownloadActivateManager;->sManager:Lcom/miui/systemAdSolution/miuiHome/MiuiHomeDownloadActivateManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/systemAdSolution/miuiHome/MiuiHomeDownloadActivateManager;->sManager:Lcom/miui/systemAdSolution/miuiHome/MiuiHomeDownloadActivateManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getServiceVersion()I
    .locals 4

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/miui/systemAdSolution/miuiHome/MiuiHomeDownloadActivateManager;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    new-instance v0, Lcom/miui/systemAdSolution/miuiHome/MiuiHomeDownloadActivateManager$1;

    iget-object v2, p0, Lcom/miui/systemAdSolution/miuiHome/MiuiHomeDownloadActivateManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/miui/systemAdSolution/miuiHome/IMiuiHomeDownloadActivateService;

    invoke-direct {v0, p0, v2, v3}, Lcom/miui/systemAdSolution/miuiHome/MiuiHomeDownloadActivateManager$1;-><init>(Lcom/miui/systemAdSolution/miuiHome/MiuiHomeDownloadActivateManager;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0}, Lcom/miui/systemAdSolution/miuiHome/MiuiHomeDownloadActivateManager;->buildIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/systemAdSolution/miuiHome/MiuiHomeDownloadActivateManager$1;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

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

.method private isSupported()Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/miui/systemAdSolution/miuiHome/MiuiHomeDownloadActivateManager;->buildIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/systemAdSolution/miuiHome/MiuiHomeDownloadActivateManager;->mContext:Landroid/content/Context;

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
.method public showDownloadNotification()Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ShowDownloadNotification should not run on main thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/miui/systemAdSolution/miuiHome/MiuiHomeDownloadActivateManager;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/systemAdSolution/miuiHome/MiuiHomeDownloadActivateManager;->getServiceVersion()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_2

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    new-instance v0, Lcom/miui/systemAdSolution/miuiHome/MiuiHomeDownloadActivateManager$2;

    iget-object v2, p0, Lcom/miui/systemAdSolution/miuiHome/MiuiHomeDownloadActivateManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/miui/systemAdSolution/miuiHome/IMiuiHomeDownloadActivateService;

    invoke-direct {v0, p0, v2, v3}, Lcom/miui/systemAdSolution/miuiHome/MiuiHomeDownloadActivateManager$2;-><init>(Lcom/miui/systemAdSolution/miuiHome/MiuiHomeDownloadActivateManager;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0}, Lcom/miui/systemAdSolution/miuiHome/MiuiHomeDownloadActivateManager;->buildIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/systemAdSolution/miuiHome/MiuiHomeDownloadActivateManager$2;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
