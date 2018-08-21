.class public Lcom/alipay/android/phone/mrpc/core/b/d;
.super Ljava/lang/Object;
.source "RPCDataParser.java"


# direct methods
.method public static a(Lcom/alipay/android/phone/mrpc/core/b/c;)V
    .locals 6

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "ERROR"

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/mrpc/core/b/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v1, "RESULT"

    const-string/jumbo v2, "T"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string/jumbo v1, "API"

    invoke-static {v0, v1, p0}, Lcom/alipay/android/phone/mrpc/core/b/d;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/android/phone/mrpc/core/b/c;)V

    const-string/jumbo v1, "NETTYPE"

    invoke-static {v0, v1, p0}, Lcom/alipay/android/phone/mrpc/core/b/d;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/android/phone/mrpc/core/b/c;)V

    const-string/jumbo v1, "HRC"

    invoke-static {v0, v1, p0}, Lcom/alipay/android/phone/mrpc/core/b/d;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/android/phone/mrpc/core/b/c;)V

    const-string/jumbo v1, "REQ_SIZE"

    invoke-static {v0, v1, p0}, Lcom/alipay/android/phone/mrpc/core/b/d;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/android/phone/mrpc/core/b/c;)V

    const-string/jumbo v1, "REQ_RAW_SIZE"

    invoke-static {v0, v1, p0}, Lcom/alipay/android/phone/mrpc/core/b/d;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/android/phone/mrpc/core/b/c;)V

    const-string/jumbo v1, "RES_SIZE"

    invoke-static {v0, v1, p0}, Lcom/alipay/android/phone/mrpc/core/b/d;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/android/phone/mrpc/core/b/c;)V

    const-string/jumbo v1, "RES_RAW_SIZE"

    invoke-static {v0, v1, p0}, Lcom/alipay/android/phone/mrpc/core/b/d;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/android/phone/mrpc/core/b/c;)V

    const-string/jumbo v1, "ENCODE_TIME"

    invoke-static {v0, v1, p0}, Lcom/alipay/android/phone/mrpc/core/b/d;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/android/phone/mrpc/core/b/c;)V

    const-string/jumbo v1, "DECODE_TIME"

    invoke-static {v0, v1, p0}, Lcom/alipay/android/phone/mrpc/core/b/d;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/android/phone/mrpc/core/b/c;)V

    const-string/jumbo v1, "UUID"

    invoke-static {v0, v1, p0}, Lcom/alipay/android/phone/mrpc/core/b/d;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/android/phone/mrpc/core/b/c;)V

    const-string/jumbo v1, "RETRY"

    invoke-static {v0, v1, p0}, Lcom/alipay/android/phone/mrpc/core/b/d;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/android/phone/mrpc/core/b/c;)V

    const-string/jumbo v1, "RPC_ALL_TIME"

    invoke-static {v0, v1, p0}, Lcom/alipay/android/phone/mrpc/core/b/d;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/android/phone/mrpc/core/b/c;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "RPC_PERF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "buildAndWriteLog ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    :try_start_1
    const-string/jumbo v2, "RESULT"

    const-string/jumbo v3, "F"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "ERROR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_2
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "RPC_PERF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "logStr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getPerfLogger()Lcom/alipay/android/phone/inside/log/api/b/a;

    move-result-object v0

    const-string/jumbo v1, "RPC"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/android/phone/mrpc/core/b/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/mrpc/core/b/c;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/alipay/android/phone/mrpc/core/b/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "RPC_PERF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "putItem2Map ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
