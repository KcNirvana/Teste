.class public Lcom/npaw/youbora/youboralib/com/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/npaw/youbora/youboralib/com/Request$DefaultOnFailureListener;,
        Lcom/npaw/youbora/youboralib/com/Request$OnFailureListener;,
        Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;,
        Lcom/npaw/youbora/youboralib/com/Request$SendHttpRequestTask;
    }
.end annotation


# static fields
.field public static final OPTIONS_KEY_MAX_RETRIES:Ljava/lang/String; = "maxRetries"

.field public static final OPTIONS_KEY_METHOD:Ljava/lang/String; = "method"

.field public static final OPTIONS_KEY_REQUEST_HEADERS:Ljava/lang/String; = "requestHeaders"

.field public static final OPTIONS_KEY_RETRY_AFTER:Ljava/lang/String; = "retryAfter"

.field public static defaultConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static globalSuccessListener:Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;


# instance fields
.field private configuration:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private failureListener:Lcom/npaw/youbora/youboralib/com/Request$OnFailureListener;

.field private host:Ljava/lang/String;

.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private service:Ljava/lang/String;

.field private successListener:Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "method"

    const-string v2, "GET"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "requestHeaders"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "maxRetries"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "retryAfter"

    const/16 v2, 0x1388

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/npaw/youbora/youboralib/com/Request;->defaultConfig:Ljava/util/Map;

    const/4 v0, 0x0

    sput-object v0, Lcom/npaw/youbora/youboralib/com/Request;->globalSuccessListener:Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/npaw/youbora/youboralib/com/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p4, :cond_0

    :try_start_0
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_7

    :cond_0
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/npaw/youbora/youboralib/com/Request;->configuration:Ljava/util/Map;

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/com/Request;->configuration:Ljava/util/Map;

    const-string v1, "method"

    const-string v2, "method"

    invoke-interface {p4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "method"

    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/npaw/youbora/youboralib/com/Request;->defaultConfig:Ljava/util/Map;

    const-string v3, "method"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/com/Request;->configuration:Ljava/util/Map;

    const-string v1, "requestHeaders"

    const-string v2, "requestHeaders"

    invoke-interface {p4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "requestHeaders"

    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/npaw/youbora/youboralib/com/Request;->defaultConfig:Ljava/util/Map;

    const-string v3, "requestHeaders"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/com/Request;->configuration:Ljava/util/Map;

    const-string v1, "maxRetries"

    const-string v2, "maxRetries"

    invoke-interface {p4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "maxRetries"

    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_3
    sget-object v2, Lcom/npaw/youbora/youboralib/com/Request;->defaultConfig:Ljava/util/Map;

    const-string v3, "maxRetries"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/com/Request;->configuration:Ljava/util/Map;

    const-string v1, "retryAfter"

    const-string v2, "retryAfter"

    invoke-interface {p4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "retryAfter"

    :goto_4
    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    goto :goto_5

    :cond_4
    sget-object p4, Lcom/npaw/youbora/youboralib/com/Request;->defaultConfig:Ljava/util/Map;

    const-string v2, "retryAfter"

    goto :goto_4

    :goto_5
    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_5

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    goto :goto_6

    :cond_5
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p3, p4

    :goto_6
    iput-object p3, p0, Lcom/npaw/youbora/youboralib/com/Request;->parameters:Ljava/util/Map;

    if-nez p1, :cond_6

    const-string p1, ""

    :cond_6
    invoke-virtual {p0, p1}, Lcom/npaw/youbora/youboralib/com/Request;->setHost(Ljava/lang/String;)V

    if-nez p2, :cond_7

    const-string p2, ""

    :cond_7
    invoke-virtual {p0, p2}, Lcom/npaw/youbora/youboralib/com/Request;->setService(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/npaw/youbora/youboralib/com/Request;->configuration:Ljava/util/Map;

    const-string p2, "maxRetries"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object p1, p0, Lcom/npaw/youbora/youboralib/com/Request;->configuration:Ljava/util/Map;

    const-string p2, "retryAfter"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v4, p1

    new-instance p1, Lcom/npaw/youbora/youboralib/com/Request$DefaultOnFailureListener;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/npaw/youbora/youboralib/com/Request$DefaultOnFailureListener;-><init>(Lcom/npaw/youbora/youboralib/com/Request;Lcom/npaw/youbora/youboralib/com/Request;IJ)V

    invoke-virtual {p0, p1}, Lcom/npaw/youbora/youboralib/com/Request;->setFailureListener(Lcom/npaw/youbora/youboralib/com/Request$OnFailureListener;)Lcom/npaw/youbora/youboralib/com/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :goto_7
    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :goto_8
    return-void
.end method

.method static synthetic access$100(Lcom/npaw/youbora/youboralib/com/Request;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/npaw/youbora/youboralib/com/Request;->configuration:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/npaw/youbora/youboralib/com/Request;)Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;
    .locals 0

    iget-object p0, p0, Lcom/npaw/youbora/youboralib/com/Request;->successListener:Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;

    return-object p0
.end method

.method static synthetic access$300()Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;
    .locals 1

    sget-object v0, Lcom/npaw/youbora/youboralib/com/Request;->globalSuccessListener:Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/npaw/youbora/youboralib/com/Request;)Lcom/npaw/youbora/youboralib/com/Request$OnFailureListener;
    .locals 0

    iget-object p0, p0, Lcom/npaw/youbora/youboralib/com/Request;->failureListener:Lcom/npaw/youbora/youboralib/com/Request$OnFailureListener;

    return-object p0
.end method

.method public static getGlobalSuccessListener()Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;
    .locals 1

    sget-object v0, Lcom/npaw/youbora/youboralib/com/Request;->globalSuccessListener:Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;

    return-object v0
.end method

.method public static setGlobalSuccessListener(Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V
    .locals 0

    sput-object p0, Lcom/npaw/youbora/youboralib/com/Request;->globalSuccessListener:Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;

    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/com/Request;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/com/Request;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/npaw/youbora/youboralib/com/Request;->parameters:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/com/Request;->parameters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/npaw/youbora/youboralib/com/Request;->parameters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/util/Map;

    if-eqz v3, :cond_1

    new-instance v3, Lorg/json/JSONObject;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :cond_3
    const-string v0, ""

    return-object v0
.end method

.method public getService()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/com/Request;->service:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/com/Request;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/com/Request;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/com/Request;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public send()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/npaw/youbora/youboralib/com/Request$1;

    invoke-direct {v1, p0}, Lcom/npaw/youbora/youboralib/com/Request$1;-><init>(Lcom/npaw/youbora/youboralib/com/Request;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setFailureListener(Lcom/npaw/youbora/youboralib/com/Request$OnFailureListener;)Lcom/npaw/youbora/youboralib/com/Request;
    .locals 0

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/com/Request;->failureListener:Lcom/npaw/youbora/youboralib/com/Request$OnFailureListener;

    return-object p0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/com/Request;->host:Ljava/lang/String;

    return-void
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/npaw/youbora/youboralib/com/Request;
    .locals 1

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/com/Request;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setService(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/com/Request;->service:Ljava/lang/String;

    return-void
.end method

.method public setSuccessListener(Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)Lcom/npaw/youbora/youboralib/com/Request;
    .locals 0

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/com/Request;->successListener:Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;

    return-object p0
.end method
