.class public interface abstract Lcom/autonavi/volley/Network;
.super Ljava/lang/Object;
.source "Network.java"


# virtual methods
.method public abstract performRequest(Lcom/autonavi/volley/Request;)Lcom/autonavi/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autonavi/volley/Request",
            "<*>;)",
            "Lcom/autonavi/volley/NetworkResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autonavi/volley/VolleyError;
        }
    .end annotation
.end method
