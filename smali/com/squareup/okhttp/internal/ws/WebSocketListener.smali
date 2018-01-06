.class public interface abstract Lcom/squareup/okhttp/internal/ws/WebSocketListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onClose(ILjava/lang/String;)V
.end method

.method public abstract onFailure(Ljava/io/IOException;)V
.end method

.method public abstract onMessage(La/i;Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onOpen(Lcom/squareup/okhttp/internal/ws/WebSocket;Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPong(La/e;)V
.end method
