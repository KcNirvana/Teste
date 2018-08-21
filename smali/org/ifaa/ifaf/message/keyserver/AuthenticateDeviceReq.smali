.class public Lorg/ifaa/ifaf/message/keyserver/AuthenticateDeviceReq;
.super Lorg/ifaa/ifaf/message/keyserver/IfaaKeyServerMessage;
.source "AuthenticateDeviceReq.java"


# instance fields
.field private signature:Ljava/lang/String;

.field private signedData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/ifaa/ifaf/message/keyserver/IfaaKeyServerMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ifaa/ifaf/message/keyserver/AuthenticateDeviceReq;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getSignedData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ifaa/ifaf/message/keyserver/AuthenticateDeviceReq;->signedData:Ljava/lang/String;

    return-object v0
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/ifaa/ifaf/message/keyserver/AuthenticateDeviceReq;->signature:Ljava/lang/String;

    return-void
.end method

.method public setSignedData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/ifaa/ifaf/message/keyserver/AuthenticateDeviceReq;->signedData:Ljava/lang/String;

    return-void
.end method
