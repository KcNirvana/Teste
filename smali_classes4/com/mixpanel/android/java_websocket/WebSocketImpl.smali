.class public Lcom/mixpanel/android/java_websocket/WebSocketImpl;
.super Ljava/lang/Object;
.source "WebSocketImpl.java"

# interfaces
.implements Lcom/mixpanel/android/java_websocket/WebSocket;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Assert"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static DEBUG:Z = false

.field public static RCVBUF:I = 0x4000

.field public static final defaultdraftlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mixpanel/android/java_websocket/drafts/Draft;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public channel:Ljava/nio/channels/ByteChannel;

.field private closecode:Ljava/lang/Integer;

.field private closedremotely:Ljava/lang/Boolean;

.field private closemessage:Ljava/lang/String;

.field private current_continuous_frame_opcode:Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

.field private draft:Lcom/mixpanel/android/java_websocket/drafts/Draft;

.field private volatile flushandclosestate:Z

.field private handshakerequest:Lcom/mixpanel/android/java_websocket/handshake/ClientHandshake;

.field public final inQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public key:Ljava/nio/channels/SelectionKey;

.field private knownDrafts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mixpanel/android/java_websocket/drafts/Draft;",
            ">;"
        }
    .end annotation
.end field

.field public final outQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private readystate:Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;

.field private resourceDescriptor:Ljava/lang/String;

.field private role:Lcom/mixpanel/android/java_websocket/WebSocket$Role;

.field private tmpHandshakeBytes:Ljava/nio/ByteBuffer;

.field private final wsl:Lcom/mixpanel/android/java_websocket/WebSocketListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->defaultdraftlist:Ljava/util/List;

    sget-object v0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->defaultdraftlist:Ljava/util/List;

    new-instance v1, Lcom/mixpanel/android/java_websocket/drafts/Draft_17;

    invoke-direct {v1}, Lcom/mixpanel/android/java_websocket/drafts/Draft_17;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->defaultdraftlist:Ljava/util/List;

    new-instance v1, Lcom/mixpanel/android/java_websocket/drafts/Draft_10;

    invoke-direct {v1}, Lcom/mixpanel/android/java_websocket/drafts/Draft_10;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->defaultdraftlist:Ljava/util/List;

    new-instance v1, Lcom/mixpanel/android/java_websocket/drafts/Draft_76;

    invoke-direct {v1}, Lcom/mixpanel/android/java_websocket/drafts/Draft_76;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->defaultdraftlist:Ljava/util/List;

    new-instance v1, Lcom/mixpanel/android/java_websocket/drafts/Draft_75;

    invoke-direct {v1}, Lcom/mixpanel/android/java_websocket/drafts/Draft_75;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/mixpanel/android/java_websocket/WebSocketListener;Lcom/mixpanel/android/java_websocket/drafts/Draft;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->flushandclosestate:Z

    sget-object v1, Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;->NOT_YET_CONNECTED:Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;

    iput-object v1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->readystate:Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->draft:Lcom/mixpanel/android/java_websocket/drafts/Draft;

    iput-object v1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->current_continuous_frame_opcode:Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->handshakerequest:Lcom/mixpanel/android/java_websocket/handshake/ClientHandshake;

    iput-object v1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->closemessage:Ljava/lang/String;

    iput-object v1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->closecode:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->closedremotely:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->resourceDescriptor:Ljava/lang/String;

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->role:Lcom/mixpanel/android/java_websocket/WebSocket$Role;

    sget-object v1, Lcom/mixpanel/android/java_websocket/WebSocket$Role;->SERVER:Lcom/mixpanel/android/java_websocket/WebSocket$Role;

    if-eq v0, v1, :cond_2

    :cond_0
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->inQueue:Ljava/util/concurrent/BlockingQueue;

    iput-object p1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->wsl:Lcom/mixpanel/android/java_websocket/WebSocketListener;

    sget-object p1, Lcom/mixpanel/android/java_websocket/WebSocket$Role;->CLIENT:Lcom/mixpanel/android/java_websocket/WebSocket$Role;

    iput-object p1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->role:Lcom/mixpanel/android/java_websocket/WebSocket$Role;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/mixpanel/android/java_websocket/drafts/Draft;->copyInstance()Lcom/mixpanel/android/java_websocket/drafts/Draft;

    move-result-object p1

    iput-object p1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->draft:Lcom/mixpanel/android/java_websocket/drafts/Draft;

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "parameters must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/mixpanel/android/java_websocket/WebSocketListener;Lcom/mixpanel/android/java_websocket/drafts/Draft;Ljava/net/Socket;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;-><init>(Lcom/mixpanel/android/java_websocket/WebSocketListener;Lcom/mixpanel/android/java_websocket/drafts/Draft;)V

    return-void
.end method

.method public constructor <init>(Lcom/mixpanel/android/java_websocket/WebSocketListener;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mixpanel/android/java_websocket/WebSocketListener;",
            "Ljava/util/List<",
            "Lcom/mixpanel/android/java_websocket/drafts/Draft;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Lcom/mixpanel/android/java_websocket/drafts/Draft;

    invoke-direct {p0, p1, v0}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;-><init>(Lcom/mixpanel/android/java_websocket/WebSocketListener;Lcom/mixpanel/android/java_websocket/drafts/Draft;)V

    sget-object p1, Lcom/mixpanel/android/java_websocket/WebSocket$Role;->SERVER:Lcom/mixpanel/android/java_websocket/WebSocket$Role;

    iput-object p1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->role:Lcom/mixpanel/android/java_websocket/WebSocket$Role;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->knownDrafts:Ljava/util/List;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->defaultdraftlist:Ljava/util/List;

    iput-object p1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->knownDrafts:Ljava/util/List;

    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/mixpanel/android/java_websocket/WebSocketListener;Ljava/util/List;Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mixpanel/android/java_websocket/WebSocketListener;",
            "Ljava/util/List<",
            "Lcom/mixpanel/android/java_websocket/drafts/Draft;",
            ">;",
            "Ljava/net/Socket;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;-><init>(Lcom/mixpanel/android/java_websocket/WebSocketListener;Ljava/util/List;)V

    return-void
.end method

.method private close(ILjava/lang/String;Z)V
    .locals 4

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->readystate:Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;

    sget-object v1, Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;->CLOSING:Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->readystate:Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;

    sget-object v1, Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;->CLOSED:Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->readystate:Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;

    sget-object v1, Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;->OPEN:Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    const/16 v0, 0x3ee

    if-ne p1, v0, :cond_0

    sget-object p3, Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;->CLOSING:Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;

    iput-object p3, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->readystate:Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;

    invoke-virtual {p0, p1, p2, v2}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->draft:Lcom/mixpanel/android/java_websocket/drafts/Draft;

    invoke-virtual {v1}, Lcom/mixpanel/android/java_websocket/drafts/Draft;->getCloseHandshakeType()Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;

    move-result-object v1

    sget-object v3, Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;->NONE:Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;

    if-eq v1, v3, :cond_2

    if-nez p3, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->wsl:Lcom/mixpanel/android/java_websocket/WebSocketListener;

    invoke-interface {v1, p0, p1, p2}, Lcom/mixpanel/android/java_websocket/WebSocketListener;->onWebsocketCloseInitiated(Lcom/mixpanel/android/java_websocket/WebSocket;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_1
    iget-object v3, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->wsl:Lcom/mixpanel/android/java_websocket/WebSocketListener;

    invoke-interface {v3, p0, v1}, Lcom/mixpanel/android/java_websocket/WebSocketListener;->onWebsocketError(Lcom/mixpanel/android/java_websocket/WebSocket;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    new-instance v1, Lcom/mixpanel/android/java_websocket/framing/CloseFrameBuilder;

    invoke-direct {v1, p1, p2}, Lcom/mixpanel/android/java_websocket/framing/CloseFrameBuilder;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->sendFrame(Lcom/mixpanel/android/java_websocket/framing/Framedata;)V
    :try_end_1
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    iget-object v3, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->wsl:Lcom/mixpanel/android/java_websocket/WebSocketListener;

    invoke-interface {v3, p0, v1}, Lcom/mixpanel/android/java_websocket/WebSocketListener;->onWebsocketError(Lcom/mixpanel/android/java_websocket/WebSocket;Ljava/lang/Exception;)V

    const-string v1, "generated frame is invalid"

    invoke-virtual {p0, v0, v1, v2}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    :cond_2
    :goto_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    goto :goto_3

    :cond_3
    const/4 v0, -0x3

    if-ne p1, v0, :cond_4

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    goto :goto_3

    :cond_4
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p2, v2}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    :goto_3
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_5

    invoke-virtual {p0, p1, p2, p3}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    :cond_5
    sget-object p1, Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;->CLOSING:Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;

    iput-object p1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->readystate:Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    return-void

    :cond_6
    return-void
.end method

.method private decodeFrames(Ljava/nio/ByteBuffer;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->draft:Lcom/mixpanel/android/java_websocket/drafts/Draft;

    invoke-virtual {v0, p1}, Lcom/mixpanel/android/java_websocket/drafts/Draft;->translateFrame(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mixpanel/android/java_websocket/framing/Framedata;

    sget-boolean v1, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "matched frame: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Lcom/mixpanel/android/java_websocket/framing/Framedata;->getOpcode()Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

    move-result-object v1

    invoke-interface {v0}, Lcom/mixpanel/android/java_websocket/framing/Framedata;->isFin()Z

    move-result v2

    sget-object v3, Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;->CLOSING:Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

    if-ne v1, v3, :cond_4

    const/16 v1, 0x3ed

    const-string v2, ""

    instance-of v3, v0, Lcom/mixpanel/android/java_websocket/framing/CloseFrame;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/mixpanel/android/java_websocket/framing/CloseFrame;

    invoke-interface {v0}, Lcom/mixpanel/android/java_websocket/framing/CloseFrame;->getCloseCode()I

    move-result v1

    invoke-interface {v0}, Lcom/mixpanel/android/java_websocket/framing/CloseFrame;->getMessage()Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->readystate:Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;

    sget-object v3, Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;->CLOSING:Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;

    const/4 v4, 0x1

    if-ne v0, v3, :cond_2

    invoke-virtual {p0, v1, v2, v4}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->draft:Lcom/mixpanel/android/java_websocket/drafts/Draft;

    invoke-virtual {v0}, Lcom/mixpanel/android/java_websocket/drafts/Draft;->getCloseHandshakeType()Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;

    move-result-object v0

    sget-object v3, Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;->TWOWAY:Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;

    if-ne v0, v3, :cond_3

    invoke-direct {p0, v1, v2, v4}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->close(ILjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;->PING:Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->wsl:Lcom/mixpanel/android/java_websocket/WebSocketListener;

    invoke-interface {v1, p0, v0}, Lcom/mixpanel/android/java_websocket/WebSocketListener;->onWebsocketPing(Lcom/mixpanel/android/java_websocket/WebSocket;Lcom/mixpanel/android/java_websocket/framing/Framedata;)V

    goto :goto_0

    :cond_5
    sget-object v3, Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;->PONG:Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->wsl:Lcom/mixpanel/android/java_websocket/WebSocketListener;

    invoke-interface {v1, p0, v0}, Lcom/mixpanel/android/java_websocket/WebSocketListener;->onWebsocketPong(Lcom/mixpanel/android/java_websocket/WebSocket;Lcom/mixpanel/android/java_websocket/framing/Framedata;)V

    goto :goto_0

    :cond_6
    const/16 v3, 0x3ea

    if-eqz v2, :cond_b

    sget-object v4, Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;->CONTINUOUS:Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

    if-ne v1, v4, :cond_7

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->current_continuous_frame_opcode:Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

    if-nez v2, :cond_a

    sget-object v2, Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;->TEXT:Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;
    :try_end_0
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_3

    if-ne v1, v2, :cond_8

    :try_start_1
    iget-object v1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->wsl:Lcom/mixpanel/android/java_websocket/WebSocketListener;

    invoke-interface {v0}, Lcom/mixpanel/android/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/mixpanel/android/java_websocket/util/Charsetfunctions;->stringUtf8(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lcom/mixpanel/android/java_websocket/WebSocketListener;->onWebsocketMessage(Lcom/mixpanel/android/java_websocket/WebSocket;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->wsl:Lcom/mixpanel/android/java_websocket/WebSocketListener;

    invoke-interface {v1, p0, v0}, Lcom/mixpanel/android/java_websocket/WebSocketListener;->onWebsocketError(Lcom/mixpanel/android/java_websocket/WebSocket;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_8
    sget-object v2, Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;->BINARY:Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;
    :try_end_2
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException; {:try_start_2 .. :try_end_2} :catch_3

    if-ne v1, v2, :cond_9

    :try_start_3
    iget-object v1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->wsl:Lcom/mixpanel/android/java_websocket/WebSocketListener;

    invoke-interface {v0}, Lcom/mixpanel/android/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lcom/mixpanel/android/java_websocket/WebSocketListener;->onWebsocketMessage(Lcom/mixpanel/android/java_websocket/WebSocket;Ljava/nio/ByteBuffer;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->wsl:Lcom/mixpanel/android/java_websocket/WebSocketListener;

    invoke-interface {v1, p0, v0}, Lcom/mixpanel/android/java_websocket/WebSocketListener;->onWebsocketError(Lcom/mixpanel/android/java_websocket/WebSocket;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_9
    new-instance p1, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;

    const-string v0, "non control or continious frame expected"

    invoke-direct {p1, v3, v0}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;

    const-string v0, "Continuous frame sequence not completed."

    invoke-direct {p1, v3, v0}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_b
    :goto_1
    sget-object v4, Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;->CONTINUOUS:Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

    if-eq v1, v4, :cond_d

    iget-object v2, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->current_continuous_frame_opcode:Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

    if-nez v2, :cond_c

    iput-object v1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->current_continuous_frame_opcode:Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

    goto :goto_2

    :cond_c
    new-instance p1, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;

    const-string v0, "Previous continuous frame sequence not completed."

    invoke-direct {p1, v3, v0}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_d
    if-eqz v2, :cond_f

    iget-object v1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->current_continuous_frame_opcode:Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->current_continuous_frame_opcode:Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;

    goto :goto_2

    :cond_e
    new-instance p1, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;

    const-string v0, "Continuous frame sequence was not started."

    invoke-direct {p1, v3, v0}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_f
    iget-object v1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->current_continuous_frame_opcode:Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;
    :try_end_4
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v1, :cond_10

    :goto_2
    :try_start_5
    iget-object v1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->wsl:Lcom/mixpanel/android/java_websocket/WebSocketListener;

    invoke-interface {v1, p0, v0}, Lcom/mixpanel/android/java_websocket/WebSocketListener;->onWebsocketMessageFragment(Lcom/mixpanel/android/java_websocket/WebSocket;Lcom/mixpanel/android/java_websocket/framing/Framedata;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_6
    iget-object v1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->wsl:Lcom/mixpanel/android/java_websocket/WebSocketListener;

    invoke-interface {v1, p0, v0}, Lcom/mixpanel/android/java_websocket/WebSocketListener;->onWebsocketError(Lcom/mixpanel/android/java_websocket/WebSocket;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_10
    new-instance p1, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;

    const-string v0, "Continuous frame sequence was not started."

    invoke-direct {p1, v3, v0}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_6
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_11
    return-void

    :catch_3
    move-exception p1

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->wsl:Lcom/mixpanel/android/java_websocket/WebSocketListener;

    invoke-interface {v0, p0, p1}, Lcom/mixpanel/android/java_websocket/WebSocketListener;->onWebsocketError(Lcom/mixpanel/android/java_websocket/WebSocket;Ljava/lang/Exception;)V

    invoke-virtual {p0, p1}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->close(Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;)V

    return-void
.end method

.method private decodeHandshake(Ljava/nio/ByteBuffer;)Z
    .locals 10

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    :cond_1
    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->draft:Lcom/mixpanel/android/java_websocket/drafts/Draft;

    const/4 v3, 0x1

    if-nez v2, :cond_2

    invoke-direct {p0, v0}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->isFlashEdgeCase(Ljava/nio/ByteBuffer;)Lcom/mixpanel/android/java_websocket/drafts/Draft$HandshakeState;

    move-result-object v2

    sget-object v4, Lcom/mixpanel/android/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lcom/mixpanel/android/java_websocket/drafts/Draft$HandshakeState;
    :try_end_0
    .catch Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_0 .. :try_end_0} :catch_7

    if-ne v2, v4, :cond_2

    :try_start_1
    iget-object v2, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->wsl:Lcom/mixpanel/android/java_websocket/WebSocketListener;

    invoke-interface {v2, p0}, Lcom/mixpanel/android/java_websocket/WebSocketListener;->getFlashPolicy(Lcom/mixpanel/android/java_websocket/WebSocket;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mixpanel/android/java_websocket/util/Charsetfunctions;->utf8Bytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->write(Ljava/nio/ByteBuffer;)V

    const/4 v2, -0x3

    const-string v4, ""

    invoke-virtual {p0, v2, v4}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->close(ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_1 .. :try_end_1} :catch_7

    goto :goto_1

    :catch_0
    const/16 v2, 0x3ee

    :try_start_2
    const-string v4, "remote peer closed connection before flashpolicy could be transmitted"

    invoke-direct {p0, v2, v4, v3}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->close(ILjava/lang/String;Z)V
    :try_end_2
    .catch Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_2 .. :try_end_2} :catch_7

    :goto_1
    return v1

    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->role:Lcom/mixpanel/android/java_websocket/WebSocket$Role;

    sget-object v4, Lcom/mixpanel/android/java_websocket/WebSocket$Role;->SERVER:Lcom/mixpanel/android/java_websocket/WebSocket$Role;

    const/4 v5, -0x1

    const/16 v6, 0x3ea

    if-ne v2, v4, :cond_a

    iget-object v2, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->draft:Lcom/mixpanel/android/java_websocket/drafts/Draft;

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->knownDrafts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_1
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mixpanel/android/java_websocket/drafts/Draft;

    invoke-virtual {v4}, Lcom/mixpanel/android/java_websocket/drafts/Draft;->copyInstance()Lcom/mixpanel/android/java_websocket/drafts/Draft;

    move-result-object v4
    :try_end_3
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_3 .. :try_end_3} :catch_7

    :try_start_4
    iget-object v7, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->role:Lcom/mixpanel/android/java_websocket/WebSocket$Role;

    invoke-virtual {v4, v7}, Lcom/mixpanel/android/java_websocket/drafts/Draft;->setParseMode(Lcom/mixpanel/android/java_websocket/WebSocket$Role;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    invoke-virtual {v4, v0}, Lcom/mixpanel/android/java_websocket/drafts/Draft;->translateHandshake(Ljava/nio/ByteBuffer;)Lcom/mixpanel/android/java_websocket/handshake/Handshakedata;

    move-result-object v7

    instance-of v8, v7, Lcom/mixpanel/android/java_websocket/handshake/ClientHandshake;

    if-nez v8, :cond_4

    const-string v4, "wrong http function"

    invoke-virtual {p0, v6, v4, v1}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    return v1

    :cond_4
    check-cast v7, Lcom/mixpanel/android/java_websocket/handshake/ClientHandshake;

    invoke-virtual {v4, v7}, Lcom/mixpanel/android/java_websocket/drafts/Draft;->acceptHandshakeAsServer(Lcom/mixpanel/android/java_websocket/handshake/ClientHandshake;)Lcom/mixpanel/android/java_websocket/drafts/Draft$HandshakeState;

    move-result-object v8

    sget-object v9, Lcom/mixpanel/android/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lcom/mixpanel/android/java_websocket/drafts/Draft$HandshakeState;

    if-ne v8, v9, :cond_3

    invoke-interface {v7}, Lcom/mixpanel/android/java_websocket/handshake/ClientHandshake;->getResourceDescriptor()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->resourceDescriptor:Ljava/lang/String;
    :try_end_4
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_4 .. :try_end_4} :catch_7

    :try_start_5
    iget-object v8, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->wsl:Lcom/mixpanel/android/java_websocket/WebSocketListener;

    invoke-interface {v8, p0, v4, v7}, Lcom/mixpanel/android/java_websocket/WebSocketListener;->onWebsocketHandshakeReceivedAsServer(Lcom/mixpanel/android/java_websocket/WebSocket;Lcom/mixpanel/android/java_websocket/drafts/Draft;Lcom/mixpanel/android/java_websocket/handshake/ClientHandshake;)Lcom/mixpanel/android/java_websocket/handshake/ServerHandshakeBuilder;

    move-result-object v8
    :try_end_5
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_5 .. :try_end_5} :catch_7

    :try_start_6
    invoke-virtual {v4, v7, v8}, Lcom/mixpanel/android/java_websocket/drafts/Draft;->postProcessHandshakeResponseAsServer(Lcom/mixpanel/android/java_websocket/handshake/ClientHandshake;Lcom/mixpanel/android/java_websocket/handshake/ServerHandshakeBuilder;)Lcom/mixpanel/android/java_websocket/handshake/HandshakeBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->role:Lcom/mixpanel/android/java_websocket/WebSocket$Role;

    invoke-virtual {v4, v8, v9}, Lcom/mixpanel/android/java_websocket/drafts/Draft;->createHandshake(Lcom/mixpanel/android/java_websocket/handshake/Handshakedata;Lcom/mixpanel/android/java_websocket/WebSocket$Role;)Ljava/util/List;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->write(Ljava/util/List;)V

    iput-object v4, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->draft:Lcom/mixpanel/android/java_websocket/drafts/Draft;

    invoke-direct {p0, v7}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->open(Lcom/mixpanel/android/java_websocket/handshake/Handshakedata;)V

    return v3

    :catch_2
    move-exception v4

    iget-object v7, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->wsl:Lcom/mixpanel/android/java_websocket/WebSocketListener;

    invoke-interface {v7, p0, v4}, Lcom/mixpanel/android/java_websocket/WebSocketListener;->onWebsocketError(Lcom/mixpanel/android/java_websocket/WebSocket;Ljava/lang/Exception;)V

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v5, v4, v1}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    return v1

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;->getCloseCode()I

    move-result v7

    invoke-virtual {v4}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v7, v4, v1}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V
    :try_end_6
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_6 .. :try_end_6} :catch_7

    return v1

    :cond_5
    :try_start_7
    iget-object v2, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->draft:Lcom/mixpanel/android/java_websocket/drafts/Draft;

    if-nez v2, :cond_6

    const-string v2, "no draft matches"

    invoke-virtual {p0, v6, v2}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->close(ILjava/lang/String;)V

    :cond_6
    return v1

    :cond_7
    iget-object v2, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->draft:Lcom/mixpanel/android/java_websocket/drafts/Draft;

    invoke-virtual {v2, v0}, Lcom/mixpanel/android/java_websocket/drafts/Draft;->translateHandshake(Ljava/nio/ByteBuffer;)Lcom/mixpanel/android/java_websocket/handshake/Handshakedata;

    move-result-object v2

    instance-of v4, v2, Lcom/mixpanel/android/java_websocket/handshake/ClientHandshake;

    if-nez v4, :cond_8

    const-string v2, "wrong http function"

    invoke-virtual {p0, v6, v2, v1}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    return v1

    :cond_8
    check-cast v2, Lcom/mixpanel/android/java_websocket/handshake/ClientHandshake;

    iget-object v4, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->draft:Lcom/mixpanel/android/java_websocket/drafts/Draft;

    invoke-virtual {v4, v2}, Lcom/mixpanel/android/java_websocket/drafts/Draft;->acceptHandshakeAsServer(Lcom/mixpanel/android/java_websocket/handshake/ClientHandshake;)Lcom/mixpanel/android/java_websocket/drafts/Draft$HandshakeState;

    move-result-object v4

    sget-object v5, Lcom/mixpanel/android/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lcom/mixpanel/android/java_websocket/drafts/Draft$HandshakeState;

    if-ne v4, v5, :cond_9

    invoke-direct {p0, v2}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->open(Lcom/mixpanel/android/java_websocket/handshake/Handshakedata;)V

    return v3

    :cond_9
    const-string v2, "the handshake did finaly not match"

    invoke-virtual {p0, v6, v2}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->close(ILjava/lang/String;)V

    return v1

    :cond_a
    iget-object v2, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->role:Lcom/mixpanel/android/java_websocket/WebSocket$Role;

    sget-object v4, Lcom/mixpanel/android/java_websocket/WebSocket$Role;->CLIENT:Lcom/mixpanel/android/java_websocket/WebSocket$Role;

    if-ne v2, v4, :cond_f

    iget-object v2, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->draft:Lcom/mixpanel/android/java_websocket/drafts/Draft;

    iget-object v4, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->role:Lcom/mixpanel/android/java_websocket/WebSocket$Role;

    invoke-virtual {v2, v4}, Lcom/mixpanel/android/java_websocket/drafts/Draft;->setParseMode(Lcom/mixpanel/android/java_websocket/WebSocket$Role;)V

    iget-object v2, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->draft:Lcom/mixpanel/android/java_websocket/drafts/Draft;

    invoke-virtual {v2, v0}, Lcom/mixpanel/android/java_websocket/drafts/Draft;->translateHandshake(Ljava/nio/ByteBuffer;)Lcom/mixpanel/android/java_websocket/handshake/Handshakedata;

    move-result-object v2

    instance-of v4, v2, Lcom/mixpanel/android/java_websocket/handshake/ServerHandshake;

    if-nez v4, :cond_b

    const-string v2, "wrong http function"

    invoke-virtual {p0, v6, v2, v1}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    return v1

    :cond_b
    check-cast v2, Lcom/mixpanel/android/java_websocket/handshake/ServerHandshake;

    iget-object v4, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->draft:Lcom/mixpanel/android/java_websocket/drafts/Draft;

    iget-object v7, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->handshakerequest:Lcom/mixpanel/android/java_websocket/handshake/ClientHandshake;

    invoke-virtual {v4, v7, v2}, Lcom/mixpanel/android/java_websocket/drafts/Draft;->acceptHandshakeAsClient(Lcom/mixpanel/android/java_websocket/handshake/ClientHandshake;Lcom/mixpanel/android/java_websocket/handshake/ServerHandshake;)Lcom/mixpanel/android/java_websocket/drafts/Draft$HandshakeState;

    move-result-object v4

    sget-object v7, Lcom/mixpanel/android/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lcom/mixpanel/android/java_websocket/drafts/Draft$HandshakeState;
    :try_end_7
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_7 .. :try_end_7} :catch_7

    if-ne v4, v7, :cond_c

    :try_start_8
    iget-object v4, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->wsl:Lcom/mixpanel/android/java_websocket/WebSocketListener;

    iget-object v6, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->handshakerequest:Lcom/mixpanel/android/java_websocket/handshake/ClientHandshake;

    invoke-interface {v4, p0, v6, v2}, Lcom/mixpanel/android/java_websocket/WebSocketListener;->onWebsocketHandshakeReceivedAsClient(Lcom/mixpanel/android/java_websocket/WebSocket;Lcom/mixpanel/android/java_websocket/handshake/ClientHandshake;Lcom/mixpanel/android/java_websocket/handshake/ServerHandshake;)V
    :try_end_8
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_8 .. :try_end_8} :catch_7

    :try_start_9
    invoke-direct {p0, v2}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->open(Lcom/mixpanel/android/java_websocket/handshake/Handshakedata;)V

    return v3

    :catch_4
    move-exception v2

    iget-object v3, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->wsl:Lcom/mixpanel/android/java_websocket/WebSocketListener;

    invoke-interface {v3, p0, v2}, Lcom/mixpanel/android/java_websocket/WebSocketListener;->onWebsocketError(Lcom/mixpanel/android/java_websocket/WebSocket;Ljava/lang/Exception;)V

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v5, v2, v1}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    return v1

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;->getCloseCode()I

    move-result v3

    invoke-virtual {v2}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2, v1}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    return v1

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "draft "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->draft:Lcom/mixpanel/android/java_websocket/drafts/Draft;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " refuses handshake"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v6, v2}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->close(ILjava/lang/String;)V
    :try_end_9
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_2

    :catch_6
    move-exception v2

    :try_start_a
    invoke-virtual {p0, v2}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->close(Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;)V
    :try_end_a
    .catch Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_2

    :catch_7
    move-exception v2

    iget-object v3, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    invoke-virtual {v2}, Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException;->getPreferedSize()I

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/lit8 v2, v0, 0x10

    :cond_d
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_e
    iget-object p1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_f
    :goto_2
    return v1
.end method

.method private isFlashEdgeCase(Ljava/nio/ByteBuffer;)Lcom/mixpanel/android/java_websocket/drafts/Draft$HandshakeState;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    sget-object v1, Lcom/mixpanel/android/java_websocket/drafts/Draft;->FLASH_POLICY_REQUEST:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    sget-object p1, Lcom/mixpanel/android/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lcom/mixpanel/android/java_websocket/drafts/Draft$HandshakeState;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    sget-object v1, Lcom/mixpanel/android/java_websocket/drafts/Draft;->FLASH_POLICY_REQUEST:[B

    array-length v1, v1

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/mixpanel/android/java_websocket/drafts/Draft;->FLASH_POLICY_REQUEST:[B

    aget-byte v1, v1, v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    sget-object p1, Lcom/mixpanel/android/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lcom/mixpanel/android/java_websocket/drafts/Draft$HandshakeState;

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/mixpanel/android/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lcom/mixpanel/android/java_websocket/drafts/Draft$HandshakeState;

    return-object p1

    :cond_3
    new-instance p1, Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException;

    sget-object v0, Lcom/mixpanel/android/java_websocket/drafts/Draft;->FLASH_POLICY_REQUEST:[B

    array-length v0, v0

    invoke-direct {p1, v0}, Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException;-><init>(I)V

    throw p1
.end method

.method private open(Lcom/mixpanel/android/java_websocket/handshake/Handshakedata;)V
    .locals 3

    sget-boolean v0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open using draft: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->draft:Lcom/mixpanel/android/java_websocket/drafts/Draft;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;->OPEN:Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;

    iput-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->readystate:Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;

    :try_start_0
    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->wsl:Lcom/mixpanel/android/java_websocket/WebSocketListener;

    invoke-interface {v0, p0, p1}, Lcom/mixpanel/android/java_websocket/WebSocketListener;->onWebsocketOpen(Lcom/mixpanel/android/java_websocket/WebSocket;Lcom/mixpanel/android/java_websocket/handshake/Handshakedata;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->wsl:Lcom/mixpanel/android/java_websocket/WebSocketListener;

    invoke-interface {v0, p0, p1}, Lcom/mixpanel/android/java_websocket/WebSocketListener;->onWebsocketError(Lcom/mixpanel/android/java_websocket/WebSocket;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private send(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/mixpanel/android/java_websocket/framing/Framedata;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mixpanel/android/java_websocket/framing/Framedata;

    invoke-virtual {p0, v0}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->sendFrame(Lcom/mixpanel/android/java_websocket/framing/Framedata;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Lcom/mixpanel/android/java_websocket/exceptions/WebsocketNotConnectedException;

    invoke-direct {p1}, Lcom/mixpanel/android/java_websocket/exceptions/WebsocketNotConnectedException;-><init>()V

    throw p1
.end method

.method private write(Ljava/nio/ByteBuffer;)V
    .locals 4

    sget-boolean v0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_0

    const-string v2, "too big to display"

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->wsl:Lcom/mixpanel/android/java_websocket/WebSocketListener;

    invoke-interface {p1, p0}, Lcom/mixpanel/android/java_websocket/WebSocketListener;->onWriteDemand(Lcom/mixpanel/android/java_websocket/WebSocket;)V

    return-void
.end method

.method private write(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->write(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->close(I)V

    return-void
.end method

.method public close(I)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->close(ILjava/lang/String;Z)V

    return-void
.end method

.method public close(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->close(ILjava/lang/String;Z)V

    return-void
.end method

.method public close(Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;)V
    .locals 2

    invoke-virtual {p1}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;->getCloseCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->close(ILjava/lang/String;Z)V

    return-void
.end method

.method public closeConnection()V
    .locals 3

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->closedremotely:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->closecode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->closemessage:Ljava/lang/String;

    iget-object v2, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->closedremotely:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;Z)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this method must be used in conjuction with flushAndClose"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public closeConnection(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;Z)V

    return-void
.end method

.method protected declared-synchronized closeConnection(ILjava/lang/String;Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->readystate:Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;

    sget-object v1, Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;->CLOSED:Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->key:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->wsl:Lcom/mixpanel/android/java_websocket/WebSocketListener;

    invoke-interface {v1, p0, v0}, Lcom/mixpanel/android/java_websocket/WebSocketListener;->onWebsocketError(Lcom/mixpanel/android/java_websocket/WebSocket;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_0
    :try_start_4
    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->wsl:Lcom/mixpanel/android/java_websocket/WebSocketListener;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/mixpanel/android/java_websocket/WebSocketListener;->onWebsocketClose(Lcom/mixpanel/android/java_websocket/WebSocket;ILjava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_5
    iget-object p2, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->wsl:Lcom/mixpanel/android/java_websocket/WebSocketListener;

    invoke-interface {p2, p0, p1}, Lcom/mixpanel/android/java_websocket/WebSocketListener;->onWebsocketError(Lcom/mixpanel/android/java_websocket/WebSocket;Ljava/lang/Exception;)V

    :goto_1
    iget-object p1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->draft:Lcom/mixpanel/android/java_websocket/drafts/Draft;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->draft:Lcom/mixpanel/android/java_websocket/drafts/Draft;

    invoke-virtual {p1}, Lcom/mixpanel/android/java_websocket/drafts/Draft;->reset()V

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->handshakerequest:Lcom/mixpanel/android/java_websocket/handshake/ClientHandshake;

    sget-object p1, Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;->CLOSED:Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;

    iput-object p1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->readystate:Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;

    iget-object p1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected closeConnection(IZ)V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, v0, p2}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;Z)V

    return-void
.end method

.method public decode(Ljava/nio/ByteBuffer;)V
    .locals 6

    sget-boolean v0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_0

    const-string v2, "too big to display"

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([BII)V

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->readystate:Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;

    sget-object v1, Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;->NOT_YET_CONNECTED:Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;

    if-eq v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->decodeFrames(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->decodeHandshake(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->decodeFrames(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->decodeFrames(Ljava/nio/ByteBuffer;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public eot()V
    .locals 5

    invoke-virtual {p0}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->getReadyState()Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;

    move-result-object v0

    sget-object v1, Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;->NOT_YET_CONNECTED:Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->closeConnection(IZ)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->flushandclosestate:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->closecode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->closemessage:Ljava/lang/String;

    iget-object v2, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->closedremotely:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->draft:Lcom/mixpanel/android/java_websocket/drafts/Draft;

    invoke-virtual {v0}, Lcom/mixpanel/android/java_websocket/drafts/Draft;->getCloseHandshakeType()Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;

    move-result-object v0

    sget-object v1, Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;->NONE:Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;

    const/16 v3, 0x3e8

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v3, v2}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->closeConnection(IZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->draft:Lcom/mixpanel/android/java_websocket/drafts/Draft;

    invoke-virtual {v0}, Lcom/mixpanel/android/java_websocket/drafts/Draft;->getCloseHandshakeType()Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;

    move-result-object v0

    sget-object v1, Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;->ONEWAY:Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;

    const/16 v4, 0x3ee

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->role:Lcom/mixpanel/android/java_websocket/WebSocket$Role;

    sget-object v1, Lcom/mixpanel/android/java_websocket/WebSocket$Role;->SERVER:Lcom/mixpanel/android/java_websocket/WebSocket$Role;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, v4, v2}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->closeConnection(IZ)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3, v2}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->closeConnection(IZ)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v4, v2}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->closeConnection(IZ)V

    :goto_0
    return-void
.end method

.method protected declared-synchronized flushAndClose(ILjava/lang/String;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->flushandclosestate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->closecode:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->closemessage:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->closedremotely:Ljava/lang/Boolean;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->flushandclosestate:Z

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->wsl:Lcom/mixpanel/android/java_websocket/WebSocketListener;

    invoke-interface {v0, p0}, Lcom/mixpanel/android/java_websocket/WebSocketListener;->onWriteDemand(Lcom/mixpanel/android/java_websocket/WebSocket;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->wsl:Lcom/mixpanel/android/java_websocket/WebSocketListener;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/mixpanel/android/java_websocket/WebSocketListener;->onWebsocketClosing(Lcom/mixpanel/android/java_websocket/WebSocket;ILjava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->wsl:Lcom/mixpanel/android/java_websocket/WebSocketListener;

    invoke-interface {p2, p0, p1}, Lcom/mixpanel/android/java_websocket/WebSocketListener;->onWebsocketError(Lcom/mixpanel/android/java_websocket/WebSocket;Ljava/lang/Exception;)V

    :goto_0
    iget-object p1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->draft:Lcom/mixpanel/android/java_websocket/drafts/Draft;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->draft:Lcom/mixpanel/android/java_websocket/drafts/Draft;

    invoke-virtual {p1}, Lcom/mixpanel/android/java_websocket/drafts/Draft;->reset()V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->handshakerequest:Lcom/mixpanel/android/java_websocket/handshake/ClientHandshake;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDraft()Lcom/mixpanel/android/java_websocket/drafts/Draft;
    .locals 1

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->draft:Lcom/mixpanel/android/java_websocket/drafts/Draft;

    return-object v0
.end method

.method public getLocalSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->wsl:Lcom/mixpanel/android/java_websocket/WebSocketListener;

    invoke-interface {v0, p0}, Lcom/mixpanel/android/java_websocket/WebSocketListener;->getLocalSocketAddress(Lcom/mixpanel/android/java_websocket/WebSocket;)Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getReadyState()Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;
    .locals 1

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->readystate:Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;

    return-object v0
.end method

.method public getRemoteSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->wsl:Lcom/mixpanel/android/java_websocket/WebSocketListener;

    invoke-interface {v0, p0}, Lcom/mixpanel/android/java_websocket/WebSocketListener;->getRemoteSocketAddress(Lcom/mixpanel/android/java_websocket/WebSocket;)Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getResourceDescriptor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->resourceDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public hasBufferedData()Z
    .locals 1

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 2

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->readystate:Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;

    sget-object v1, Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;->CLOSED:Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isClosing()Z
    .locals 2

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->readystate:Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;

    sget-object v1, Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;->CLOSING:Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConnecting()Z
    .locals 2

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->readystate:Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;

    sget-object v1, Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;->CONNECTING:Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFlushAndClose()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->flushandclosestate:Z

    return v0
.end method

.method public isOpen()Z
    .locals 2

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->readystate:Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;

    sget-object v1, Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;->OPEN:Lcom/mixpanel/android/java_websocket/WebSocket$READYSTATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public send(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/WebsocketNotConnectedException;
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->draft:Lcom/mixpanel/android/java_websocket/drafts/Draft;

    iget-object v1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->role:Lcom/mixpanel/android/java_websocket/WebSocket$Role;

    sget-object v2, Lcom/mixpanel/android/java_websocket/WebSocket$Role;->CLIENT:Lcom/mixpanel/android/java_websocket/WebSocket$Role;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/mixpanel/android/java_websocket/drafts/Draft;->createFrames(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->send(Ljava/util/Collection;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot send \'null\' data to a WebSocketImpl."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public send(Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/mixpanel/android/java_websocket/exceptions/WebsocketNotConnectedException;
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->draft:Lcom/mixpanel/android/java_websocket/drafts/Draft;

    iget-object v1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->role:Lcom/mixpanel/android/java_websocket/WebSocket$Role;

    sget-object v2, Lcom/mixpanel/android/java_websocket/WebSocket$Role;->CLIENT:Lcom/mixpanel/android/java_websocket/WebSocket$Role;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/mixpanel/android/java_websocket/drafts/Draft;->createFrames(Ljava/nio/ByteBuffer;Z)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->send(Ljava/util/Collection;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot send \'null\' data to a WebSocketImpl."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public send([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/mixpanel/android/java_websocket/exceptions/WebsocketNotConnectedException;
        }
    .end annotation

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->send(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public sendFragmentedFrame(Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;Ljava/nio/ByteBuffer;Z)V
    .locals 1

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->draft:Lcom/mixpanel/android/java_websocket/drafts/Draft;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mixpanel/android/java_websocket/drafts/Draft;->continuousFrame(Lcom/mixpanel/android/java_websocket/framing/Framedata$Opcode;Ljava/nio/ByteBuffer;Z)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->send(Ljava/util/Collection;)V

    return-void
.end method

.method public sendFrame(Lcom/mixpanel/android/java_websocket/framing/Framedata;)V
    .locals 3

    sget-boolean v0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send frame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->draft:Lcom/mixpanel/android/java_websocket/drafts/Draft;

    invoke-virtual {v0, p1}, Lcom/mixpanel/android/java_websocket/drafts/Draft;->createBinaryFrame(Lcom/mixpanel/android/java_websocket/framing/Framedata;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->write(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public startHandshake(Lcom/mixpanel/android/java_websocket/handshake/ClientHandshakeBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->draft:Lcom/mixpanel/android/java_websocket/drafts/Draft;

    invoke-virtual {v0, p1}, Lcom/mixpanel/android/java_websocket/drafts/Draft;->postProcessHandshakeRequestAsClient(Lcom/mixpanel/android/java_websocket/handshake/ClientHandshakeBuilder;)Lcom/mixpanel/android/java_websocket/handshake/ClientHandshakeBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->handshakerequest:Lcom/mixpanel/android/java_websocket/handshake/ClientHandshake;

    invoke-interface {p1}, Lcom/mixpanel/android/java_websocket/handshake/ClientHandshakeBuilder;->getResourceDescriptor()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->resourceDescriptor:Ljava/lang/String;

    :try_start_0
    iget-object p1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->wsl:Lcom/mixpanel/android/java_websocket/WebSocketListener;

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->handshakerequest:Lcom/mixpanel/android/java_websocket/handshake/ClientHandshake;

    invoke-interface {p1, p0, v0}, Lcom/mixpanel/android/java_websocket/WebSocketListener;->onWebsocketHandshakeSentAsClient(Lcom/mixpanel/android/java_websocket/WebSocket;Lcom/mixpanel/android/java_websocket/handshake/ClientHandshake;)V
    :try_end_0
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->draft:Lcom/mixpanel/android/java_websocket/drafts/Draft;

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->handshakerequest:Lcom/mixpanel/android/java_websocket/handshake/ClientHandshake;

    iget-object v1, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->role:Lcom/mixpanel/android/java_websocket/WebSocket$Role;

    invoke-virtual {p1, v0, v1}, Lcom/mixpanel/android/java_websocket/drafts/Draft;->createHandshake(Lcom/mixpanel/android/java_websocket/handshake/Handshakedata;Lcom/mixpanel/android/java_websocket/WebSocket$Role;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->write(Ljava/util/List;)V

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/mixpanel/android/java_websocket/WebSocketImpl;->wsl:Lcom/mixpanel/android/java_websocket/WebSocketListener;

    invoke-interface {v0, p0, p1}, Lcom/mixpanel/android/java_websocket/WebSocketListener;->onWebsocketError(Lcom/mixpanel/android/java_websocket/WebSocket;Ljava/lang/Exception;)V

    new-instance v0, Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rejected because of"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance p1, Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException;

    const-string v0, "Handshake data rejected by client."

    invoke-direct {p1, v0}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
