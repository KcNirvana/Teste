.class public Lcom/alipay/android/app/trans/a/b;
.super Ljava/lang/Object;
.source "PhoneCashierHttpClient.java"


# static fields
.field private static a:Lcom/alipay/android/app/trans/a/b;

.field private static b:Lorg/apache/http/impl/client/DefaultHttpClient;


# instance fields
.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/os/Handler;

.field private e:Lorg/apache/http/client/methods/HttpUriRequest;


# direct methods
.method private constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/trans/a/b;->c:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/alipay/android/app/trans/a/b;->d:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/alipay/android/app/trans/a/b;->f()V

    return-void
.end method

.method private constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/trans/a/b;->c:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/alipay/android/app/trans/a/b;->d:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/alipay/android/app/trans/a/b;->f()V

    return-void
.end method

.method public static a()Lcom/alipay/android/app/trans/a/b;
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/alipay/android/app/trans/a/b;->a:Lcom/alipay/android/app/trans/a/b;

    if-nez v0, :cond_0

    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    const-string/jumbo v0, "networkaddress.cache.ttl"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "http.protocol.expect-continue"

    invoke-interface {v1, v0, v3}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    sget v0, Lcom/alipay/android/app/pay/a;->d:I

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget v0, Lcom/alipay/android/app/pay/a;->e:I

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget v0, Lcom/alipay/android/app/pay/a;->f:I

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v1, v4}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v2, "https"

    new-instance v3, Lcom/alipay/android/app/trans/a/j;

    invoke-direct {v3}, Lcom/alipay/android/app/trans/a/j;-><init>()V

    const/16 v4, 0x1bb

    invoke-direct {v0, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    invoke-virtual {v3, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    invoke-virtual {v3, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    const/16 v0, 0x32

    invoke-static {v1, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    new-instance v0, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v1, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    const-wide/32 v4, 0xea60

    invoke-static {v1, v4, v5}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    new-instance v0, Lcom/alipay/android/app/trans/a/k;

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/app/trans/a/k;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    :try_start_0
    new-instance v2, Lcom/alipay/android/app/trans/a/d;

    invoke-direct {v2, v0, v1}, Lcom/alipay/android/app/trans/a/d;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v2, Lcom/alipay/android/app/trans/a/b;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v2, Lcom/alipay/android/app/trans/a/b;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v3, Lcom/alipay/android/app/trans/a/g;

    invoke-direct {v3}, Lcom/alipay/android/app/trans/a/g;-><init>()V

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    new-instance v2, Lcom/alipay/android/app/trans/a/b;

    invoke-direct {v2, v0, v1}, Lcom/alipay/android/app/trans/a/b;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v2, Lcom/alipay/android/app/trans/a/b;->a:Lcom/alipay/android/app/trans/a/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/alipay/android/app/trans/a/b;->a:Lcom/alipay/android/app/trans/a/b;

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    const/16 v0, 0x8

    const-string/jumbo v2, "phonecashiermsp"

    const-string/jumbo v3, "PhoneCashierHttpClient.newInstance"

    const-string/jumbo v4, "\u4e0d\u5e94\u8be5\u6267\u884c\u5230\u7684\u5730\u65b9"

    invoke-static {v0, v2, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    sput-object v0, Lcom/alipay/android/app/trans/a/b;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v0, Lcom/alipay/android/app/trans/a/b;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/trans/a/b;-><init>(Lorg/apache/http/params/HttpParams;)V

    sput-object v0, Lcom/alipay/android/app/trans/a/b;->a:Lcom/alipay/android/app/trans/a/b;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/app/trans/a/b;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/trans/a/b;->e:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0
.end method

.method private f()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "timeout thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/app/trans/a/b;->c:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/alipay/android/app/trans/a/b;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/alipay/android/app/trans/a/c;

    iget-object v1, p0, Lcom/alipay/android/app/trans/a/b;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/app/trans/a/c;-><init>(Lcom/alipay/android/app/trans/a/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/app/trans/a/b;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/http/client/methods/HttpUriRequest;I)Lorg/apache/http/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->d()Lcom/alipay/android/app/plugin/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/plugin/a;->updateDns()V

    iput-object p1, p0, Lcom/alipay/android/app/trans/a/b;->e:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v0, p0, Lcom/alipay/android/app/trans/a/b;->d:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/trans/a/b;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iput-object v1, p0, Lcom/alipay/android/app/trans/a/b;->e:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v1, p0, Lcom/alipay/android/app/trans/a/b;->d:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v1, p0, Lcom/alipay/android/app/trans/a/b;->e:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v0, p0, Lcom/alipay/android/app/trans/a/b;->d:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {p0}, Lcom/alipay/android/app/trans/a/b;->c()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/alipay/android/app/trans/a/b;->e:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v1, p0, Lcom/alipay/android/app/trans/a/b;->d:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    throw v0
.end method

.method public b()V
    .locals 4

    invoke-virtual {p0}, Lcom/alipay/android/app/trans/a/b;->e()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    const-wide/16 v2, 0x708

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->d()Lcom/alipay/android/app/plugin/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/plugin/a;->inscLoopCount()V

    invoke-virtual {p0}, Lcom/alipay/android/app/trans/a/b;->e()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/trans/a/b;->b()V

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/trans/a/b;->a:Lcom/alipay/android/app/trans/a/b;

    return-void
.end method

.method public d()Lorg/apache/http/params/HttpParams;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/trans/a/b;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method

.method public e()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/trans/a/b;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method
