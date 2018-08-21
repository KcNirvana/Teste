.class public interface abstract Lcom/autonavi/volley/ResponseDelivery;
.super Ljava/lang/Object;
.source "ResponseDelivery.java"


# virtual methods
.method public abstract postError(Lcom/autonavi/volley/Request;Lcom/autonavi/volley/VolleyError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autonavi/volley/Request",
            "<*>;",
            "Lcom/autonavi/volley/VolleyError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract postResponse(Lcom/autonavi/volley/Request;Lcom/autonavi/volley/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autonavi/volley/Request",
            "<*>;",
            "Lcom/autonavi/volley/Response",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract postResponse(Lcom/autonavi/volley/Request;Lcom/autonavi/volley/Response;Ljava/lang/Runnable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autonavi/volley/Request",
            "<*>;",
            "Lcom/autonavi/volley/Response",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation
.end method
