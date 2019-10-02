.class public Lcom/mixpanel/android/java_websocket/handshake/HandshakeImpl1Server;
.super Lcom/mixpanel/android/java_websocket/handshake/HandshakedataImpl1;
.source "HandshakeImpl1Server.java"

# interfaces
.implements Lcom/mixpanel/android/java_websocket/handshake/ServerHandshakeBuilder;


# instance fields
.field private httpstatus:S

.field private httpstatusmessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mixpanel/android/java_websocket/handshake/HandshakedataImpl1;-><init>()V

    return-void
.end method


# virtual methods
.method public getHttpStatus()S
    .locals 1

    iget-short v0, p0, Lcom/mixpanel/android/java_websocket/handshake/HandshakeImpl1Server;->httpstatus:S

    return v0
.end method

.method public getHttpStatusMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/handshake/HandshakeImpl1Server;->httpstatusmessage:Ljava/lang/String;

    return-object v0
.end method

.method public setHttpStatus(S)V
    .locals 0

    iput-short p1, p0, Lcom/mixpanel/android/java_websocket/handshake/HandshakeImpl1Server;->httpstatus:S

    return-void
.end method

.method public setHttpStatusMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mixpanel/android/java_websocket/handshake/HandshakeImpl1Server;->httpstatusmessage:Ljava/lang/String;

    return-void
.end method
