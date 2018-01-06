.class final Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/ws/WebSocketWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FrameSink"
.end annotation


# instance fields
.field private isFirstFrame:Z

.field private payloadType:Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;

.field final synthetic this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;Lcom/squareup/okhttp/internal/ws/WebSocketWriter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;-><init>(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)V

    return-void
.end method

.method static synthetic access$102(Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;)Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->payloadType:Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;

    return-object p1
.end method

.method static synthetic access$202(Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    return p1
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$400(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$500(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)La/h;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$500(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)La/h;

    move-result-object v2

    sget v3, Lcom/squareup/okhttp/internal/ws/WebSocketProtocol;->B0_FLAG_FIN:I

    or-int/lit8 v3, v3, 0x0

    invoke-interface {v2, v3}, La/h;->g(I)La/h;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$600(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$500(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)La/h;

    move-result-object v0

    sget v2, Lcom/squareup/okhttp/internal/ws/WebSocketProtocol;->B1_FLAG_MASK:I

    or-int/2addr v2, v4

    invoke-interface {v0, v2}, La/h;->g(I)La/h;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$800(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Ljava/util/Random;

    move-result-object v0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$700(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextBytes([B)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$500(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)La/h;

    move-result-object v0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$700(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)[B

    move-result-object v2

    invoke-interface {v0, v2}, La/h;->c([B)La/h;

    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$500(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)La/h;

    move-result-object v0

    invoke-interface {v0}, La/h;->flush()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v0, v4}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$902(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;Z)Z

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$500(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)La/h;

    move-result-object v2

    invoke-interface {v2, v0}, La/h;->g(I)La/h;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$400(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$500(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)La/h;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$500(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)La/h;

    move-result-object v0

    invoke-interface {v0}, La/h;->flush()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public timeout()La/ab;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$500(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)La/h;

    move-result-object v0

    invoke-interface {v0}, La/h;->timeout()La/ab;

    move-result-object v0

    return-object v0
.end method

.method public write(La/e;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->payloadType:Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;

    iget-boolean v6, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v1 .. v7}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$300(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;La/e;JZZ)V

    iput-boolean v7, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    return-void
.end method
