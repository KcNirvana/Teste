.class public final Lcom/squareup/okhttp/internal/ws/WebSocketWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/ws/WebSocketWriter$1;,
        Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;
    }
.end annotation


# instance fields
.field private activeWriter:Z

.field private closed:Z

.field private final frameSink:Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;

.field private final isClient:Z

.field private final maskBuffer:[B

.field private final maskKey:[B

.field private final random:Ljava/util/Random;

.field private final sink:La/h;


# direct methods
.method public constructor <init>(ZLa/h;Ljava/util/Random;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;-><init>(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;Lcom/squareup/okhttp/internal/ws/WebSocketWriter$1;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->frameSink:Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sink"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "random"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->isClient:Z

    iput-object p2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:La/h;

    iput-object p3, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    if-eqz p1, :cond_3

    const/4 v0, 0x4

    new-array v0, v0, [B

    :goto_0
    iput-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskKey:[B

    if-eqz p1, :cond_2

    const/16 v0, 0x800

    new-array v1, v0, [B

    :cond_2
    iput-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskBuffer:[B

    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;La/e;JZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p6}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writeFrame(Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;La/e;JZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->closed:Z

    return v0
.end method

.method static synthetic access$500(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)La/h;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:La/h;

    return-object v0
.end method

.method static synthetic access$600(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->isClient:Z

    return v0
.end method

.method static synthetic access$700(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)[B
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskKey:[B

    return-object v0
.end method

.method static synthetic access$800(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Ljava/util/Random;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$902(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->activeWriter:Z

    return p1
.end method

.method private writeAllMasked(La/i;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    :goto_0
    cmp-long v0, v4, p2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskBuffer:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskBuffer:[B

    invoke-interface {p1, v1, v7, v0}, La/i;->a([BII)I

    move-result v6

    const/4 v0, -0x1

    if-ne v6, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskBuffer:[B

    int-to-long v1, v6

    iget-object v3, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/internal/ws/WebSocketProtocol;->toggleMask([BJ[BJ)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:La/h;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskBuffer:[B

    invoke-interface {v0, v1, v7, v6}, La/h;->c([BII)La/h;

    int-to-long v0, v6

    add-long/2addr v4, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private writeControlFrame(ILa/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, La/e;->a()J

    move-result-wide v0

    long-to-int v0, v0

    const/16 v1, 0x7d

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Payload size must be less than or equal to 125"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget v1, Lcom/squareup/okhttp/internal/ws/WebSocketProtocol;->B0_FLAG_FIN:I

    or-int/2addr v1, p1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:La/h;

    invoke-interface {v2, v1}, La/h;->g(I)La/h;

    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v1, :cond_3

    sget v1, Lcom/squareup/okhttp/internal/ws/WebSocketProtocol;->B1_FLAG_MASK:I

    or-int/2addr v1, v0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:La/h;

    invoke-interface {v2, v1}, La/h;->g(I)La/h;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextBytes([B)V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:La/h;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-interface {v1, v2}, La/h;->c([B)La/h;

    if-eqz p2, :cond_2

    int-to-long v0, v0

    invoke-direct {p0, p2, v0, v1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writeAllMasked(La/i;J)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:La/h;

    invoke-interface {v0}, La/h;->flush()V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:La/h;

    invoke-interface {v1, v0}, La/h;->g(I)La/h;

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:La/h;

    invoke-interface {v0, p2}, La/h;->a(La/aa;)J

    goto :goto_0
.end method

.method private writeFrame(Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;La/e;JZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p5, :cond_6

    sget-object v0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$1;->$SwitchMap$com$squareup$okhttp$internal$ws$WebSocket$PayloadType:[I

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown payload type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:La/h;

    monitor-enter v2

    if-eqz p6, :cond_1

    :try_start_0
    sget v3, Lcom/squareup/okhttp/internal/ws/WebSocketProtocol;->B0_FLAG_FIN:I

    or-int/2addr v0, v3

    :cond_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:La/h;

    invoke-interface {v3, v0}, La/h;->g(I)La/h;

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/squareup/okhttp/internal/ws/WebSocketProtocol;->B1_FLAG_MASK:I

    or-int/2addr v1, v0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextBytes([B)V

    :cond_2
    const-wide/16 v4, 0x7d

    cmp-long v0, p3, v4

    if-gtz v0, :cond_3

    long-to-int v0, p3

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:La/h;

    invoke-interface {v1, v0}, La/h;->g(I)La/h;

    :goto_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:La/h;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-interface {v0, v1}, La/h;->c([B)La/h;

    invoke-direct {p0, p2, p3, p4}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writeAllMasked(La/i;J)V

    :goto_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:La/h;

    invoke-interface {v0}, La/h;->flush()V

    monitor-exit v2

    return-void

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const-wide/16 v4, 0x7fff

    cmp-long v0, p3, v4

    if-gtz v0, :cond_4

    or-int/lit8 v0, v1, 0x7e

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:La/h;

    invoke-interface {v1, v0}, La/h;->g(I)La/h;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:La/h;

    long-to-int v1, p3

    invoke-interface {v0, v1}, La/h;->f(I)La/h;

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    or-int/lit8 v0, v1, 0x7f

    :try_start_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:La/h;

    invoke-interface {v1, v0}, La/h;->g(I)La/h;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:La/h;

    invoke-interface {v0, p3, p4}, La/h;->i(J)La/h;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:La/h;

    invoke-interface {v0, p2, p3, p4}, La/h;->write(La/e;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public newMessageSink(Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;)La/h;
    .locals 2

    const/4 v1, 0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->activeWriter:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Another message writer is active. Did you call close()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->activeWriter:Z

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->frameSink:Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;

    invoke-static {v0, p1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->access$102(Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;)Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->frameSink:Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->access$202(Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;Z)Z

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->frameSink:Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;

    invoke-static {v0}, La/p;->a(La/z;)La/h;

    move-result-object v0

    return-object v0
.end method

.method public sendMessage(Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;La/e;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "payload == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->activeWriter:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A message writer is active. Did you call close()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p2}, La/e;->a()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v7, v6

    invoke-direct/range {v1 .. v7}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writeFrame(Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;La/e;JZZ)V

    return-void
.end method

.method public writeClose(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1388

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Code must be in range [1000,5000)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, La/e;

    invoke-direct {v0}, La/e;-><init>()V

    invoke-virtual {v0, p1}, La/e;->b(I)La/e;

    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, La/e;->a(Ljava/lang/String;)La/e;

    :cond_2
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:La/h;

    monitor-enter v1

    const/16 v2, 0x8

    :try_start_0
    invoke-direct {p0, v2, v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writeControlFrame(ILa/e;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->closed:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_3
    if-eqz p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Code required to include reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public writePing(La/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:La/h;

    monitor-enter v1

    const/16 v0, 0x9

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writeControlFrame(ILa/e;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public writePong(La/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:La/h;

    monitor-enter v1

    const/16 v0, 0xa

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writeControlFrame(ILa/e;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
