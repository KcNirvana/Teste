.class Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;
.super Ljava/lang/Object;
.source "MediationConfigRemote.java"


# static fields
.field private static volatile a:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;->b()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;->b:Landroid/content/Context;

    return-object p0
.end method

.method private a()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "miui.intent.action.MSA_MEDIATON_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/ad/mediationconfig/internal/utils/AndroidUtil;->getMsaPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private b()V
    .locals 2

    sget-boolean v0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager;->sUseStaging:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.ad.intent.STAGING_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;
    .locals 2

    if-eqz p0, :cond_2

    sget-object v0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;->a:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;

    if-nez v0, :cond_1

    const-class v0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;->a:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;

    invoke-direct {v1, p0}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;->a:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;->a:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;

    return-object p0

    :cond_2
    const-string p0, "MediationConfig"

    const-string v0, "the param context can not be null"

    invoke-static {p0, v0}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/security/InvalidParameterException;

    const-string v0, "the param context can not be nul"

    invoke-direct {p0, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public isServiceSupport(Landroid/content/Context;)Z
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;->a()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public requestCloudConfig(I[Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;)V
    .locals 9

    new-instance v8, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote$1;

    iget-object v2, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;->b:Landroid/content/Context;

    const-class v3, Lcom/xiaomi/ad/mediationconfig/internal/IMediationConfigProxy;

    move-object v0, v8

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote$1;-><init>(Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;Landroid/content/Context;Ljava/lang/Class;I[Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;)V

    invoke-direct {p0}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;->a()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v8, p1}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote$1;->invokeAsync(Landroid/content/Intent;)V

    return-void
.end method
