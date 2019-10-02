.class public Lorg/apache/xmlrpc/webserver/WebServer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;
    }
.end annotation


# static fields
.field static final HTTP_11:Ljava/lang/String; = "HTTP/1.1"


# instance fields
.field protected final accept:Ljava/util/List;

.field private address:Ljava/net/InetAddress;

.field protected final deny:Ljava/util/List;

.field private listener:Ljava/lang/Thread;

.field private paranoid:Z

.field private pool:Lorg/apache/xmlrpc/util/ThreadPool;

.field private port:I

.field protected final server:Lorg/apache/xmlrpc/server/XmlRpcStreamServer;

.field protected serverSocket:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlrpc/webserver/WebServer;-><init>(ILjava/net/InetAddress;)V

    return-void
.end method

.method public constructor <init>(ILjava/net/InetAddress;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->accept:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->deny:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/xmlrpc/webserver/WebServer;->newXmlRpcStreamServer()Lorg/apache/xmlrpc/server/XmlRpcStreamServer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->server:Lorg/apache/xmlrpc/server/XmlRpcStreamServer;

    iput-object p2, p0, Lorg/apache/xmlrpc/webserver/WebServer;->address:Ljava/net/InetAddress;

    iput p1, p0, Lorg/apache/xmlrpc/webserver/WebServer;->port:I

    return-void
.end method

.method private declared-synchronized setupServerSocket(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    iget v1, p0, Lorg/apache/xmlrpc/webserver/WebServer;->port:I

    iget-object v2, p0, Lorg/apache/xmlrpc/webserver/WebServer;->address:Ljava/net/InetAddress;

    invoke-virtual {p0, v1, p1, v2}, Lorg/apache/xmlrpc/webserver/WebServer;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xmlrpc/webserver/WebServer;->serverSocket:Ljava/net/ServerSocket;

    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/WebServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getSoTimeout()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/WebServer;->serverSocket:Ljava/net/ServerSocket;

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/BindException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    add-long/2addr v1, v3

    :catch_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x0

    sub-long v3, v1, v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public acceptClient(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->accept:Ljava/util/List;

    new-instance v1, Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;

    invoke-direct {v1, p0, p1}, Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;-><init>(Lorg/apache/xmlrpc/webserver/WebServer;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected allowConnection(Ljava/net/Socket;)Z
    .locals 5

    iget-boolean v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->paranoid:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->deny:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lorg/apache/xmlrpc/webserver/WebServer;->deny:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;

    invoke-virtual {v4, p1}, Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;->matches([B)Z

    move-result v4

    if-eqz v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->accept:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_4

    iget-object v4, p0, Lorg/apache/xmlrpc/webserver/WebServer;->accept:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;

    invoke-virtual {v4, p1}, Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;->matches([B)Z

    move-result v4

    if-eqz v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return v2
.end method

.method protected createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1, p2, p3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    return-object v0
.end method

.method public denyClient(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->deny:Ljava/util/List;

    new-instance v1, Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;

    invoke-direct {v1, p0, p1}, Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;-><init>(Lorg/apache/xmlrpc/webserver/WebServer;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getPort()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getXmlRpcServer()Lorg/apache/xmlrpc/server/XmlRpcStreamServer;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->server:Lorg/apache/xmlrpc/server/XmlRpcStreamServer;

    return-object v0
.end method

.method protected isParanoid()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->paranoid:Z

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->server:Lorg/apache/xmlrpc/server/XmlRpcStreamServer;

    invoke-virtual {v0}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->getErrorLogger()Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;->log(Ljava/lang/String;)V

    return-void
.end method

.method public log(Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/WebServer;->server:Lorg/apache/xmlrpc/server/XmlRpcStreamServer;

    invoke-virtual {v1}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->getErrorLogger()Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected newTask(Lorg/apache/xmlrpc/webserver/WebServer;Lorg/apache/xmlrpc/server/XmlRpcStreamServer;Ljava/net/Socket;)Lorg/apache/xmlrpc/util/ThreadPool$Task;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xmlrpc/webserver/Connection;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/xmlrpc/webserver/Connection;-><init>(Lorg/apache/xmlrpc/webserver/WebServer;Lorg/apache/xmlrpc/server/XmlRpcStreamServer;Ljava/net/Socket;)V

    return-object v0
.end method

.method protected newThreadPool()Lorg/apache/xmlrpc/util/ThreadPool;
    .locals 3

    new-instance v0, Lorg/apache/xmlrpc/util/ThreadPool;

    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/WebServer;->server:Lorg/apache/xmlrpc/server/XmlRpcStreamServer;

    invoke-virtual {v1}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->getMaxThreads()I

    move-result v1

    const-string v2, "XML-RPC"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlrpc/util/ThreadPool;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method protected newXmlRpcStreamServer()Lorg/apache/xmlrpc/server/XmlRpcStreamServer;
    .locals 1

    new-instance v0, Lorg/apache/xmlrpc/webserver/ConnectionServer;

    invoke-direct {v0}, Lorg/apache/xmlrpc/webserver/ConnectionServer;-><init>()V

    return-object v0
.end method

.method public run()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlrpc/webserver/WebServer;->newThreadPool()Lorg/apache/xmlrpc/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->pool:Lorg/apache/xmlrpc/util/ThreadPool;

    :catch_0
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->listener:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_3
    invoke-virtual {p0, v1}, Lorg/apache/xmlrpc/webserver/WebServer;->log(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    :try_start_4
    invoke-virtual {p0, v0}, Lorg/apache/xmlrpc/webserver/WebServer;->allowConnection(Ljava/net/Socket;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/WebServer;->server:Lorg/apache/xmlrpc/server/XmlRpcStreamServer;

    invoke-virtual {p0, p0, v1, v0}, Lorg/apache/xmlrpc/webserver/WebServer;->newTask(Lorg/apache/xmlrpc/webserver/WebServer;Lorg/apache/xmlrpc/server/XmlRpcStreamServer;Ljava/net/Socket;)Lorg/apache/xmlrpc/util/ThreadPool$Task;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xmlrpc/webserver/WebServer;->pool:Lorg/apache/xmlrpc/util/ThreadPool;

    invoke-virtual {v2, v1}, Lorg/apache/xmlrpc/util/ThreadPool;->startTask(Lorg/apache/xmlrpc/util/ThreadPool$Task;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum load of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/xmlrpc/webserver/WebServer;->pool:Lorg/apache/xmlrpc/util/ThreadPool;

    invoke-virtual {v2}, Lorg/apache/xmlrpc/util/ThreadPool;->getMaxThreads()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " exceeded, rejecting client"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlrpc/webserver/WebServer;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    :goto_2
    if-eqz v0, :cond_0

    :try_start_5
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_6
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_2
    :cond_3
    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_3
    move-exception v0

    :try_start_8
    invoke-virtual {p0, v0}, Lorg/apache/xmlrpc/webserver/WebServer;->log(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_5

    :try_start_9
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlrpc/webserver/WebServer;->log(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->pool:Lorg/apache/xmlrpc/util/ThreadPool;

    invoke-virtual {v0}, Lorg/apache/xmlrpc/util/ThreadPool;->shutdown()V

    return-void

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/WebServer;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_6

    :try_start_a
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/WebServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_4

    :catch_5
    move-exception v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlrpc/webserver/WebServer;->log(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/WebServer;->pool:Lorg/apache/xmlrpc/util/ThreadPool;

    invoke-virtual {v1}, Lorg/apache/xmlrpc/util/ThreadPool;->shutdown()V

    throw v0
.end method

.method public setParanoid(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlrpc/webserver/WebServer;->paranoid:Z

    return-void
.end method

.method public declared-synchronized shutdown()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->listener:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->listener:Ljava/lang/Thread;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xmlrpc/webserver/WebServer;->listener:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->pool:Lorg/apache/xmlrpc/util/ThreadPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->pool:Lorg/apache/xmlrpc/util/ThreadPool;

    invoke-virtual {v0}, Lorg/apache/xmlrpc/util/ThreadPool;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lorg/apache/xmlrpc/webserver/WebServer;->setupServerSocket(I)V

    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->listener:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "XML-RPC Weblistener"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->listener:Ljava/lang/Thread;

    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->listener:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
