.class public Lcom/xiaomi/mistatistic/sdk/CustomSettings;
.super Ljava/lang/Object;
.source "CustomSettings.java"


# static fields
.field private static a:Z = false

.field private static b:Z = false

.field private static c:Z = true


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

.method public static addCustomEvent(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "addCustomEvent: The value is empty."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/c;

    invoke-direct {v0, p0}, Lcom/xiaomi/mistatistic/sdk/data/c;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a()V

    return-void
.end method

.method public static addCustomEventAnonymous(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCustomEventAnonymous(Ljava/lang/String;)V

    return-void
.end method

.method public static clearData()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MI_STAT"

    const-string v1, "The statistics is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Lcom/xiaomi/mistatistic/sdk/controller/e;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/CustomSettings$1;

    invoke-direct {v1}, Lcom/xiaomi/mistatistic/sdk/CustomSettings$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a(Lcom/xiaomi/mistatistic/sdk/controller/e$a;)V

    return-void
.end method

.method public static enableMultiProcess(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "enableMultiProcess: serviceName is empty."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Z)V

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static isDataUploadingEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->c:Z

    return v0
.end method

.method public static isUseSystemStatService()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->b:Z

    return v0
.end method

.method public static isUseSystemUploadingService()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->a:Z

    return v0
.end method

.method public static setAppVersion(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static setDataUploadingEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sput-boolean p0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->c:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Lcom/xiaomi/mistatistic/sdk/controller/e;

    move-result-object p0

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/CustomSettings$2;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/CustomSettings$2;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a(Lcom/xiaomi/mistatistic/sdk/controller/e$a;)V

    :cond_1
    return-void
.end method

.method public static setPackageName(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static setUseSystemStatService(Z)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p0, :cond_2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "App is NOT a system app, so you can NOT use SystemStatService."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sput-boolean p0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->b:Z

    return-void
.end method

.method public static setUseSystemUploadingService(Z)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sput-boolean p0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->a:Z

    return-void
.end method
