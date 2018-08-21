.class public Lcom/alipay/android/app/trans/a/i;
.super Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;
.source "ZClientConnectionOperator.java"


# static fields
.field private static final a:Lorg/apache/http/conn/scheme/PlainSocketFactory;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/http/conn/scheme/PlainSocketFactory;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/PlainSocketFactory;-><init>()V

    sput-object v0, Lcom/alipay/android/app/trans/a/i;->a:Lorg/apache/http/conn/scheme/PlainSocketFactory;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/trans/a/i;->b:Z

    return-void
.end method

.method private a(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/Scheme;Lorg/apache/http/conn/scheme/SocketFactory;Lorg/apache/http/conn/scheme/SocketFactory;Lorg/apache/http/conn/scheme/LayeredSocketFactory;[Ljava/net/InetAddress;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x3

    move-object/from16 v0, p10

    array-length v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/4 v1, 0x4

    const-string/jumbo v2, ""

    const-string/jumbo v3, "ZClientConnectionOperator::connect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "maxRetryCount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_3

    const/4 v1, 0x4

    const-string/jumbo v2, ""

    const-string/jumbo v3, "ZClientConnectionOperator::connect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "try loop ip times:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p8 .. p8}, Lorg/apache/http/conn/scheme/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-interface {p1, v2, p2}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    move-object/from16 v0, p10

    array-length v1, v0

    if-lt v8, v1, :cond_4

    const/4 v1, 0x0

    :goto_1
    aget-object v3, p10, v1

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    const-string/jumbo v5, ""

    const-string/jumbo v6, "ZClientConnectionOperator::connect"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "try ip:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, ", addrIndex:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v6, v1}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/android/app/trans/a/i;->b:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "dns"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DnsUserIp|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/alipay/android/app/statistic/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v1, p8

    move-object v5, p3

    move-object/from16 v7, p5

    invoke-interface/range {v1 .. v7}, Lorg/apache/http/conn/scheme/SocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v1

    if-eq v2, v1, :cond_1

    invoke-interface {p1, v1, p2}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    move-object v2, v1

    :cond_1
    move-object/from16 v0, p5

    invoke-virtual {p0, v2, p4, v0}, Lcom/alipay/android/app/trans/a/i;->prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    if-eqz p9, :cond_5

    const/4 v1, 0x4

    const-string/jumbo v4, ""

    const-string/jumbo v5, "ZClientConnectionOperator::connect"

    const-string/jumbo v6, "https ssl handshake."

    invoke-static {v1, v4, v5, v6}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p9

    invoke-interface {v0, v2, v1, v4, v5}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    if-eq v1, v2, :cond_2

    invoke-interface {p1, v1, p2}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    :cond_2
    move-object/from16 v0, p7

    invoke-interface {v0, v1}, Lorg/apache/http/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v1

    move-object/from16 v0, p5

    invoke-interface {p1, v1, v0}, Lorg/apache/http/conn/OperatedClientConnection;->openCompleted(ZLorg/apache/http/params/HttpParams;)V

    :goto_2
    const/4 v1, 0x4

    const-string/jumbo v2, ""

    const-string/jumbo v4, "ZClientConnectionOperator::connect"

    const-string/jumbo v5, "try loop ip success, break"

    invoke-static {v1, v2, v4, v5}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    move v1, v8

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p7

    invoke-interface {v0, v2}, Lorg/apache/http/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v1

    move-object/from16 v0, p5

    invoke-interface {p1, v1, v0}, Lorg/apache/http/conn/OperatedClientConnection;->openCompleted(ZLorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "index="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ",ip="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",mIsIpFromDnsManager="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/alipay/android/app/trans/a/i;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "dns"

    const-string/jumbo v4, "CustomConnSocketEx"

    invoke-static {v3, v4, v1, v2}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/trans/a/i;->a(Ljava/io/IOException;)V

    add-int/lit8 v2, v9, -0x1

    if-ge v8, v2, :cond_6

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_6
    instance-of v2, v1, Ljava/net/SocketException;

    if-eqz v2, :cond_8

    instance-of v2, v1, Ljava/net/ConnectException;

    if-eqz v2, :cond_7

    check-cast v1, Ljava/net/ConnectException;

    :goto_3
    new-instance v2, Lorg/apache/http/conn/HttpHostConnectException;

    invoke-direct {v2, p2, v1}, Lorg/apache/http/conn/HttpHostConnectException;-><init>(Lorg/apache/http/HttpHost;Ljava/net/ConnectException;)V

    throw v2

    :cond_7
    new-instance v2, Ljava/net/ConnectException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-object v1, v2

    goto :goto_3

    :cond_8
    throw v1
.end method

.method private a(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/trans/a/i;->b:Z

    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->d()Lcom/alipay/android/app/plugin/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/android/app/plugin/a;->getInetAddresses(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/android/app/trans/a/i;->b:Z

    const/4 v1, 0x4

    const-string/jumbo v2, ""

    const-string/jumbo v3, "ZClientConnectionOperator::getInetAddresses"

    const-string/jumbo v4, "get empty InetAddress from DnsManager, try InetAddress.getAllByName"

    invoke-static {v1, v2, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/io/IOException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "shutdown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    throw p1

    :cond_0
    return-void
.end method

.method public a(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Connection must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Target host must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p5, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {p1}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Connection must not be open."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/trans/a/i;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v7

    instance-of v0, v7, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    if-eqz v0, :cond_4

    sget-object v8, Lcom/alipay/android/app/trans/a/i;->a:Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-object v0, v7

    check-cast v0, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    move-object v9, v0

    :goto_0
    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/trans/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    new-array v10, v1, [Ljava/net/InetAddress;

    const/4 v1, 0x0

    invoke-static {v0}, Lcom/alipay/android/app/trans/a/a;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    aput-object v0, v10, v1

    :goto_1
    if-nez v10, :cond_6

    const/4 v0, 0x4

    const-string/jumbo v1, ""

    const-string/jumbo v2, "ZClientConnectionOperator::openCustomConnection"

    const-string/jumbo v3, "query addresses failed, call default impl."

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super/range {p0 .. p5}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->openConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    :goto_2
    return-void

    :cond_4
    const/4 v9, 0x0

    move-object v8, v7

    goto :goto_0

    :cond_5
    invoke-direct {p0, v0}, Lcom/alipay/android/app/trans/a/i;->a(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v10

    goto :goto_1

    :cond_6
    const/4 v0, 0x4

    const-string/jumbo v1, ""

    const-string/jumbo v2, "ZClientConnectionOperator::openCustomConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addresses len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v10}, Lcom/alipay/android/app/trans/a/i;->a(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/Scheme;Lorg/apache/http/conn/scheme/SocketFactory;Lorg/apache/http/conn/scheme/SocketFactory;Lorg/apache/http/conn/scheme/LayeredSocketFactory;[Ljava/net/InetAddress;)V

    const-string/jumbo v0, "dns"

    const-string/jumbo v1, "CustomConnectTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/statistic/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public openConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x4

    const-string/jumbo v0, ""

    const-string/jumbo v1, "ZClientConnectionOperator::openConnection"

    const-string/jumbo v2, "start"

    invoke-static {v3, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->d()Lcom/alipay/android/app/plugin/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/plugin/a;->isClientConnDegrade()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super/range {p0 .. p5}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->openConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    :try_start_0
    const-string/jumbo v1, ""

    const-string/jumbo v2, "ZClientConnectionOperator::openConnection"

    const-string/jumbo v3, "try custom open conn"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p5}, Lcom/alipay/android/app/trans/a/i;->a(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "dns"

    const-string/jumbo v2, "OpenCustomConnEx"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/trans/a/i;->a(Ljava/io/IOException;)V

    invoke-super/range {p0 .. p5}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->openConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    goto :goto_0
.end method
