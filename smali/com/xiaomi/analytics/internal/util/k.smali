.class public Lcom/xiaomi/analytics/internal/util/k;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static bnK:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static J()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "ro.build.version.sdk"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/d;->bKM(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static K()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/xiaomi/analytics/internal/util/i;->bLd()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "A"

    return-object v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/analytics/internal/util/i;->bLg()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "S"

    return-object v0

    :cond_1
    invoke-static {}, Lcom/xiaomi/analytics/internal/util/i;->bLc()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "D"

    return-object v0

    :cond_2
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public static M()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "ro.build.product"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/d;->bKM(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static N()Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string/jumbo v0, "ro.miui.region"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/d;->bKM(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "ro.product.locale.region"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/d;->bKM(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SysUtils"

    const-string/jumbo v2, "getRegion Exception: "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/analytics/internal/util/b;->bKJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public static O()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    return-object v0
.end method

.method private static bLm(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/xiaomi/analytics/internal/util/k;->bnK:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/analytics/internal/util/k;->bnK:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/xiaomi/analytics/internal/util/k;->bnK:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SysUtils"

    const-string/jumbo v2, "getIMEI failed!"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/analytics/internal/util/b;->bKL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static bLn(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/xiaomi/analytics/internal/util/k;->bLm(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/l;->bLp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public static bLo(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    const-string/jumbo v0, "_m_rec"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "has_deleted_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "imei"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "has_deleted_id"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SysUtils"

    const-string/jumbo v2, "deleteDeviceIdInSpFile exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/analytics/internal/util/b;->bKJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
