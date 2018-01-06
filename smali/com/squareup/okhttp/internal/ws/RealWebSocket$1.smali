.class Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/ws/RealWebSocket;

.field final synthetic val$listener:Lcom/squareup/okhttp/internal/ws/WebSocketListener;

.field final synthetic val$pongExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/ws/RealWebSocket;Lcom/squareup/okhttp/internal/ws/WebSocketListener;Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->this$0:Lcom/squareup/okhttp/internal/ws/RealWebSocket;

    iput-object p2, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->val$listener:Lcom/squareup/okhttp/internal/ws/WebSocketListener;

    iput-object p3, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->val$pongExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object p4, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->this$0:Lcom/squareup/okhttp/internal/ws/RealWebSocket;

    invoke-static {v0, p1, p2}, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->access$100(Lcom/squareup/okhttp/internal/ws/RealWebSocket;ILjava/lang/String;)V

    return-void
.end method

.method public onMessage(La/i;Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->val$listener:Lcom/squareup/okhttp/internal/ws/WebSocketListener;

    invoke-interface {v0, p1, p2}, Lcom/squareup/okhttp/internal/ws/WebSocketListener;->onMessage(La/i;Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;)V

    return-void
.end method

.method public onPing(La/e;)V
    .locals 6

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->val$pongExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1$1;

    const-string v2, "OkHttp %s WebSocket Pong"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->val$url:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1$1;-><init>(Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;Ljava/lang/String;[Ljava/lang/Object;La/e;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPong(La/e;)V
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->val$listener:Lcom/squareup/okhttp/internal/ws/WebSocketListener;

    invoke-interface {v0, p1}, Lcom/squareup/okhttp/internal/ws/WebSocketListener;->onPong(La/e;)V

    return-void
.end method
