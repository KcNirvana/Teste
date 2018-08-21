.class public Lcom/autonavi/its/protocol/ability/net/ByteArrayRequest;
.super Lcom/autonavi/volley/Request;
.source "ByteArrayRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/autonavi/volley/Request",
        "<[B>;"
    }
.end annotation


# instance fields
.field private mlListener:Lcom/autonavi/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/autonavi/volley/Response$Listener",
            "<[B>;"
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
            "<[B>;",
            "Lcom/autonavi/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Lcom/autonavi/volley/Request;-><init>(ILjava/lang/String;Lcom/autonavi/volley/Response$ErrorListener;)V

    iput-object p3, p0, Lcom/autonavi/its/protocol/ability/net/ByteArrayRequest;->mlListener:Lcom/autonavi/volley/Response$Listener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/autonavi/volley/Response$Listener;Lcom/autonavi/volley/Response$ErrorListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/autonavi/volley/Response$Listener",
            "<[B>;",
            "Lcom/autonavi/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/autonavi/its/protocol/ability/net/ByteArrayRequest;-><init>(ILjava/lang/String;Lcom/autonavi/volley/Response$Listener;Lcom/autonavi/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/autonavi/its/protocol/ability/net/ByteArrayRequest;->deliverResponse([B)V

    return-void
.end method

.method protected deliverResponse([B)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/ability/net/ByteArrayRequest;->mlListener:Lcom/autonavi/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/autonavi/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method protected parseNetworkResponse(Lcom/autonavi/volley/NetworkResponse;)Lcom/autonavi/volley/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autonavi/volley/NetworkResponse;",
            ")",
            "Lcom/autonavi/volley/Response",
            "<[B>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/autonavi/volley/NetworkResponse;->getData()[B

    move-result-object v0

    invoke-static {p1}, Lcom/autonavi/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/autonavi/volley/NetworkResponse;)Lcom/autonavi/volley/Cache$Entry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/volley/Response;->success(Ljava/lang/Object;Lcom/autonavi/volley/Cache$Entry;)Lcom/autonavi/volley/Response;

    move-result-object v0

    return-object v0
.end method
