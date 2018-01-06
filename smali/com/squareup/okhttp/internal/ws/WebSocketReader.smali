.class public final Lcom/squareup/okhttp/internal/ws/WebSocketReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/ws/WebSocketReader$1;,
        Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;,
        Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;
    }
.end annotation


# instance fields
.field private closed:Z

.field private frameBytesRead:J

.field private final frameCallback:Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;

.field private frameLength:J

.field private final framedMessageSource:La/aa;

.field private final isClient:Z

.field private isControlFrame:Z

.field private isFinalFrame:Z

.field private isMasked:Z

.field private final maskBuffer:[B

.field private final maskKey:[B

.field private messageClosed:Z

.field private opcode:I

.field private final source:La/i;


# direct methods
.method public constructor <init>(ZLa/i;Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;-><init>(Lcom/squareup/okhttp/internal/ws/WebSocketReader;Lcom/squareup/okhttp/internal/ws/WebSocketReader$1;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->framedMessageSource:La/aa;

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskKey:[B

    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskBuffer:[B

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "frameCallback"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isClient:Z

    iput-object p2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:La/i;

    iput-object p3, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameCallback:Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;

    return-void
.end method

.method static synthetic access$100(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->closed:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)La/i;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:La/i;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)[B
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskKey:[B

    return-object v0
.end method

.method static synthetic access$200(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->messageClosed:Z

    return v0
.end method

.method static synthetic access$202(Lcom/squareup/okhttp/internal/ws/WebSocketReader;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->messageClosed:Z

    return p1
.end method

.method static synthetic access$300(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)J
    .locals 2

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/squareup/okhttp/internal/ws/WebSocketReader;J)J
    .locals 1

    iput-wide p1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)J
    .locals 2

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isFinalFrame:Z

    return v0
.end method

.method static synthetic access$600(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->readUntilNonControlFrame()V

    return-void
.end method

.method static synthetic access$700(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)I
    .locals 1

    iget v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->opcode:I

    return v0
.end method

.method static synthetic access$800(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isMasked:Z

    return v0
.end method

.method static synthetic access$900(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)[B
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskBuffer:[B

    return-object v0
.end method

.method private readControlFrame()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    iget-wide v4, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    new-instance v6, La/e;

    invoke-direct {v6}, La/e;-><init>()V

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isClient:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:La/i;

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    invoke-interface {v0, v6, v2, v3}, La/i;->a(La/e;J)V

    move-object v0, v6

    :cond_0
    :goto_0
    iget v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->opcode:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown control opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->opcode:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskBuffer:[B

    int-to-long v1, v8

    iget-object v3, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskKey:[B

    iget-wide v4, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/internal/ws/WebSocketProtocol;->toggleMask([BJ[BJ)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskBuffer:[B

    invoke-virtual {v6, v0, v7, v8}, La/e;->b([BII)La/e;

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    int-to-long v2, v8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    :cond_2
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskBuffer:[B

    array-length v2, v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:La/i;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskBuffer:[B

    invoke-interface {v1, v2, v7, v0}, La/i;->a([BII)I

    move-result v8

    const/4 v0, -0x1

    if-ne v8, v0, :cond_1

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :pswitch_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameCallback:Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;->onPing(La/e;)V

    :goto_1
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameCallback:Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;->onPong(La/e;)V

    goto :goto_1

    :pswitch_2
    const-string v1, ""

    if-eqz v0, :cond_3

    invoke-virtual {v0}, La/e;->j()S

    move-result v1

    invoke-virtual {v0}, La/e;->p()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameCallback:Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;

    invoke-interface {v2, v1, v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;->onClose(ILjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->closed:Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    move v1, v7

    goto :goto_2

    :cond_4
    move-object v0, v6

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readHeader()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:La/i;

    invoke-interface {v0}, La/i;->i()B

    move-result v0

    and-int/lit16 v4, v0, 0xff

    sget v0, Lcom/squareup/okhttp/internal/ws/WebSocketProtocol;->B0_MASK_OPCODE:I

    and-int/2addr v0, v4

    iput v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->opcode:I

    sget v0, Lcom/squareup/okhttp/internal/ws/WebSocketProtocol;->B0_FLAG_FIN:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isFinalFrame:Z

    sget v0, Lcom/squareup/okhttp/internal/ws/WebSocketProtocol;->OPCODE_FLAG_CONTROL:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isControlFrame:Z

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isFinalFrame:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Control frames must be final."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    sget v0, Lcom/squareup/okhttp/internal/ws/WebSocketProtocol;->B0_FLAG_RSV1:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    sget v3, Lcom/squareup/okhttp/internal/ws/WebSocketProtocol;->B0_FLAG_RSV2:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_6

    move v3, v1

    :goto_3
    sget v5, Lcom/squareup/okhttp/internal/ws/WebSocketProtocol;->B0_FLAG_RSV3:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_7

    move v4, v1

    :goto_4
    if-nez v0, :cond_4

    if-nez v3, :cond_4

    if-eqz v4, :cond_8

    :cond_4
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Reserved flags are unsupported."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    move v3, v2

    goto :goto_3

    :cond_7
    move v4, v2

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:La/i;

    invoke-interface {v0}, La/i;->i()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    sget v3, Lcom/squareup/okhttp/internal/ws/WebSocketProtocol;->B1_FLAG_MASK:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_9

    :goto_5
    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isMasked:Z

    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isMasked:Z

    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isClient:Z

    if-ne v1, v2, :cond_a

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Client-sent frames must be masked. Server sent must not."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move v1, v2

    goto :goto_5

    :cond_a
    sget v1, Lcom/squareup/okhttp/internal/ws/WebSocketProtocol;->B1_MASK_LENGTH:I

    and-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v2, 0x7e

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:La/i;

    invoke-interface {v0}, La/i;->j()S

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    :cond_b
    :goto_6
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v0, :cond_d

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v2, 0x7d

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Control frame must be less than 125B."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v2, 0x7f

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:La/i;

    invoke-interface {v0}, La/i;->l()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    goto :goto_6

    :cond_d
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isMasked:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:La/i;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskKey:[B

    invoke-interface {v0, v1}, La/i;->a([B)V

    :cond_e
    return-void
.end method

.method private readMessageFrame()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->opcode:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->opcode:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;->TEXT:Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->messageClosed:Z

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameCallback:Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->framedMessageSource:La/aa;

    invoke-static {v2}, La/p;->a(La/aa;)La/i;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;->onMessage(La/i;Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;)V

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->messageClosed:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Listener failed to call close on message payload."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget-object v0, Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;->BINARY:Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readUntilNonControlFrame()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->closed:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->readHeader()V

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isControlFrame:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->readControlFrame()V

    goto :goto_0
.end method


# virtual methods
.method public processNextFrame()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->readHeader()V

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->readControlFrame()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->readMessageFrame()V

    goto :goto_0
.end method
