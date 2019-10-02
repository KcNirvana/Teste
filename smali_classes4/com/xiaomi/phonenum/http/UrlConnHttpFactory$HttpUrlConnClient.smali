.class Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient;
.super Ljava/lang/Object;
.source "UrlConnHttpFactory.java"

# interfaces
.implements Lcom/xiaomi/phonenum/http/HttpClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/phonenum/http/UrlConnHttpFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpUrlConnClient"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpUrlConnClient"


# instance fields
.field private config:Lcom/xiaomi/phonenum/http/HttpClientConfig;

.field final synthetic this$0:Lcom/xiaomi/phonenum/http/UrlConnHttpFactory;


# direct methods
.method private constructor <init>(Lcom/xiaomi/phonenum/http/UrlConnHttpFactory;Lcom/xiaomi/phonenum/http/HttpClientConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient;->this$0:Lcom/xiaomi/phonenum/http/UrlConnHttpFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient;->config:Lcom/xiaomi/phonenum/http/HttpClientConfig;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/phonenum/http/UrlConnHttpFactory;Lcom/xiaomi/phonenum/http/HttpClientConfig;Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient;-><init>(Lcom/xiaomi/phonenum/http/UrlConnHttpFactory;Lcom/xiaomi/phonenum/http/HttpClientConfig;)V

    return-void
.end method

.method private excute(Lcom/xiaomi/phonenum/http/Request;Ljava/net/HttpURLConnection;)Lcom/xiaomi/phonenum/http/Response$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient;->config:Lcom/xiaomi/phonenum/http/HttpClientConfig;

    iget-wide v0, v0, Lcom/xiaomi/phonenum/http/HttpClientConfig;->connectTimeoutMs:J

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient;->config:Lcom/xiaomi/phonenum/http/HttpClientConfig;

    iget-wide v0, v0, Lcom/xiaomi/phonenum/http/HttpClientConfig;->readTimeoutMs:J

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v0, p1, Lcom/xiaomi/phonenum/http/Request;->formBody:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v0, "POST"

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "GET"

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, p1, Lcom/xiaomi/phonenum/http/Request;->followRedirects:Z

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v0, p1, Lcom/xiaomi/phonenum/http/Request;->headers:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/xiaomi/phonenum/http/Request;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v0, p1, Lcom/xiaomi/phonenum/http/Request;->formBody:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iget-object p1, p1, Lcom/xiaomi/phonenum/http/Request;->formBody:Ljava/util/Map;

    invoke-static {p1}, Lcom/xiaomi/phonenum/utils/MapUtil;->joinToQuery(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_2
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    new-instance v0, Lcom/xiaomi/phonenum/http/Response$Builder;

    invoke-direct {v0}, Lcom/xiaomi/phonenum/http/Response$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/phonenum/http/Response$Builder;->code(I)Lcom/xiaomi/phonenum/http/Response$Builder;

    move-result-object v0

    const-string v1, "Location"

    invoke-virtual {p2, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/phonenum/http/Response$Builder;->location(Ljava/lang/String;)Lcom/xiaomi/phonenum/http/Response$Builder;

    move-result-object v0

    const-string v1, "Set-Cookie"

    invoke-virtual {p2, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/phonenum/http/Response$Builder;->setCookie(Ljava/lang/String;)Lcom/xiaomi/phonenum/http/Response$Builder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/phonenum/http/Response$Builder;->headers(Ljava/util/Map;)Lcom/xiaomi/phonenum/http/Response$Builder;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_5

    const/4 p1, 0x0

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x400

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/phonenum/http/Response$Builder;->body(Ljava/lang/String;)Lcom/xiaomi/phonenum/http/Response$Builder;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    :goto_3
    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_5
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :catchall_2
    move-exception p1

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p1
.end method

.method private openConnection(Ljava/lang/String;Landroid/net/Network;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    :goto_0
    return-object p1
.end method

.method private waitForCellular()Landroid/net/Network;
    .locals 6

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient;->this$0:Lcom/xiaomi/phonenum/http/UrlConnHttpFactory;

    invoke-static {v0}, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory;->access$200(Lcom/xiaomi/phonenum/http/UrlConnHttpFactory;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient;->config:Lcom/xiaomi/phonenum/http/HttpClientConfig;

    iget-wide v1, v1, Lcom/xiaomi/phonenum/http/HttpClientConfig;->waitCellularTimeoutMs:J

    iget-object v3, p0, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient;->config:Lcom/xiaomi/phonenum/http/HttpClientConfig;

    iget v3, v3, Lcom/xiaomi/phonenum/http/HttpClientConfig;->netWorkSubId:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient;->waitForCellular(Landroid/content/Context;JI)Landroid/net/Network;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient;->this$0:Lcom/xiaomi/phonenum/http/UrlConnHttpFactory;

    invoke-static {v1}, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory;->access$300(Lcom/xiaomi/phonenum/http/UrlConnHttpFactory;)Lcom/xiaomi/phonenum/utils/Logger;

    move-result-object v1

    const-string v2, "HttpUrlConnClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waitForCellular Timeout "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient;->config:Lcom/xiaomi/phonenum/http/HttpClientConfig;

    iget-wide v4, v4, Lcom/xiaomi/phonenum/http/HttpClientConfig;->waitCellularTimeoutMs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/xiaomi/phonenum/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient;->this$0:Lcom/xiaomi/phonenum/http/UrlConnHttpFactory;

    invoke-static {v1}, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory;->access$300(Lcom/xiaomi/phonenum/http/UrlConnHttpFactory;)Lcom/xiaomi/phonenum/utils/Logger;

    move-result-object v1

    const-string v2, "HttpUrlConnClient"

    const-string v3, "waitForCellular"

    invoke-interface {v1, v2, v3, v0}, Lcom/xiaomi/phonenum/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private waitForCellular(Landroid/content/Context;JI)Landroid/net/Network;
    .locals 4
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move-result-object p4

    invoke-virtual {p4}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p4

    new-instance v2, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient$1;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient$1;-><init>(Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient;Landroid/net/ConnectivityManager;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p1, p4, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p2, p3, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Network;

    return-object p1

    :cond_0
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1
.end method


# virtual methods
.method public excute(Lcom/xiaomi/phonenum/http/Request;)Lcom/xiaomi/phonenum/http/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient;->config:Lcom/xiaomi/phonenum/http/HttpClientConfig;

    iget v2, v2, Lcom/xiaomi/phonenum/http/HttpClientConfig;->netWorkSubId:I

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient;->config:Lcom/xiaomi/phonenum/http/HttpClientConfig;

    iget v2, v2, Lcom/xiaomi/phonenum/http/HttpClientConfig;->netWorkSubId:I

    iget-object v3, p0, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient;->this$0:Lcom/xiaomi/phonenum/http/UrlConnHttpFactory;

    invoke-static {v3}, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory;->access$100(Lcom/xiaomi/phonenum/http/UrlConnHttpFactory;)Lcom/xiaomi/phonenum/phone/PhoneUtil;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/xiaomi/phonenum/phone/PhoneUtil;->getDataEnabledForSubId(I)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object p1, Lcom/xiaomi/phonenum/bean/HttpError;->DATA_NOT_ENABLED:Lcom/xiaomi/phonenum/bean/HttpError;

    invoke-virtual {p1}, Lcom/xiaomi/phonenum/bean/HttpError;->result()Lcom/xiaomi/phonenum/http/Response;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient;->this$0:Lcom/xiaomi/phonenum/http/UrlConnHttpFactory;

    invoke-static {v2}, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory;->access$100(Lcom/xiaomi/phonenum/http/UrlConnHttpFactory;)Lcom/xiaomi/phonenum/phone/PhoneUtil;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaomi/phonenum/phone/PhoneUtil;->isNetWorkTypeMobile()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient;->this$0:Lcom/xiaomi/phonenum/http/UrlConnHttpFactory;

    invoke-static {v2}, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory;->access$100(Lcom/xiaomi/phonenum/http/UrlConnHttpFactory;)Lcom/xiaomi/phonenum/phone/PhoneUtil;

    move-result-object v2

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    invoke-interface {v2, v3}, Lcom/xiaomi/phonenum/phone/PhoneUtil;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object p1, Lcom/xiaomi/phonenum/bean/HttpError;->NO_CHANGE_NETWORK_STATE_PERMISSION:Lcom/xiaomi/phonenum/bean/HttpError;

    invoke-virtual {p1}, Lcom/xiaomi/phonenum/bean/HttpError;->result()Lcom/xiaomi/phonenum/http/Response;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient;->waitForCellular()Landroid/net/Network;

    move-result-object v2

    if-nez v2, :cond_3

    sget-object p1, Lcom/xiaomi/phonenum/bean/HttpError;->CELLULAR_NETWORK_NOT_AVAILABLE:Lcom/xiaomi/phonenum/bean/HttpError;

    invoke-virtual {p1}, Lcom/xiaomi/phonenum/bean/HttpError;->result()Lcom/xiaomi/phonenum/http/Response;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v2, 0x0

    :cond_3
    iget-object v3, p1, Lcom/xiaomi/phonenum/http/Request;->url:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient;->openConnection(Ljava/lang/String;Landroid/net/Network;)Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient;->excute(Lcom/xiaomi/phonenum/http/Request;Ljava/net/HttpURLConnection;)Lcom/xiaomi/phonenum/http/Response$Builder;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/xiaomi/phonenum/http/Response$Builder;->time(J)Lcom/xiaomi/phonenum/http/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/phonenum/http/Response$Builder;->build()Lcom/xiaomi/phonenum/http/Response;

    move-result-object p1

    return-object p1
.end method
