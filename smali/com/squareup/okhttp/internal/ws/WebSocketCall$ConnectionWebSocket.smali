.class Lcom/squareup/okhttp/internal/ws/WebSocketCall$ConnectionWebSocket;
.super Lcom/squareup/okhttp/internal/ws/RealWebSocket;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/ws/WebSocketCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionWebSocket"
.end annotation


# instance fields
.field private final connection:Lcom/squareup/okhttp/Connection;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Connection;La/i;La/h;Ljava/util/Random;Lcom/squareup/okhttp/internal/ws/WebSocketListener;)V
    .locals 7

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->request()Lcom/squareup/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/squareup/okhttp/internal/ws/RealWebSocket;-><init>(ZLa/i;La/h;Ljava/util/Random;Lcom/squareup/okhttp/internal/ws/WebSocketListener;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketCall$ConnectionWebSocket;->connection:Lcom/squareup/okhttp/Connection;

    return-void
.end method


# virtual methods
.method protected closeConnection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketCall$ConnectionWebSocket;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v0, v1, p0}, Lcom/squareup/okhttp/internal/Internal;->closeIfOwnedBy(Lcom/squareup/okhttp/Connection;Ljava/lang/Object;)V

    return-void
.end method
