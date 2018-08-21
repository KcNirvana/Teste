.class public Lorg/ifaa/ifaf/message/server/RegisterRequestReq;
.super Ljava/lang/Object;
.source "RegisterRequestReq.java"


# instance fields
.field private authType:B

.field private certEncode:B

.field private ifaaVersion:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthType()B
    .locals 1

    iget-byte v0, p0, Lorg/ifaa/ifaf/message/server/RegisterRequestReq;->authType:B

    return v0
.end method

.method public getCertEncode()B
    .locals 1

    iget-byte v0, p0, Lorg/ifaa/ifaf/message/server/RegisterRequestReq;->certEncode:B

    return v0
.end method

.method public getIfaaVersion()B
    .locals 1

    iget-byte v0, p0, Lorg/ifaa/ifaf/message/server/RegisterRequestReq;->ifaaVersion:B

    return v0
.end method

.method public setAuthType(B)V
    .locals 0

    iput-byte p1, p0, Lorg/ifaa/ifaf/message/server/RegisterRequestReq;->authType:B

    return-void
.end method

.method public setCertEncode(B)V
    .locals 0

    iput-byte p1, p0, Lorg/ifaa/ifaf/message/server/RegisterRequestReq;->certEncode:B

    return-void
.end method

.method public setIfaaVersion(B)V
    .locals 0

    iput-byte p1, p0, Lorg/ifaa/ifaf/message/server/RegisterRequestReq;->ifaaVersion:B

    return-void
.end method
