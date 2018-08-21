.class public Lorg/ifaa/ifaf/message/server/IFAFServerRequestResp;
.super Lorg/ifaa/ifaf/message/server/IFAFServerMessage;
.source "IFAFServerRequestResp.java"


# instance fields
.field private request:Lorg/ifaa/ifaf/message/IFAFMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/ifaa/ifaf/message/server/IFAFServerMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequest()Lorg/ifaa/ifaf/message/IFAFMessage;
    .locals 1

    iget-object v0, p0, Lorg/ifaa/ifaf/message/server/IFAFServerRequestResp;->request:Lorg/ifaa/ifaf/message/IFAFMessage;

    return-object v0
.end method

.method public setRequest(Lorg/ifaa/ifaf/message/IFAFMessage;)V
    .locals 0

    iput-object p1, p0, Lorg/ifaa/ifaf/message/server/IFAFServerRequestResp;->request:Lorg/ifaa/ifaf/message/IFAFMessage;

    return-void
.end method
