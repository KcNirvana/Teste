.class public Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor;
.super Ljava/lang/Object;
.source "ResponseInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$RetryException;,
        Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ResponseInterceptor"

.field private static final UTF8:Ljava/nio/charset/Charset;

.field private static retryTimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private coverToModeBaseBy(Lokhttp3/Response;)Lcom/miui/video/base/common/net/model/ModelBase;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v3

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface {v3, v4, v5}, Lokio/BufferedSource;->request(J)Z

    invoke-interface {v3}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v3

    sget-object v4, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_0

    :try_start_1
    sget-object v4, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v4}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v4
    :try_end_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    return-object v0

    :cond_0
    :goto_0
    :try_start_2
    invoke-direct {p0, v3}, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor;->isPlaintext(Lokio/Buffer;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const-wide/16 v5, 0x0

    cmp-long p1, v1, v5

    if-eqz p1, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object p1

    invoke-virtual {p1, v4}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/miui/video/base/common/internal/GlobalGson;->get()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/miui/video/base/common/net/model/ModelBase;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/common/net/model/ModelBase;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object v0
.end method

.method private getUrlWithoutQueryParam(Lokhttp3/Request;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, ""

    return-object p1
.end method

.method private handleGlobalBizException(Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$RetryException;
        }
    .end annotation

    iget-object v0, p1, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;->modelBase:Lcom/miui/video/base/common/net/model/ModelBase;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;->modelBase:Lcom/miui/video/base/common/net/model/ModelBase;

    invoke-virtual {v0}, Lcom/miui/video/base/common/net/model/ModelBase;->getResult()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;->modelBase:Lcom/miui/video/base/common/net/model/ModelBase;

    invoke-virtual {v0}, Lcom/miui/video/base/common/net/model/ModelBase;->getResult()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_2

    invoke-direct {p0, p1, v1}, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor;->trackNetAvailableEvent(Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;I)V

    iget-object v0, p1, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;->modelBase:Lcom/miui/video/base/common/net/model/ModelBase;

    invoke-virtual {v0}, Lcom/miui/video/base/common/net/model/ModelBase;->getResult()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x3e9

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    iget-object p1, p1, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;->modelBase:Lcom/miui/video/base/common/net/model/ModelBase;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelBase;->getResult()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x3eb

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "ResponseInterceptor"

    const-string v0, "========= mark invalid end =========="

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/miui/video/base/account/VideoMiAccountManager;->get()Lcom/miui/video/base/account/VideoMiAccountManager;

    move-result-object p1

    const-string v0, "session invalid "

    invoke-virtual {p1, v1, v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->markServiceTokenExpire(ZLjava/lang/String;)V

    new-instance p1, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$RetryException;

    invoke-direct {p1, v3}, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$RetryException;-><init>(Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$1;)V

    throw p1

    :cond_1
    const-string p1, "ResponseInterceptor"

    const-string v0, "========= mark expire =========="

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/miui/video/base/account/VideoMiAccountManager;->get()Lcom/miui/video/base/account/VideoMiAccountManager;

    move-result-object p1

    const-string v0, "session expire "

    invoke-virtual {p1, v1, v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->markServiceTokenExpire(ZLjava/lang/String;)V

    new-instance p1, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$RetryException;

    invoke-direct {p1, v3}, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$RetryException;-><init>(Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$1;)V

    throw p1

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor;->trackNetAvailableEvent(Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor;->trackNetAvailableEvent(Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;I)V

    :goto_0
    return-void
.end method

.method private isPlaintext(Lokio/Buffer;)Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    new-instance v7, Lokio/Buffer;

    invoke-direct {v7}, Lokio/Buffer;-><init>()V

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x40

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v1

    move-wide v5, v1

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    const-wide/16 v3, 0x0

    move-object v1, p1

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    const/4 p1, 0x0

    :goto_1
    const/16 v1, 0x10

    if-ge p1, v1, :cond_3

    invoke-virtual {v7}, Lokio/Buffer;->exhausted()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v7}, Lokio/Buffer;->readUtf8CodePoint()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_2

    return v0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method

.method private onFailure(Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;Ljava/lang/Throwable;)V
    .locals 2

    instance-of v0, p2, Ljava/net/SocketTimeoutException;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljava/net/ConnectException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;->requestTime:J

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor;->trackNetAvailableEvent(Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor;->trackNetAvailableEvent(Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;I)V

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private onGlobalResponse(Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$RetryException;
        }
    .end annotation

    iget-object v0, p1, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;->response:Lokhttp3/Response;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor;->handleGlobalBizException(Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor;->trackNetAvailableEvent(Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;I)V

    :goto_0
    return-void
.end method

.method private onResponse(Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$RetryException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor;->onGlobalResponse(Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;)V

    return-void
.end method

.method private trackNetAvailableEvent(Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;I)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "event_type_net"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "net_event_result_type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "net_event_flag"

    iget-object v1, p1, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;->request:Lokhttp3/Request;

    invoke-direct {p0, v1}, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor;->getUrlWithoutQueryParam(Lokhttp3/Request;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "net_event_retrycount"

    const-string v1, "0"

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "net_event_requeststarttime"

    iget-wide v1, p1, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;->requestTime:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;->modelBase:Lcom/miui/video/base/common/net/model/ModelBase;

    if-eqz p2, :cond_0

    const-string p2, "net_event_responsecode"

    iget-object v1, p1, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;->response:Lokhttp3/Response;

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "net_event_statuscode"

    iget-object p1, p1, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;->modelBase:Lcom/miui/video/base/common/net/model/ModelBase;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelBase;->getResult()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object p2, p1, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;->response:Lokhttp3/Response;

    if-nez p2, :cond_1

    const-string p1, "net_event_responsecode"

    const-string p2, "-1"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p2, "net_event_responsecode"

    iget-object p1, p1, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;->response:Lokhttp3/Response;

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string p1, "net_event_statuscode"

    const-string p2, "-1"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    new-array v1, p2, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-static {v1}, Lcom/miui/video/base/common/statistics/TrackerUtils;->createTarget([I)I

    move-result p2

    invoke-static {p1, v0, p2}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;I)V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;-><init>(Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$1;)V

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->connectTimeoutMillis()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;->requestTime:J

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;->request:Lokhttp3/Request;

    :try_start_0
    invoke-interface {p1, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor;->coverToModeBaseBy(Lokhttp3/Response;)Lcom/miui/video/base/common/net/model/ModelBase;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;->modelBase:Lcom/miui/video/base/common/net/model/ModelBase;

    iput-object v1, v0, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;->response:Lokhttp3/Response;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lokhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Lokhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    sub-long/2addr v4, v2

    iput-wide v4, v0, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;->requestTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor;->onResponse(Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;)V
    :try_end_1
    .catch Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$RetryException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v2, "ResponseInterceptor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=========retry start =========="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor;->retryTimes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget v2, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor;->retryTimes:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    const-string v1, "ResponseInterceptor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " =========start retry start start  =========="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor;->retryTimes:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget v1, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor;->retryTimes:I

    add-int/2addr v1, v3

    sput v1, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor;->retryTimes:I

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->call()Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_0
    return-object v1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0, v0, p1}, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor;->onFailure(Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor$NetAvailableEntity;Ljava/lang/Throwable;)V

    throw p1
.end method
