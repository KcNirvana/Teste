.class public Lcom/autonavi/volley/toolbox/JsonArrayRequest;
.super Lcom/autonavi/volley/toolbox/JsonRequest;
.source "JsonArrayRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/autonavi/volley/toolbox/JsonRequest",
        "<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONArray;Lcom/autonavi/volley/Response$Listener;Lcom/autonavi/volley/Response$ErrorListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Lcom/autonavi/volley/Response$Listener",
            "<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lcom/autonavi/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/volley/toolbox/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/autonavi/volley/Response$Listener;Lcom/autonavi/volley/Response$ErrorListener;)V

    return-void

    :cond_0
    invoke-virtual {p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/autonavi/volley/Response$Listener;Lcom/autonavi/volley/Response$ErrorListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/autonavi/volley/Response$Listener",
            "<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lcom/autonavi/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/volley/toolbox/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/autonavi/volley/Response$Listener;Lcom/autonavi/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected parseNetworkResponse(Lcom/autonavi/volley/NetworkResponse;)Lcom/autonavi/volley/Response;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autonavi/volley/NetworkResponse;",
            ")",
            "Lcom/autonavi/volley/Response",
            "<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/autonavi/volley/NetworkResponse;->getData()[B

    move-result-object v3

    iget-object v4, p1, Lcom/autonavi/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string/jumbo v5, "utf-8"

    invoke-static {v4, v5}, Lcom/autonavi/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/autonavi/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/autonavi/volley/NetworkResponse;)Lcom/autonavi/volley/Cache$Entry;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/autonavi/volley/Response;->success(Ljava/lang/Object;Lcom/autonavi/volley/Cache$Entry;)Lcom/autonavi/volley/Response;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    new-instance v3, Lcom/autonavi/volley/ParseError;

    invoke-direct {v3, v0}, Lcom/autonavi/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lcom/autonavi/volley/Response;->error(Lcom/autonavi/volley/VolleyError;)Lcom/autonavi/volley/Response;

    move-result-object v3

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v3, Lcom/autonavi/volley/ParseError;

    invoke-direct {v3, v1}, Lcom/autonavi/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lcom/autonavi/volley/Response;->error(Lcom/autonavi/volley/VolleyError;)Lcom/autonavi/volley/Response;

    move-result-object v3

    goto :goto_0
.end method
