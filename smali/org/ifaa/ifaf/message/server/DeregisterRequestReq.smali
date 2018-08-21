.class public Lorg/ifaa/ifaf/message/server/DeregisterRequestReq;
.super Lorg/ifaa/ifaf/message/server/IFAFServerMessage;
.source "DeregisterRequestReq.java"


# instance fields
.field private certEncode:B

.field private ifaaVersion:B

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/ifaa/ifaf/message/server/IFAFServerMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getCertEncode()B
    .locals 1

    iget-byte v0, p0, Lorg/ifaa/ifaf/message/server/DeregisterRequestReq;->certEncode:B

    return v0
.end method

.method public getIfaaVersion()B
    .locals 1

    iget-byte v0, p0, Lorg/ifaa/ifaf/message/server/DeregisterRequestReq;->ifaaVersion:B

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ifaa/ifaf/message/server/DeregisterRequestReq;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setCertEncode(B)V
    .locals 0

    iput-byte p1, p0, Lorg/ifaa/ifaf/message/server/DeregisterRequestReq;->certEncode:B

    return-void
.end method

.method public setIfaaVersion(B)V
    .locals 0

    iput-byte p1, p0, Lorg/ifaa/ifaf/message/server/DeregisterRequestReq;->ifaaVersion:B

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/ifaa/ifaf/message/server/DeregisterRequestReq;->token:Ljava/lang/String;

    return-void
.end method
