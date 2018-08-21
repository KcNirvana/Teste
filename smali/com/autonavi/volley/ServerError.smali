.class public Lcom/autonavi/volley/ServerError;
.super Lcom/autonavi/volley/VolleyError;
.source "ServerError.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/volley/VolleyError;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/volley/NetworkResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/volley/VolleyError;-><init>(Lcom/autonavi/volley/NetworkResponse;)V

    return-void
.end method
