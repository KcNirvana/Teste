.class public Lcom/alipay/android/app/pb/api/PbTransportChannel;
.super Ljava/lang/Object;
.source "PbTransportChannel.java"

# interfaces
.implements Lcom/alipay/android/app/plugin/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildSendData(Lcom/alipay/android/app/trans/a;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/app/trans/a;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Lcom/alipay/android/app/trans/a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private throwRpcExcetion(Lcom/alipay/android/phone/mrpc/core/RpcException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/NetErrorException;
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v1, v0, p1}, Lcom/alipay/android/app/exception/NetErrorException;-><init>(ZLjava/lang/Throwable;)V

    const/16 v0, 0x132

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/exception/NetErrorException;->setErrorCode(I)V

    throw v1
.end method


# virtual methods
.method public requestByPbv1(Lcom/alipay/android/app/trans/a;Lcom/alipay/android/app/trans/config/a;)Lcom/alipay/android/app/trans/b;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, p1}, Lcom/alipay/android/app/pb/api/PbTransportChannel;->buildSendData(Lcom/alipay/android/app/trans/a;)Ljava/util/Map;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    new-instance v4, Lcom/alipay/android/app/pb/rpc/a/a;

    invoke-direct {v4}, Lcom/alipay/android/app/pb/rpc/a/a;-><init>()V

    invoke-virtual {v4, v1}, Lcom/alipay/android/app/pb/rpc/a/a;->a(Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const/4 v1, 0x2

    const-string/jumbo v4, ""

    const-string/jumbo v5, "PbTransportChannel::requestByPbv1"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v5, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/android/app/trans/b;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/trans/b;-><init>(Ljava/lang/Object;)V

    return-object v1

    :catch_0
    move-exception v1

    invoke-direct {p0, v1}, Lcom/alipay/android/app/pb/api/PbTransportChannel;->throwRpcExcetion(Lcom/alipay/android/phone/mrpc/core/RpcException;)V

    goto :goto_0
.end method

.method public requestByPbv2(Lcom/alipay/android/app/trans/a;Lcom/alipay/android/app/trans/config/a;)Lcom/alipay/android/app/trans/b;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, p1}, Lcom/alipay/android/app/pb/api/PbTransportChannel;->buildSendData(Lcom/alipay/android/app/trans/a;)Ljava/util/Map;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    new-instance v4, Lcom/alipay/android/app/pb/rpc/a/b;

    invoke-direct {v4}, Lcom/alipay/android/app/pb/rpc/a/b;-><init>()V

    invoke-virtual {v4, v1}, Lcom/alipay/android/app/pb/rpc/a/b;->a(Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const/4 v1, 0x2

    const-string/jumbo v4, ""

    const-string/jumbo v5, "PbTransportChannel::requestByPbv2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v5, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/android/app/trans/b;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/trans/b;-><init>(Ljava/lang/Object;)V

    return-object v1

    :catch_0
    move-exception v1

    invoke-direct {p0, v1}, Lcom/alipay/android/app/pb/api/PbTransportChannel;->throwRpcExcetion(Lcom/alipay/android/phone/mrpc/core/RpcException;)V

    goto :goto_0
.end method

.method public requestByPbv3(Lcom/alipay/android/app/trans/a;Lcom/alipay/android/app/trans/config/a;)Lcom/alipay/android/app/trans/b;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, p1}, Lcom/alipay/android/app/pb/api/PbTransportChannel;->buildSendData(Lcom/alipay/android/app/trans/a;)Ljava/util/Map;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    new-instance v4, Lcom/alipay/android/app/pb/rpc/a/c;

    invoke-direct {v4}, Lcom/alipay/android/app/pb/rpc/a/c;-><init>()V

    invoke-virtual {v4, v1}, Lcom/alipay/android/app/pb/rpc/a/c;->a(Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const/4 v1, 0x2

    const-string/jumbo v4, ""

    const-string/jumbo v5, "PbTransportChannel::requestByPbv3"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v5, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/android/app/trans/b;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/trans/b;-><init>(Ljava/lang/Object;)V

    return-object v1

    :catch_0
    move-exception v1

    invoke-direct {p0, v1}, Lcom/alipay/android/app/pb/api/PbTransportChannel;->throwRpcExcetion(Lcom/alipay/android/phone/mrpc/core/RpcException;)V

    goto :goto_0
.end method
