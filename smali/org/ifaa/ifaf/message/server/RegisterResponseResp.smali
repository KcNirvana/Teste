.class public Lorg/ifaa/ifaf/message/server/RegisterResponseResp;
.super Lorg/ifaa/ifaf/message/server/IFAFServerMessage;
.source "RegisterResponseResp.java"


# instance fields
.field private authType:B

.field private deviceId:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/ifaa/ifaf/message/server/IFAFServerMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthType()B
    .locals 1

    iget-byte v0, p0, Lorg/ifaa/ifaf/message/server/RegisterResponseResp;->authType:B

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ifaa/ifaf/message/server/RegisterResponseResp;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ifaa/ifaf/message/server/RegisterResponseResp;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthType(B)V
    .locals 0

    iput-byte p1, p0, Lorg/ifaa/ifaf/message/server/RegisterResponseResp;->authType:B

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/ifaa/ifaf/message/server/RegisterResponseResp;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/ifaa/ifaf/message/server/RegisterResponseResp;->token:Ljava/lang/String;

    return-void
.end method
