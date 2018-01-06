.class Lcom/squareup/okhttp/internal/ws/WebSocketCall$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/Callback;


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/ws/WebSocketCall;

.field final synthetic val$listener:Lcom/squareup/okhttp/internal/ws/WebSocketListener;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/ws/WebSocketCall;Lcom/squareup/okhttp/internal/ws/WebSocketListener;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketCall$1;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketCall;

    iput-object p2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketCall$1;->val$listener:Lcom/squareup/okhttp/internal/ws/WebSocketListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/squareup/okhttp/Request;Ljava/io/IOException;)V
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketCall$1;->val$listener:Lcom/squareup/okhttp/internal/ws/WebSocketListener;

    invoke-interface {v0, p2}, Lcom/squareup/okhttp/internal/ws/WebSocketListener;->onFailure(Ljava/io/IOException;)V

    return-void
.end method

.method public onResponse(Lcom/squareup/okhttp/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketCall$1;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketCall;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketCall$1;->val$listener:Lcom/squareup/okhttp/internal/ws/WebSocketListener;

    invoke-static {v0, p1, v1}, Lcom/squareup/okhttp/internal/ws/WebSocketCall;->access$000(Lcom/squareup/okhttp/internal/ws/WebSocketCall;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/ws/WebSocketListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketCall$1;->val$listener:Lcom/squareup/okhttp/internal/ws/WebSocketListener;

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/ws/WebSocketListener;->onFailure(Ljava/io/IOException;)V

    goto :goto_0
.end method
