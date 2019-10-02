.class public abstract Lcom/xiaomi/miglobaladsdk/MiAdManager;
.super Ljava/lang/Object;
.source "MiAdManager.java"


# static fields
.field private static a:Landroid/content/Context; = null

.field private static b:Ljava/lang/String; = null

.field private static c:Ljava/lang/String; = null

.field private static d:Ljava/lang/String; = "miglobaladsdk_commonapp"

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/xiaomi/miglobaladsdk/MiAdManager$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/miglobaladsdk/MiAdManager$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/xiaomi/utils/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static a(Z)V
    .locals 3

    const-string v0, "MiAdManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCrashMonitor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/xiaomi/miglobaladsdk/MiAdManager;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/zeus/utils/b;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/zeus/monitor/crash/b;->a()Lcom/miui/zeus/monitor/crash/d;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/miglobaladsdk/b;->b:Ljava/util/List;

    invoke-interface {p0, v0}, Lcom/miui/zeus/monitor/crash/d;->a(Ljava/util/List;)Lcom/miui/zeus/monitor/crash/d;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/miui/zeus/monitor/crash/d;->a(Z)Lcom/miui/zeus/monitor/crash/d;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/miglobaladsdk/MiAdManager;->a:Landroid/content/Context;

    const-string v1, "MEDIATION"

    invoke-interface {p0, v0, v1}, Lcom/miui/zeus/monitor/crash/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static addAdapterClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/miglobaladsdk/b/c;->a()Lcom/xiaomi/miglobaladsdk/b/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/miglobaladsdk/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static applicationInit(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/xiaomi/miglobaladsdk/MiAdManager;->applicationInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static applicationInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/xiaomi/miglobaladsdk/MiAdManager;->applicationInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static applicationInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    invoke-static {p0}, Lcom/xiaomi/miglobaladsdk/b;->a(Landroid/content/Context;)V

    const-string v0, "MiAdManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdkVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaomi/miglobaladsdk/b;->a:Lcom/xiaomi/utils/m;

    invoke-virtual {v2}, Lcom/xiaomi/utils/m;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p0, :cond_2

    sput-object p0, Lcom/xiaomi/miglobaladsdk/MiAdManager;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/xiaomi/utils/Commons;->isAdEnableInEURegion(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/miglobaladsdk/MiAdManager;->e:Z

    sget-boolean v0, Lcom/xiaomi/miglobaladsdk/MiAdManager;->e:Z

    if-nez v0, :cond_0

    const-string p0, "MiAdManager"

    const-string p1, "in eu region and disabled personalized ad"

    invoke-static {p0, p1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sput-object p1, Lcom/xiaomi/miglobaladsdk/MiAdManager;->b:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    sput-object p2, Lcom/xiaomi/miglobaladsdk/MiAdManager;->d:Ljava/lang/String;

    :cond_1
    invoke-static {p3}, Lcom/xiaomi/miglobaladsdk/MiAdManager;->a(Z)V

    invoke-static {}, Lcom/xiaomi/utils/b/a/a;->a()Lcom/xiaomi/utils/b/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/utils/b/a/a;->b()Ljava/lang/String;

    invoke-static {p0}, Lcom/xiaomi/ad/mediationconfig/MediationConfigProxySdk;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/xiaomi/miglobaladsdk/MiAdManager;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/xiaomi/miglobaladsdk/MiAdManager;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/a/a;->a()V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context or AppId cannot be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/miglobaladsdk/a/a/f;->a()Lcom/xiaomi/miglobaladsdk/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/miglobaladsdk/a/a/f;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/miglobaladsdk/a/a/f;->a()Lcom/xiaomi/miglobaladsdk/a/a/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/miglobaladsdk/a/a/f;->b()V

    return-void
.end method

.method public static disenableOnlyMainProcess()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/miglobaladsdk/a/b;->a()Lcom/xiaomi/miglobaladsdk/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/a/b;->b()V

    return-void
.end method

.method public static enableDebug()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/miglobaladsdk/b;->c:Z

    invoke-static {v0}, Lcom/miui/zeus/logger/MLog;->setDebugOn(Z)V

    return-void
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/miglobaladsdk/MiAdManager;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppVersionCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/miglobaladsdk/MiAdManager;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getConfigKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/miglobaladsdk/MiAdManager;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/xiaomi/miglobaladsdk/MiAdManager;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static isAdEnableInEURegion()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/miglobaladsdk/MiAdManager;->e:Z

    return v0
.end method

.method public static isDebug()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/miglobaladsdk/b;->c:Z

    return v0
.end method

.method public static onlyMainProcess()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/miglobaladsdk/a/b;->a()Lcom/xiaomi/miglobaladsdk/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/a/b;->c()V

    return-void
.end method

.method public static setAppVersionCode(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/xiaomi/miglobaladsdk/MiAdManager;->c:Ljava/lang/String;

    return-void
.end method

.method public static setDefaultConfig(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/miglobaladsdk/a/b;->a()Lcom/xiaomi/miglobaladsdk/a/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/miglobaladsdk/a/b;->a(Ljava/lang/String;Z)V

    return-void
.end method
