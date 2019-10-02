.class final Lcom/xiaomi/accountsdk/request/SimpleRequest$1;
.super Ljava/lang/Object;
.source "SimpleRequest.java"

# interfaces
.implements Lcom/xiaomi/accountsdk/request/SimpleRequest$HttpURLConnectionFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/request/SimpleRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeConn(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->access$000()Lcom/xiaomi/accountsdk/request/ConnectivityListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->access$000()Lcom/xiaomi/accountsdk/request/ConnectivityListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaomi/accountsdk/request/ConnectivityListener;->onOpenUrlConnection(Ljava/net/URL;)V

    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    return-object p1
.end method
