.class Lcom/squareup/okhttp/internal/ws/WebSocketCall$2;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/ws/WebSocketCall;

.field final synthetic val$webSocket:Lcom/squareup/okhttp/internal/ws/RealWebSocket;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/ws/WebSocketCall;Ljava/lang/String;[Ljava/lang/Object;Lcom/squareup/okhttp/internal/ws/RealWebSocket;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketCall$2;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketCall;

    iput-object p4, p0, Lcom/squareup/okhttp/internal/ws/WebSocketCall$2;->val$webSocket:Lcom/squareup/okhttp/internal/ws/RealWebSocket;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 1

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketCall$2;->val$webSocket:Lcom/squareup/okhttp/internal/ws/RealWebSocket;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->readMessage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method
