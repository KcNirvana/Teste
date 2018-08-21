.class public Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest;
.super Ljava/lang/Object;
.source "VolleyByteArrayRequest.java"

# interfaces
.implements Lcom/autonavi/its/protocol/ability/net/INetAbility;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doRequest(Ljava/lang/String;Lcom/autonavi/its/protocol/BaseRequest;Ljava/lang/String;)V
    .locals 7

    const-string/jumbo v1, "POST"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    new-instance v0, Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest$3;

    invoke-virtual {p2}, Lcom/autonavi/its/protocol/BaseRequest;->getDecoratedUrl()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest$1;

    invoke-direct {v4, p0, p2}, Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest$1;-><init>(Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest;Lcom/autonavi/its/protocol/BaseRequest;)V

    new-instance v5, Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest$2;

    invoke-direct {v5, p0, p2}, Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest$2;-><init>(Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest;Lcom/autonavi/its/protocol/BaseRequest;)V

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest$3;-><init>(Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest;ILjava/lang/String;Lcom/autonavi/volley/Response$Listener;Lcom/autonavi/volley/Response$ErrorListener;Lcom/autonavi/its/protocol/BaseRequest;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p3}, Lcom/autonavi/its/protocol/ability/net/ByteArrayRequest;->setTag(Ljava/lang/Object;)Lcom/autonavi/volley/Request;

    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getRequestQueue()Lcom/autonavi/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/autonavi/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getRequestQueue()Lcom/autonavi/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/volley/RequestQueue;->add(Lcom/autonavi/volley/Request;)Lcom/autonavi/volley/Request;

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
