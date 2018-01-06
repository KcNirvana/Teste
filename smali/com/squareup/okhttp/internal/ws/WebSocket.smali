.class public interface abstract Lcom/squareup/okhttp/internal/ws/WebSocket;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;
    }
.end annotation


# virtual methods
.method public abstract close(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract newMessageSink(Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;)La/h;
.end method

.method public abstract sendMessage(Lcom/squareup/okhttp/internal/ws/WebSocket$PayloadType;La/e;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendPing(La/e;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
