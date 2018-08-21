.class public Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;
.super Ljava/lang/Object;
.source "LogAgent.java"


# direct methods
.method private static a(Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;)Lcom/alipay/android/phone/inside/log/api/behavior/a;
    .locals 2

    new-instance v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/log/api/behavior/a;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->getUseCaseID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->a:Ljava/lang/String;

    sget-object v1, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->EVENT:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    iput-object v1, v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->b:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    return-object v0
.end method

.method private static a(Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;Ljava/lang/String;)Lcom/alipay/android/phone/inside/log/api/behavior/a;
    .locals 2

    new-instance v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/log/api/behavior/a;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->getUseCaseID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->a:Ljava/lang/String;

    sget-object v1, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->EVENT:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    iput-object v1, v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->b:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    if-eqz p1, :cond_0

    iput-object p1, v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->g:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method private static a(Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/inside/log/api/behavior/a;
    .locals 1

    invoke-static {p0, p1}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;->a(Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;Ljava/lang/String;)Lcom/alipay/android/phone/inside/log/api/behavior/a;

    move-result-object v0

    if-eqz p2, :cond_0

    iput-object p2, v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->h:Ljava/lang/String;

    :cond_0
    if-eqz p3, :cond_1

    iput-object p3, v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->i:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    const-class v1, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getBehaviorLogger()Lcom/alipay/android/phone/inside/log/api/behavior/b;

    move-result-object v0

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;->c(Ljava/lang/String;)Lcom/alipay/android/phone/inside/log/api/behavior/a;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/android/phone/inside/log/api/behavior/b;->a(Lcom/alipay/android/phone/inside/log/api/behavior/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized a(Ljava/lang/String;JJI)V
    .locals 5

    const-class v1, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v2, "t0dbg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_EDGE_INIT_OK:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : errorCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", costTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", versionCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_EDGE_INIT_OK:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;->a(Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/inside/log/api/behavior/a;

    move-result-object v0

    iget-object v2, v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->j:Ljava/util/Map;

    const-string/jumbo v3, "errDetail"

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getBehaviorLogger()Lcom/alipay/android/phone/inside/log/api/behavior/b;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/alipay/android/phone/inside/log/api/behavior/b;->a(Lcom/alipay/android/phone/inside/log/api/behavior/a;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized a(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 5

    const-class v1, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v2, "t0dbg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_EDGE_ASK_RISK:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : ua = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", errorCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", costTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_EDGE_ASK_RISK:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;->a(Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/inside/log/api/behavior/a;

    move-result-object v0

    iget-object v2, v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->j:Ljava/util/Map;

    const-string/jumbo v3, "ua"

    invoke-interface {v2, v3, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->j:Ljava/util/Map;

    const-string/jumbo v3, "stgyVer"

    invoke-static {p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->j:Ljava/util/Map;

    const-string/jumbo v3, "sealedData"

    invoke-interface {v2, v3, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->j:Ljava/util/Map;

    const-string/jumbo v3, "location"

    invoke-interface {v2, v3, p9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->j:Ljava/util/Map;

    const-string/jumbo v3, "errDetail"

    invoke-static {p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getBehaviorLogger()Lcom/alipay/android/phone/inside/log/api/behavior/b;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/alipay/android/phone/inside/log/api/behavior/b;->a(Lcom/alipay/android/phone/inside/log/api/behavior/a;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getBehaviorLogger()Lcom/alipay/android/phone/inside/log/api/behavior/b;

    move-result-object v0

    sget-object v1, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_SC_WARNS:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    const/4 v2, 0x0

    invoke-static {v1, p0, p1, v2}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;->a(Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/inside/log/api/behavior/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/inside/log/api/behavior/b;->a(Lcom/alipay/android/phone/inside/log/api/behavior/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x18

    const-class v1, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Y"

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_1

    const-string/jumbo v2, "000000000000000000000000"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_APDID_LOCAL:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    const-string/jumbo v3, "utk_24_zeros"

    invoke-static {v2, p0, v3, v0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;->a(Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/inside/log/api/behavior/a;

    move-result-object v0

    :goto_1
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getBehaviorLogger()Lcom/alipay/android/phone/inside/log/api/behavior/b;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/alipay/android/phone/inside/log/api/behavior/b;->a(Lcom/alipay/android/phone/inside/log/api/behavior/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "N"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_APDID_LOCAL:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    const-string/jumbo v3, "utk_utdid"

    invoke-static {v2, p0, v3, v0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;->a(Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/inside/log/api/behavior/a;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_3

    sget-object v2, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_APDID_LOCAL:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    const-string/jumbo v3, "utk_normal"

    invoke-static {v2, p0, v3, v0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;->a(Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/inside/log/api/behavior/a;

    move-result-object v0

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_APDID_LOCAL:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    const-string/jumbo v3, "utk_illegal"

    invoke-static {v2, p0, v3, v0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;->a(Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/inside/log/api/behavior/a;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public static declared-synchronized a(ZZ)V
    .locals 6

    const-class v2, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getBehaviorLogger()Lcom/alipay/android/phone/inside/log/api/behavior/b;

    move-result-object v3

    sget-object v4, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_EDGE_INIT_FAIL:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    if-eqz p0, :cond_0

    const-string/jumbo v0, "Y"

    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    const-string/jumbo v0, "Y"

    :goto_1
    const/4 v5, 0x0

    invoke-static {v4, v1, v0, v5}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;->a(Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/inside/log/api/behavior/a;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/alipay/android/phone/inside/log/api/behavior/b;->a(Lcom/alipay/android/phone/inside/log/api/behavior/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit v2

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "N"

    move-object v1, v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "N"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public static declared-synchronized b(Ljava/lang/String;)V
    .locals 6

    const-class v1, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v2, "t0dbg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_EDGE_ASK_RISK:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : logicModel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    :try_start_1
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getBehaviorLogger()Lcom/alipay/android/phone/inside/log/api/behavior/b;

    move-result-object v0

    sget-object v4, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_EDGE_ASK_RISK:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    const-string/jumbo v5, "logicModel"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2, p0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;->a(Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/inside/log/api/behavior/a;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/android/phone/inside/log/api/behavior/b;->a(Lcom/alipay/android/phone/inside/log/api/behavior/a;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getBehaviorLogger()Lcom/alipay/android/phone/inside/log/api/behavior/b;

    move-result-object v0

    sget-object v1, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_SC_ERRORS:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    const/4 v2, 0x0

    invoke-static {v1, p0, p1, v2}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;->a(Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/inside/log/api/behavior/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/inside/log/api/behavior/b;->a(Lcom/alipay/android/phone/inside/log/api/behavior/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Lcom/alipay/android/phone/inside/log/api/behavior/a;
    .locals 2

    const/16 v1, 0x18

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "000000000000000000000000"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_UTK_24_ZEROS:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;->a(Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;)Lcom/alipay/android/phone/inside/log/api/behavior/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_UTK_UTDID:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;->a(Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;)Lcom/alipay/android/phone/inside/log/api/behavior/a;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_UTK_NORMAL:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;->a(Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;)Lcom/alipay/android/phone/inside/log/api/behavior/a;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_UTK_ILLEGAL:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    invoke-static {v0, p0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;->a(Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;Ljava/lang/String;)Lcom/alipay/android/phone/inside/log/api/behavior/a;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-class v1, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getBehaviorLogger()Lcom/alipay/android/phone/inside/log/api/behavior/b;

    move-result-object v2

    sget-object v3, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_APDID_LOCAL:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    const-string/jumbo v4, ""

    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Y"

    :goto_0
    invoke-static {v3, p0, v4, v0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;->a(Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/inside/log/api/behavior/a;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/alipay/android/phone/inside/log/api/behavior/b;->a(Lcom/alipay/android/phone/inside/log/api/behavior/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "N"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static declared-synchronized d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-class v1, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getBehaviorLogger()Lcom/alipay/android/phone/inside/log/api/behavior/b;

    move-result-object v0

    sget-object v2, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_EDGE_INJECT_LIST:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    const/4 v3, 0x0

    invoke-static {v2, p0, p1, v3}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;->a(Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/inside/log/api/behavior/a;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/android/phone/inside/log/api/behavior/b;->a(Lcom/alipay/android/phone/inside/log/api/behavior/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
