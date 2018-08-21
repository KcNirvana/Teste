.class public Lcom/autonavi/volley/toolbox/StringRequest;
.super Lcom/autonavi/volley/Request;
.source "StringRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/autonavi/volley/Request",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListener:Lcom/autonavi/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/autonavi/volley/Response$Listener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/autonavi/volley/Response$Listener;Lcom/autonavi/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/autonavi/volley/Response$Listener",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/autonavi/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Lcom/autonavi/volley/Request;-><init>(ILjava/lang/String;Lcom/autonavi/volley/Response$ErrorListener;)V

    iput-object p3, p0, Lcom/autonavi/volley/toolbox/StringRequest;->mListener:Lcom/autonavi/volley/Response$Listener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/autonavi/volley/Response$Listener;Lcom/autonavi/volley/Response$ErrorListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/autonavi/volley/Response$Listener",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/autonavi/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/autonavi/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/autonavi/volley/Response$Listener;Lcom/autonavi/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/autonavi/volley/toolbox/StringRequest;->deliverResponse(Ljava/lang/String;)V

    return-void
.end method

.method protected deliverResponse(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/volley/toolbox/StringRequest;->mListener:Lcom/autonavi/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/autonavi/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method protected parseNetworkResponse(Lcom/autonavi/volley/NetworkResponse;)Lcom/autonavi/volley/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autonavi/volley/NetworkResponse;",
            ")",
            "Lcom/autonavi/volley/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/autonavi/volley/NetworkResponse;->getData()[B

    move-result-object v2

    iget-object v3, p1, Lcom/autonavi/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v3}, Lcom/autonavi/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p1}, Lcom/autonavi/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/autonavi/volley/NetworkResponse;)Lcom/autonavi/volley/Cache$Entry;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/volley/Response;->success(Ljava/lang/Object;Lcom/autonavi/volley/Cache$Entry;)Lcom/autonavi/volley/Response;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/autonavi/volley/NetworkResponse;->getData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method
