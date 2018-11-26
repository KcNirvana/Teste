.class Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field mLocalServerSocket:Landroid/net/LocalServerSocket;

.field mLocalSocket:Landroid/net/LocalSocket;

.field mPeerCredentials:Landroid/net/Credentials;

.field private volatile mRunning:Z

.field private mSecurityManager:Lmiui/security/SecurityManager;

.field mServerOutStream:Ljava/io/OutputStream;

.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/SocketTaggerManager;


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/service/tm/SocketTaggerManager;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;->this$0:Lcom/miui/networkassistant/service/tm/SocketTaggerManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->-get2(Lcom/miui/networkassistant/service/tm/SocketTaggerManager;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "security"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;->mSecurityManager:Lmiui/security/SecurityManager;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;->mRunning:Z

    return-void
.end method

.method private declared-synchronized closeServerSocketIfNeeded()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;->mLocalServerSocket:Landroid/net/LocalServerSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;->mLocalServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;->mLocalServerSocket:Landroid/net/LocalServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private shutdownSocket()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;->mLocalSocket:Landroid/net/LocalSocket;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->shutdownInput()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->shutdownOutput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;->mLocalSocket:Landroid/net/LocalSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public destory()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;->mRunning:Z

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;->closeServerSocketIfNeeded()V

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public run()V
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "SocketTaggerServerThread started"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Landroid/net/LocalServerSocket;

    invoke-static {}, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->-get0()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;->mLocalServerSocket:Landroid/net/LocalServerSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;->mLocalServerSocket:Landroid/net/LocalServerSocket;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mLocalServerSocket create failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mServerSocketThread"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "mLocalServerSocket created"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;->mRunning:Z

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;->mLocalServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;->mLocalSocket:Landroid/net/LocalSocket;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;->mPeerCredentials:Landroid/net/Credentials;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;->mServerOutStream:Ljava/io/OutputStream;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;->mLocalSocket:Landroid/net/LocalSocket;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/net/LocalSocket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;->mPeerCredentials:Landroid/net/Credentials;

    invoke-virtual {v0}, Landroid/net/Credentials;->getPid()I

    move-result v2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;->mPeerCredentials:Landroid/net/Credentials;

    invoke-virtual {v0}, Landroid/net/Credentials;->getUid()I

    move-result v3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-virtual {v0, v2}, Lmiui/security/SecurityManager;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;->this$0:Lcom/miui/networkassistant/service/tm/SocketTaggerManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->-get3(Lcom/miui/networkassistant/service/tm/SocketTaggerManager;)Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;->-get1(Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;->this$0:Lcom/miui/networkassistant/service/tm/SocketTaggerManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->-get3(Lcom/miui/networkassistant/service/tm/SocketTaggerManager;)Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;->-get1(Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v8, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;->this$0:Lcom/miui/networkassistant/service/tm/SocketTaggerManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->-get3(Lcom/miui/networkassistant/service/tm/SocketTaggerManager;)Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;->-get0(Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;->this$0:Lcom/miui/networkassistant/service/tm/SocketTaggerManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->-get3(Lcom/miui/networkassistant/service/tm/SocketTaggerManager;)Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;->-get0(Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->-get1()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "tag_socket pkg:%s, uid:%d, pid:%d, tag:0x%s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v7, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;->mServerOutStream:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/INetUtil;->htonlBytes(I)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;->shutdownSocket()V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_2
    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;->closeServerSocketIfNeeded()V

    invoke-static {}, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SocketTaggerServerThread destoried"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    move v0, v1

    goto :goto_2
.end method
