.class public Lcom/autonavi/volley/NetworkError;
.super Lcom/autonavi/volley/VolleyError;
.source "NetworkError.java"


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

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
