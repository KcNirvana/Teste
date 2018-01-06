.class public abstract Lcom/squareup/okhttp/internal/ws/RealWebSocket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/ws/WebSocket;


# static fields
.field private static final CLOSE_PROTOCOL_EXCEPTION:I = 0x3ea


# instance fields
.field private final closeLock:Ljava/lang/Object;

.field private final listener:Lcom/squareup/okhttp/internal/ws/WebSocketListener;

.field private final reader:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

.field private volatile readerSentClose:Z

.field private final writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

.field private volatile writerSentClose:Z


# direct methods
.method public constructor <init>(ZLa/i;La/h;Ljava/util/Random;Lcom/squareup/okhttp/internal/ws/WebSocketListener;Ljava/lang/String;)V
    .locals 9

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->closeLock:Ljava/lang/Object;

    iput-object p5, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->listener:Lcom/squareup/okhttp/internal/ws/WebSocketListener;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const-string v0, "OkHttp %s WebSocket"

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p6, v3, v8

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    new-instance v0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-direct {v0, p1, p3, p4}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;-><init>(ZLa/h;Ljava/util/Random;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    new-instance v0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    new-instance v2, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;

    invoke-direct {v2, p0, p5, v1, p6}, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;-><init>(Lcom/squareup/okhttp/internal/ws/RealWebSocket;Lcom/squareup/okhttp/internal/ws/WebSocketListener;Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/String;)V

    invoke-direct {v0, p1, p2, v2}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;-><init>(ZLa/i;Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->reader:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    return-void
.end method

.method static synthetic access$000(Lcom/squareup/okhttp/internal/ws/RealWebSocket;)Lcom/squareup/okhttp/internal/ws/WebSocketWriter;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/squareup/okhttp/internal/ws/RealWebSocket;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->peerClose(ILjava/lang/String;)V

    return-void
.end method

.method private peerClose(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->closeLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->readerSentClose:Z

    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writerSentClose:Z

    if-nez v2, :cond_1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writeClose(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->closeConnection()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->listener:Lcom/squareup/okhttp/internal/ws/WebSocketListener;

    invoke-interface {v0, p1, p2}, Lcom/squareup/okhttp/internal/ws/WebSocketListener;->onClose(ILjava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private readerErrorClose(Ljava/io/IOException;)V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->closeLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->readerSentClose:Z

    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writerSentClose:Z

    if-nez v2, :cond_1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/net/ProtocolException;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    const/16 v1, 0x3ea

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writeClose(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->closeConnection()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->listener:Lcom/squareup/okhttp/internal/ws/WebSocketListener;

    invoke-interface {v0, p1}, Lcom/squareup/okhttp/internal/ws/WebSocketListener;->onFailure(Ljava/io/IOException;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public close(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writerSentClose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->closeLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writerSentClose:Z

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->readerSentClose:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-virtual {v1, p1, p2}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writeClose(ILjava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->closeConnection()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected abstract closeConnection()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public newMessageSink(Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;)La/h;
    .locals 2

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writerSentClose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->newMessageSink(Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;)La/h;

    move-result-object v0

    return-object v0
.end method

.method public readMessage()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->reader:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->processNextFrame()V

    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->readerSentClose:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-direct {p0, v1}, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->readerErrorClose(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public sendMessage(Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;La/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writerSentClose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sendMessage(Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;La/e;)V

    return-void
.end method

.method public sendPing(La/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writerSentClose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writePing(La/e;)V

    return-void
.end method

.method public sendPong(La/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writerSentClose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writePong(La/e;)V

    return-void
.end method
