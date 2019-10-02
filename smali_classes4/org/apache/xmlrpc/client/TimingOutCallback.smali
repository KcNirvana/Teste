.class public Lorg/apache/xmlrpc/client/TimingOutCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xmlrpc/client/AsyncCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlrpc/client/TimingOutCallback$TimeoutException;
    }
.end annotation


# instance fields
.field private error:Ljava/lang/Throwable;

.field private responseSeen:Z

.field private result:Ljava/lang/Object;

.field private final timeout:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/xmlrpc/client/TimingOutCallback;->timeout:J

    return-void
.end method


# virtual methods
.method public declared-synchronized handleError(Lorg/apache/xmlrpc/XmlRpcRequest;Ljava/lang/Throwable;)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lorg/apache/xmlrpc/client/TimingOutCallback;->responseSeen:Z

    iput-object p2, p0, Lorg/apache/xmlrpc/client/TimingOutCallback;->error:Ljava/lang/Throwable;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handleResult(Lorg/apache/xmlrpc/XmlRpcRequest;Ljava/lang/Object;)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lorg/apache/xmlrpc/client/TimingOutCallback;->responseSeen:Z

    iput-object p2, p0, Lorg/apache/xmlrpc/client/TimingOutCallback;->result:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized waitForResponse()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/xmlrpc/client/TimingOutCallback;->responseSeen:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/apache/xmlrpc/client/TimingOutCallback;->timeout:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    iget-boolean v0, p0, Lorg/apache/xmlrpc/client/TimingOutCallback;->responseSeen:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/xmlrpc/client/TimingOutCallback$TimeoutException;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No response after waiting for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/apache/xmlrpc/client/TimingOutCallback;->timeout:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " milliseconds."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlrpc/client/TimingOutCallback$TimeoutException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlrpc/client/TimingOutCallback;->error:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlrpc/client/TimingOutCallback;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/apache/xmlrpc/client/TimingOutCallback;->error:Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
