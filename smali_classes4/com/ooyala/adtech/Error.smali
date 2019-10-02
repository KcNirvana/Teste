.class public Lcom/ooyala/adtech/Error;
.super Lcom/ooyala/pulse/Error;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ooyala/pulse/Error;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ooyala/pulse/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected setCode(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ooyala/pulse/Error;->setCode(I)V

    return-void
.end method

.method protected setDomain(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ooyala/pulse/Error;->setDomain(Ljava/lang/String;)V

    return-void
.end method

.method protected setMessage(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ooyala/pulse/Error;->setMessage(Ljava/lang/String;)V

    return-void
.end method
