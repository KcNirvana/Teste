.class public Lcom/miui/video/base/common/statistics/MiDevUtils;
.super Ljava/lang/Object;
.source "MiDevUtils.java"


# static fields
.field private static final APP_ID:Ljava/lang/String; = "2882303761517609685"

.field private static final APP_KEY:Ljava/lang/String; = "5401760965685"

.field private static final CUSTOM_PRIVACY_STATE_ENABLED:Z = true

.field private static final ENABLE_INTERNATIONAL_UPLOAD:Z = false

.field private static final NETWORK_ACCESS_ENABLED:Z = true

.field private static final STATISTIC_ENABLED:Z = true

.field private static final TAG:Ljava/lang/String; = "MiDevUtils3.0"

.field private static final USE_CUSTOM_PRIVACY_POLICY:Z = true

.field private static final USE_SYSTEM_UPLOADING_SERVICE:Z

.field private static isEnableLog:Z


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

.method public static addStatistics(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean p0, Lcom/miui/video/base/common/statistics/XiaomiStatistics;->initialed:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-boolean p0, Lcom/miui/video/base/common/statistics/MiDevUtils;->isEnableLog:Z

    if-eqz p0, :cond_1

    const-string p0, "MiDevUtils3.0"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "addStatistics key = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ";params = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-static {p4}, Lcom/miui/video/base/common/statistics/MiDevUtils;->getMiStatParams(Ljava/util/Map;)Lcom/xiaomi/stat/MiStatParams;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/miui/video/base/common/statistics/MiDevUtils;->trackEvent(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    return-void
.end method

.method public static addStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, 0x1

    invoke-static {p0, p1, v0, v1, p2}, Lcom/miui/video/base/common/statistics/MiDevUtils;->addStatistics(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method public static atActivityPause(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/miui/video/base/common/statistics/XiaomiStatistics;->initialed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/miui/video/base/common/statistics/MiDevUtils;->atPageEnd(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static atActivityResume(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/miui/video/base/common/statistics/XiaomiStatistics;->initialed:Z

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/miui/video/base/common/statistics/MiDevUtils;->atPageResume(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static atPageEnd(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    sget-boolean p0, Lcom/miui/video/base/common/statistics/XiaomiStatistics;->initialed:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-boolean p0, Lcom/miui/video/base/common/statistics/MiDevUtils;->isEnableLog:Z

    if-eqz p0, :cond_1

    const-string p0, "MiDevUtils3.0"

    const-string v0, "atPageEnd"

    invoke-static {p0, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-static {p1}, Lcom/miui/video/base/common/statistics/MiDevUtils;->trackPageEnd(Ljava/lang/String;)V

    return-void
.end method

.method public static atPageResume(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/miui/video/base/common/statistics/XiaomiStatistics;->initialed:Z

    if-eqz v0, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    :cond_1
    sget-boolean p0, Lcom/miui/video/base/common/statistics/MiDevUtils;->isEnableLog:Z

    if-eqz p0, :cond_2

    const-string p0, "MiDevUtils3.0"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "atPageResume name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    invoke-static {p1}, Lcom/miui/video/base/common/statistics/MiDevUtils;->trackPageStart(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->getDeviceId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "getDeviceId fail"

    invoke-static {v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public static getLegalKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3f

    invoke-static {p0, v0}, Lcom/miui/video/base/common/statistics/MiDevUtils;->getLegalParams(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLegalParams(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p1, :cond_1

    const-string p0, "TOO-LONG"

    return-object p0

    :cond_1
    return-object p0
.end method

.method public static getLegalValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xff

    invoke-static {p0, v0}, Lcom/miui/video/base/common/statistics/MiDevUtils;->getLegalParams(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getMiStatParams(Ljava/util/Map;)Lcom/xiaomi/stat/MiStatParams;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/stat/MiStatParams;"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v0}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getNetAvailableEvent(Ljava/util/Map;)Lcom/xiaomi/stat/NetAvailableEvent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/stat/NetAvailableEvent;"
        }
    .end annotation

    invoke-static {p0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/xiaomi/stat/NetAvailableEvent$Builder;

    invoke-direct {v0}, Lcom/xiaomi/stat/NetAvailableEvent$Builder;-><init>()V

    const-string v1, "net_event_result_type"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->resultType(I)Lcom/xiaomi/stat/NetAvailableEvent$Builder;

    move-result-object v0

    const-string v1, "net_event_flag"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->flag(Ljava/lang/String;)Lcom/xiaomi/stat/NetAvailableEvent$Builder;

    move-result-object v0

    const-string v1, "net_event_retrycount"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->retryCount(I)Lcom/xiaomi/stat/NetAvailableEvent$Builder;

    move-result-object v0

    const-string v1, "net_event_responsecode"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->responseCode(I)Lcom/xiaomi/stat/NetAvailableEvent$Builder;

    move-result-object v0

    const-string v1, "net_event_requeststarttime"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->requestStartTime(J)Lcom/xiaomi/stat/NetAvailableEvent$Builder;

    move-result-object v0

    const-string v1, "net_event_statuscode"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->statusCode(I)Lcom/xiaomi/stat/NetAvailableEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->build()Lcom/xiaomi/stat/NetAvailableEvent;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getParams(Ljava/lang/String;J)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/miui/video/framework/utils/TxtUtils;->isEmptyAND([Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getParams(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getParamsMap([Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p0, v3

    invoke-static {v4}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    array-length v5, v4

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    goto :goto_1

    :cond_2
    aget-object v5, v4, v2

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v0

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5

    const-string v0, "MiDevUtils3.0"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-boolean v0, Lcom/miui/video/base/common/statistics/XiaomiStatistics;->initialed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "2882303761517609685"

    const-string v2, "5401760965685"

    invoke-static {}, Lcom/miui/video/base/common/internal/AppConfig;->getChannel()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v4, v3}, Lcom/xiaomi/stat/MiStat;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v4}, Lcom/xiaomi/stat/MiStat;->setStatisticEnabled(Z)V

    invoke-static {v4}, Lcom/xiaomi/stat/MiStat;->setNetworkAccessEnabled(Z)V

    invoke-static {v4}, Lcom/xiaomi/stat/MiStat;->setCustomPrivacyState(Z)V

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/xiaomi/stat/MiStat;->setUseSystemUploadingService(ZZ)Z

    invoke-static {}, Lcom/miui/video/base/utils/RegionUtils;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/xiaomi/stat/MiStat;->setInternationalRegion(ZLjava/lang/String;)V

    invoke-static {v4}, Lcom/xiaomi/stat/MiStat;->setExceptionCatcherEnabled(Z)V

    sget-boolean v1, Lcom/miui/video/base/common/statistics/MiDevUtils;->isEnableLog:Z

    invoke-static {v1}, Lcom/xiaomi/stat/MiStat;->setDebugModeEnabled(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/analytics/Analytics;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/Analytics;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/xiaomi/analytics/Analytics;->setDebugOn(Z)V

    sput-boolean v4, Lcom/miui/video/base/common/statistics/XiaomiStatistics;->initialed:Z

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const-string p0, "MiDevUtils3.0"

    const-string v0, "MiStat.initialize IllegalStateException"

    invoke-static {p0, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static final recordCalculateEventAnonymous(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    sget-boolean p0, Lcom/miui/video/base/common/statistics/XiaomiStatistics;->initialed:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-boolean p0, Lcom/miui/video/base/common/statistics/MiDevUtils;->isEnableLog:Z

    if-eqz p0, :cond_1

    const-string p0, "MiDevUtils3.0"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "recordCalculateEventAnonymous key = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-static {p1}, Lcom/miui/video/base/common/statistics/MiDevUtils;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static final recordCalculateEventAnonymous(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean p0, Lcom/miui/video/base/common/statistics/XiaomiStatistics;->initialed:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-boolean p0, Lcom/miui/video/base/common/statistics/MiDevUtils;->isEnableLog:Z

    if-eqz p0, :cond_1

    const-string p0, "MiDevUtils3.0"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "recordCalculateEventAnonymous key = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ";params = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-static {p4}, Lcom/miui/video/base/common/statistics/MiDevUtils;->getMiStatParams(Ljava/util/Map;)Lcom/xiaomi/stat/MiStatParams;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/miui/video/base/common/statistics/MiDevUtils;->trackEvent(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    return-void
.end method

.method public static final recordNetAvailableEvent(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/miui/video/base/common/statistics/XiaomiStatistics;->initialed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/miui/video/base/common/statistics/MiDevUtils;->isEnableLog:Z

    if-eqz v0, :cond_1

    const-string v0, "MiDevUtils3.0"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trackNetAvailableEvent params = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-static {p0}, Lcom/miui/video/base/common/statistics/MiDevUtils;->getNetAvailableEvent(Ljava/util/Map;)Lcom/xiaomi/stat/NetAvailableEvent;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/video/base/common/statistics/MiDevUtils;->trackNetAvailableEvent(Lcom/xiaomi/stat/NetAvailableEvent;)V

    return-void
.end method

.method private static trackEvent(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/stat/MiStat;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method private static trackEvent(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaomi/stat/MiStat;->trackEvent(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    return-void
.end method

.method private static trackEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaomi/stat/MiStat;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static trackEvent(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/xiaomi/stat/MiStat;->trackEvent(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    return-void
.end method

.method private static trackNetAvailableEvent(Lcom/xiaomi/stat/NetAvailableEvent;)V
    .locals 1

    invoke-static {p0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/stat/MiStat;->trackNetAvaliable(Lcom/xiaomi/stat/NetAvailableEvent;)V

    :cond_0
    return-void
.end method

.method private static trackPageEnd(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/stat/MiStat;->trackPageEnd(Ljava/lang/String;)V

    return-void
.end method

.method private static trackPageEnd(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaomi/stat/MiStat;->trackPageEnd(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    return-void
.end method

.method private static trackPageStart(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/stat/MiStat;->trackPageStart(Ljava/lang/String;)V

    return-void
.end method

.method public static unInit()V
    .locals 2

    const-string v0, "MiDevUtils3.0"

    const-string v1, "unInit"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/video/base/common/statistics/XiaomiStatistics;->initialed:Z

    return-void
.end method
