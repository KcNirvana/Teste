.class public Lorg/ifaa/ifaf/message/keyserver/AuthenticateDeviceResp;
.super Lorg/ifaa/ifaf/message/keyserver/IfaaKeyServerMessage;
.source "AuthenticateDeviceResp.java"


# instance fields
.field private isValid:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/ifaa/ifaf/message/keyserver/IfaaKeyServerMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsValid()Z
    .locals 1

    iget-boolean v0, p0, Lorg/ifaa/ifaf/message/keyserver/AuthenticateDeviceResp;->isValid:Z

    return v0
.end method

.method public setIsValid(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/ifaa/ifaf/message/keyserver/AuthenticateDeviceResp;->isValid:Z

    return-void
.end method
