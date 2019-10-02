.class public Lcom/xiaomi/phonenum/innetdate/InNetDateHelper;
.super Ljava/lang/Object;
.source "InNetDateHelper.java"


# static fields
.field private static final DEFAULT_IN_NET_TIME:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "InNetTimeHelper"


# instance fields
.field private httpFactory:Lcom/xiaomi/phonenum/http/HttpFactory;

.field private logger:Lcom/xiaomi/phonenum/utils/Logger;

.field private phoneUtil:Lcom/xiaomi/phonenum/phone/PhoneUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/xiaomi/phonenum/utils/LoggerManager;->getLogger()Lcom/xiaomi/phonenum/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/innetdate/InNetDateHelper;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    new-instance v0, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory;

    invoke-direct {v0, p1}, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/phonenum/innetdate/InNetDateHelper;->httpFactory:Lcom/xiaomi/phonenum/http/HttpFactory;

    invoke-static {p1}, Lcom/xiaomi/phonenum/phone/PhoneInfoManager;->getDefaultPhoneUtil(Landroid/content/Context;)Lcom/xiaomi/phonenum/phone/PhoneUtil;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/phonenum/innetdate/InNetDateHelper;->phoneUtil:Lcom/xiaomi/phonenum/phone/PhoneUtil;

    return-void
.end method

.method private getInNetDate(ILjava/lang/String;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/phonenum/http/Request$Builder;

    invoke-direct {v0}, Lcom/xiaomi/phonenum/http/Request$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://touch.10086.cn/i/v1/cust/info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "?channel=02&time="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaomi/phonenum/innetdate/InNetDateHelper;->getTimeStamp()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/xiaomi/phonenum/http/Request$Builder;->url(Ljava/lang/String;)Lcom/xiaomi/phonenum/http/Request$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/phonenum/http/Request$Builder;->build()Lcom/xiaomi/phonenum/http/Request;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaomi/phonenum/innetdate/InNetDateHelper;->httpFactory:Lcom/xiaomi/phonenum/http/HttpFactory;

    invoke-virtual {v0, p1}, Lcom/xiaomi/phonenum/http/HttpFactory;->createDataHttpClient(I)Lcom/xiaomi/phonenum/http/HttpClient;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/xiaomi/phonenum/http/HttpClient;->excute(Lcom/xiaomi/phonenum/http/Request;)Lcom/xiaomi/phonenum/http/Response;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/phonenum/innetdate/InNetDateHelper;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    const-string v0, "InNetTimeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInNetDate response:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/xiaomi/phonenum/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/xiaomi/phonenum/http/Response;->body:Ljava/lang/String;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "inNetDate"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/phonenum/innetdate/InNetDateHelper;->parseInNetTime(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/xiaomi/phonenum/innetdate/InNetDateHelper;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    const-string v0, "InNetTimeHelper"

    const-string v1, "JSONException:"

    invoke-interface {p2, v0, v1, p1}, Lcom/xiaomi/phonenum/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method private getMobileInNetTimeHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Accept"

    const-string v2, "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip, deflate, sdch"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Accept-Language"

    const-string v2, "zh-CN,zh;q=0.8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Connection"

    const-string v2, "keep-alive"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Upgrade-Insecure-Requests"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Referer"

    const-string v2, "http://touch.10086.cn/i/mobile/custinfoqry.html"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getMobileInNetTimeHeadersWithCookie()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "connection"

    const-string v2, "Keep-Alive"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Cache-Control"

    const-string v2, "no-store, must-revalidate"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pragma"

    const-string v2, "no-cache"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Accept"

    const-string v2, "application/json, text/javascript, */*; q=0.01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X-Requested-With"

    const-string v2, "XMLHttpRequest"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "If-Modified-Since"

    const-string v2, "0e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "expires"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Referer"

    const-string v2, "http://touch.10086.cn/i/mobile/custinfoqry.html"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip, deflate, sdch"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Accept-Language"

    const-string v2, "Keep-Alive"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "connection"

    const-string v2, "zh-CN,zh;q=0.8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getPhoneNum(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/phonenum/http/Request$Builder;

    invoke-direct {v0}, Lcom/xiaomi/phonenum/http/Request$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://touch.10086.cn/i/v1/auth/loginfo?channel=02&time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaomi/phonenum/innetdate/InNetDateHelper;->getTimeStamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/phonenum/http/Request$Builder;->url(Ljava/lang/String;)Lcom/xiaomi/phonenum/http/Request$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaomi/phonenum/innetdate/InNetDateHelper;->getMobileInNetTimeHeadersWithCookie()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/phonenum/http/Request$Builder;->headers(Ljava/util/Map;)Lcom/xiaomi/phonenum/http/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/http/Request$Builder;->build()Lcom/xiaomi/phonenum/http/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/phonenum/innetdate/InNetDateHelper;->httpFactory:Lcom/xiaomi/phonenum/http/HttpFactory;

    invoke-virtual {v1, p1}, Lcom/xiaomi/phonenum/http/HttpFactory;->createDataHttpClient(I)Lcom/xiaomi/phonenum/http/HttpClient;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/xiaomi/phonenum/http/HttpClient;->excute(Lcom/xiaomi/phonenum/http/Request;)Lcom/xiaomi/phonenum/http/Response;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/phonenum/innetdate/InNetDateHelper;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    const-string v1, "InNetTimeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneNum response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/phonenum/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/xiaomi/phonenum/http/Response;->body:Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "loginValue"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/xiaomi/phonenum/innetdate/InNetDateHelper;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    const-string v1, "InNetTimeHelper"

    const-string v2, "JSONException:"

    invoke-interface {v0, v1, v2, p1}, Lcom/xiaomi/phonenum/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getTimeStamp()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMdHHmmssS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loginCM(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/phonenum/http/Request$Builder;

    invoke-direct {v0}, Lcom/xiaomi/phonenum/http/Request$Builder;-><init>()V

    const-string v1, "http://touch.10086.cn/i/v1/auth/getFreeAuthArtifact"

    invoke-virtual {v0, v1}, Lcom/xiaomi/phonenum/http/Request$Builder;->url(Ljava/lang/String;)Lcom/xiaomi/phonenum/http/Request$Builder;

    move-result-object v0

    const-string v1, "backUrl=http%3A%2F%2Ftouch.10086.cn%2Fi%2Fmobile%2Fcustinfoqry.html"

    invoke-virtual {v0, v1}, Lcom/xiaomi/phonenum/http/Request$Builder;->appendQuery(Ljava/lang/String;)Lcom/xiaomi/phonenum/http/Request$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaomi/phonenum/innetdate/InNetDateHelper;->getMobileInNetTimeHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/phonenum/http/Request$Builder;->headers(Ljava/util/Map;)Lcom/xiaomi/phonenum/http/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/http/Request$Builder;->build()Lcom/xiaomi/phonenum/http/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/phonenum/innetdate/InNetDateHelper;->httpFactory:Lcom/xiaomi/phonenum/http/HttpFactory;

    invoke-virtual {v1, p1}, Lcom/xiaomi/phonenum/http/HttpFactory;->createDataHttpClient(I)Lcom/xiaomi/phonenum/http/HttpClient;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/xiaomi/phonenum/http/HttpClient;->excute(Lcom/xiaomi/phonenum/http/Request;)Lcom/xiaomi/phonenum/http/Response;

    move-result-object v0

    iget-object v1, v0, Lcom/xiaomi/phonenum/http/Response;->location:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/phonenum/innetdate/InNetDateHelper;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    const-string v2, "InNetTimeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "login location:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/xiaomi/phonenum/http/Response;->location:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/xiaomi/phonenum/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/phonenum/innetdate/InNetDateHelper;->httpFactory:Lcom/xiaomi/phonenum/http/HttpFactory;

    invoke-virtual {v1, p1}, Lcom/xiaomi/phonenum/http/HttpFactory;->createDataHttpClient(I)Lcom/xiaomi/phonenum/http/HttpClient;

    move-result-object p1

    new-instance v1, Lcom/xiaomi/phonenum/http/Request$Builder;

    invoke-direct {v1}, Lcom/xiaomi/phonenum/http/Request$Builder;-><init>()V

    iget-object v0, v0, Lcom/xiaomi/phonenum/http/Response;->location:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/phonenum/http/Request$Builder;->url(Ljava/lang/String;)Lcom/xiaomi/phonenum/http/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/http/Request$Builder;->build()Lcom/xiaomi/phonenum/http/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/xiaomi/phonenum/http/HttpClient;->excute(Lcom/xiaomi/phonenum/http/Request;)Lcom/xiaomi/phonenum/http/Response;

    move-result-object v0

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/phonenum/innetdate/InNetDateHelper;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    const-string v1, "InNetTimeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "login response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/xiaomi/phonenum/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private parseInNetTime(Ljava/lang/String;)J
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v3

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/xiaomi/phonenum/innetdate/InNetDateHelper;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    const-string v3, "InNetTimeHelper"

    const-string v4, "ParseException"

    invoke-interface {v0, v3, v4, p1}, Lcom/xiaomi/phonenum/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-wide v1
.end method


# virtual methods
.method public getInNetDate(I)Lcom/xiaomi/phonenum/innetdate/InNetDateResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/phonenum/innetdate/InNetDateHelper;->phoneUtil:Lcom/xiaomi/phonenum/phone/PhoneUtil;

    invoke-interface {v0, p1}, Lcom/xiaomi/phonenum/phone/PhoneUtil;->getSubIdForSlotId(I)I

    move-result p1

    iget-object v0, p0, Lcom/xiaomi/phonenum/innetdate/InNetDateHelper;->phoneUtil:Lcom/xiaomi/phonenum/phone/PhoneUtil;

    invoke-interface {v0, p1}, Lcom/xiaomi/phonenum/phone/PhoneUtil;->getSimForSubId(I)Lcom/xiaomi/phonenum/bean/Sim;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/xiaomi/phonenum/innetdate/InNetDateHelper;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    const-string v0, "InNetTimeHelper"

    const-string v1, "step 0 sim not ready"

    invoke-interface {p1, v0, v1}, Lcom/xiaomi/phonenum/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/xiaomi/phonenum/innetdate/InNetDateResult;

    sget-object v0, Lcom/xiaomi/phonenum/bean/Error;->SIM_NOT_READY:Lcom/xiaomi/phonenum/bean/Error;

    invoke-direct {p1, v0}, Lcom/xiaomi/phonenum/innetdate/InNetDateResult;-><init>(Lcom/xiaomi/phonenum/bean/Error;)V

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/phonenum/innetdate/InNetDateHelper;->loginCM(I)V

    iget-object v0, p0, Lcom/xiaomi/phonenum/innetdate/InNetDateHelper;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    const-string v1, "InNetTimeHelper"

    const-string v2, "step 1 login"

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/phonenum/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/xiaomi/phonenum/innetdate/InNetDateHelper;->getPhoneNum(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/phonenum/innetdate/InNetDateHelper;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    const-string v2, "InNetTimeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "step 2 get phone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/xiaomi/phonenum/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Lcom/xiaomi/phonenum/innetdate/InNetDateResult;

    sget-object v0, Lcom/xiaomi/phonenum/bean/Error;->UNKNOW:Lcom/xiaomi/phonenum/bean/Error;

    invoke-direct {p1, v0}, Lcom/xiaomi/phonenum/innetdate/InNetDateResult;-><init>(Lcom/xiaomi/phonenum/bean/Error;)V

    return-object p1

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/phonenum/innetdate/InNetDateHelper;->getInNetDate(ILjava/lang/String;)J

    move-result-wide v1

    iget-object p1, p0, Lcom/xiaomi/phonenum/innetdate/InNetDateHelper;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    const-string v3, "InNetTimeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "step 3 get inNetDate:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Lcom/xiaomi/phonenum/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_2

    new-instance p1, Lcom/xiaomi/phonenum/innetdate/InNetDateResult;

    sget-object v0, Lcom/xiaomi/phonenum/bean/Error;->UNKNOW:Lcom/xiaomi/phonenum/bean/Error;

    invoke-direct {p1, v0}, Lcom/xiaomi/phonenum/innetdate/InNetDateResult;-><init>(Lcom/xiaomi/phonenum/bean/Error;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/xiaomi/phonenum/innetdate/InNetDateResult;

    invoke-direct {p1, v1, v2, v0}, Lcom/xiaomi/phonenum/innetdate/InNetDateResult;-><init>(JLjava/lang/String;)V

    return-object p1
.end method
