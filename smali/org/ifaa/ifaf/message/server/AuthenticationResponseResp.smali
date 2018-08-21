.class public Lorg/ifaa/ifaf/message/server/AuthenticationResponseResp;
.super Lorg/ifaa/ifaf/message/server/IFAFServerMessage;
.source "AuthenticationResponseResp.java"


# instance fields
.field private authenticationResult:Z

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/ifaa/ifaf/message/server/IFAFServerMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ifaa/ifaf/message/server/AuthenticationResponseResp;->token:Ljava/lang/String;

    return-object v0
.end method

.method public isAuthenticationResult()Z
    .locals 1

    iget-boolean v0, p0, Lorg/ifaa/ifaf/message/server/AuthenticationResponseResp;->authenticationResult:Z

    return v0
.end method

.method public setAuthenticationResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/ifaa/ifaf/message/server/AuthenticationResponseResp;->authenticationResult:Z

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/ifaa/ifaf/message/server/AuthenticationResponseResp;->token:Ljava/lang/String;

    return-void
.end method
