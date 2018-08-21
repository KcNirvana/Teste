.class public Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;
.super Ljava/lang/Object;
.source "RestBineryRequest.java"

# interfaces
.implements Lcom/autonavi/its/protocol/ability/net/INetAbility;


# static fields
.field private static final FAIL:I = -0x1

.field private static final SUCCESS:I = 0x1


# instance fields
.field private handler:Landroid/os/Handler;

.field private hostNameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private mIsReqBineryData:Z

.field private mReq:Lcom/autonavi/its/protocol/BaseRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest$1;

    invoke-direct {v0, p0}, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest$1;-><init>(Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;)V

    iput-object v0, p0, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest$2;

    invoke-direct {v0, p0}, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest$2;-><init>(Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;)V

    iput-object v0, p0, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;->hostNameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;)Lcom/autonavi/its/protocol/BaseRequest;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;->mReq:Lcom/autonavi/its/protocol/BaseRequest;

    return-object v0
.end method

.method static synthetic access$100(Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;)Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;->hostNameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method static synthetic access$200(Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public doRequest(Ljava/lang/String;Lcom/autonavi/its/protocol/BaseRequest;Ljava/lang/String;)V
    .locals 2

    iput-object p2, p0, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;->mReq:Lcom/autonavi/its/protocol/BaseRequest;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest$3;

    invoke-direct {v1, p0, p2}, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest$3;-><init>(Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;Lcom/autonavi/its/protocol/BaseRequest;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public isReqBineryData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;->mIsReqBineryData:Z

    return v0
.end method

.method public setIsReqBineryData(Z)Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;->mIsReqBineryData:Z

    return-object p0
.end method
