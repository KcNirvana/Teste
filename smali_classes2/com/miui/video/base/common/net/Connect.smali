.class public Lcom/miui/video/base/common/net/Connect;
.super Ljava/lang/Object;
.source "Connect.java"

# interfaces
.implements Lcom/miui/video/base/common/net/IConnect;
.implements Lcom/miui/video/base/common/impl/IState;


# static fields
.field private static isProxy:Z = false

.field private static mBuffer:I = 0x1000

.field private static mConnectTimeout:I


# instance fields
.field private isUseProxyRetry:Z

.field private mContentType:Ljava/lang/String;

.field private mHttpURLConnection:Ljava/net/HttpURLConnection;

.field private mId:J

.field private mRetryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/framework/FrameworkConfig;->getConnectTimeout()I

    move-result v0

    const-string v1, "text/xml"

    invoke-direct {p0, v0, v1}, Lcom/miui/video/base/common/net/Connect;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    const/16 p1, 0x1388

    goto :goto_0

    :cond_0
    mul-int/lit16 p1, p1, 0x3e8

    :goto_0
    sput p1, Lcom/miui/video/base/common/net/Connect;->mConnectTimeout:I

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/framework/FrameworkConfig;->getConnectBuffer()I

    move-result p1

    sput p1, Lcom/miui/video/base/common/net/Connect;->mBuffer:I

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/framework/FrameworkConfig;->getConnectRetryCount()I

    move-result p1

    iput p1, p0, Lcom/miui/video/base/common/net/Connect;->mRetryCount:I

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/framework/FrameworkConfig;->isConnectUseProxyRetry()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/video/base/common/net/Connect;->isUseProxyRetry:Z

    iput-object p2, p0, Lcom/miui/video/base/common/net/Connect;->mContentType:Ljava/lang/String;

    return-void
.end method

.method private disableConnectionReuseIfNecessary()V
    .locals 2

    invoke-static {}, Lcom/miui/video/framework/utils/SDKUtils;->equalAPI_8_FROYO()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private enableHttpResponseCache(Landroid/content/Context;)V
    .locals 9

    const-wide/32 v0, 0xa00000

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    const-string v3, "http"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p1, "android.net.http.HttpResponseCache"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v3, "install"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/io/File;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {p1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v3, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-virtual {p1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private getContentLength(Ljava/net/HttpURLConnection;)J
    .locals 5

    invoke-static {}, Lcom/miui/video/framework/utils/NetworkUtils;->isWapNetwork()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Content-Range"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "bytes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_0

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_0

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0

    :cond_2
    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_3
    iget-object p1, p0, Lcom/miui/video/base/common/net/Connect;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method private getHttpURLConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/miui/video/base/common/net/Connect;->isProxy:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    const-string v3, "10.0.0.172"

    const/16 v4, 0x50

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    :goto_0
    invoke-virtual {p1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    return-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method private getHttpsURLConnection(Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/miui/video/base/common/net/Connect;->isProxy:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    const-string v3, "10.0.0.172"

    const/16 v4, 0x50

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    :goto_0
    invoke-virtual {p1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    return-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    return-object p1
.end method

.method private openUrl(Lcom/miui/video/base/common/net/ConnectEntity;I)Lcom/miui/video/base/common/net/ConnectEntity;
    .locals 10

    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    const-string v1, "METHOD_URL_GET"

    goto :goto_0

    :cond_0
    const-string v1, "METHOD_URL_POST"

    :goto_0
    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x4

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Thread= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/miui/video/base/common/net/Connect;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "  URL= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getRunUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v1, v5}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getState()I

    move-result v5

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Lcom/miui/video/base/common/net/ConnectEntity;->setState(I)V

    :cond_1
    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getRunUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "https:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getRunUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/miui/video/base/common/net/Connect;->getHttpsURLConnection(Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/video/base/common/net/Connect;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    iget-object v5, p0, Lcom/miui/video/base/common/net/Connect;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {}, Lcom/miui/video/base/common/net/https/SSLSocketFactoryManager;->getVideoCAFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    iget-object v5, p0, Lcom/miui/video/base/common/net/Connect;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v6, Lcom/miui/video/base/common/net/https/TrustAllHostNameVerifier;

    invoke-direct {v6}, Lcom/miui/video/base/common/net/https/TrustAllHostNameVerifier;-><init>()V

    invoke-virtual {v5, v6}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_1

    :cond_2
    new-instance v5, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getRunUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/miui/video/base/common/net/Connect;->getHttpURLConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/video/base/common/net/Connect;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    :goto_1
    invoke-direct {p0}, Lcom/miui/video/base/common/net/Connect;->disableConnectionReuseIfNecessary()V

    iget-object v5, p0, Lcom/miui/video/base/common/net/Connect;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    sget v6, Lcom/miui/video/base/common/net/Connect;->mConnectTimeout:I

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    if-ne v0, p2, :cond_3

    iget-object v5, p0, Lcom/miui/video/base/common/net/Connect;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v5, p0, Lcom/miui/video/base/common/net/Connect;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    const-string v6, "GET"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :cond_3
    const/4 v5, 0x2

    if-ne v5, p2, :cond_4

    iget-object v5, p0, Lcom/miui/video/base/common/net/Connect;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object v5, p0, Lcom/miui/video/base/common/net/Connect;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    const-string v6, "POST"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :cond_4
    iget-object v5, p0, Lcom/miui/video/base/common/net/Connect;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    sget v6, Lcom/miui/video/base/common/net/Connect;->mConnectTimeout:I

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v5, p0, Lcom/miui/video/base/common/net/Connect;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    const-string v6, "Content-Type"

    iget-object v7, p0, Lcom/miui/video/base/common/net/Connect;->mContentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/miui/video/base/common/net/Connect;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    const-string v6, "Accept-Encoding"

    const-string v7, "gzip,deflate"

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/miui/video/base/common/net/Connect;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getRequestByteIndex()I

    move-result v5

    if-lez v5, :cond_6

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getRequestLength()I

    move-result v5

    if-lez v5, :cond_6

    iget-object v5, p0, Lcom/miui/video/base/common/net/Connect;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    const-string v6, "RANGE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bytes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getRequestByteIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getRequestByteIndex()I

    move-result v8

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getRequestLength()I

    move-result v9

    if-le v8, v9, :cond_5

    const/4 v8, 0x1

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getRequestByteIndex()I

    move-result v5

    if-lez v5, :cond_7

    iget-object v5, p0, Lcom/miui/video/base/common/net/Connect;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    const-string v6, "RANGE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bytes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getRequestByteIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getSendBytes()[B

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getSendBytes()[B

    move-result-object v5

    array-length v5, v5
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v5, :cond_8

    :try_start_1
    iget-object v5, p0, Lcom/miui/video/base/common/net/Connect;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getSendBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v5

    :try_start_2
    invoke-static {p0, v5}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    iget-object v5, p0, Lcom/miui/video/base/common/net/Connect;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v5, p0, Lcom/miui/video/base/common/net/Connect;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    iget-object v6, p0, Lcom/miui/video/base/common/net/Connect;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    const-string v7, "Set-Cookie"

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Thread= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/miui/video/base/common/net/Connect;->mId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "  ResponseCode= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "  Set-Cookie= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v1, v6}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v6, 0x12e

    if-ne v6, v5, :cond_b

    iget-object v5, p0, Lcom/miui/video/base/common/net/Connect;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    const-string v6, "Location"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/miui/video/base/common/net/ConnectEntity;->setRunUrl(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/miui/video/base/common/net/Connect;->openUrl(Lcom/miui/video/base/common/net/ConnectEntity;I)Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object v5
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getState()I

    move-result v6

    if-gt v2, v6, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Thread= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/miui/video/base/common/net/Connect;->mId:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "  ERROR= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getState()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  RetryCount= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/miui/video/base/common/net/Connect;->mRetryCount:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  UseProxyRetry= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/miui/video/base/common/net/Connect;->isUseProxyRetry:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/miui/video/base/common/net/Connect;->mRetryCount:I

    if-lez v1, :cond_9

    :goto_5
    iget v1, p0, Lcom/miui/video/base/common/net/Connect;->mRetryCount:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/miui/video/base/common/net/Connect;->mRetryCount:I

    invoke-virtual {p1, v4}, Lcom/miui/video/base/common/net/ConnectEntity;->setState(I)V

    invoke-direct {p0, p1, p2}, Lcom/miui/video/base/common/net/Connect;->openUrl(Lcom/miui/video/base/common/net/ConnectEntity;I)Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object p1

    return-object p1

    :cond_9
    iget-boolean v1, p0, Lcom/miui/video/base/common/net/Connect;->isUseProxyRetry:Z

    if-eqz v1, :cond_a

    :goto_6
    iput-boolean v3, p0, Lcom/miui/video/base/common/net/Connect;->isUseProxyRetry:Z

    sput-boolean v0, Lcom/miui/video/base/common/net/Connect;->isProxy:Z

    invoke-virtual {p1, v4}, Lcom/miui/video/base/common/net/ConnectEntity;->setState(I)V

    invoke-direct {p0, p1, p2}, Lcom/miui/video/base/common/net/Connect;->openUrl(Lcom/miui/video/base/common/net/ConnectEntity;I)Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object p1

    return-object p1

    :cond_a
    return-object v5

    :cond_b
    const/16 v6, 0x194

    if-ne v6, v5, :cond_c

    const/16 v5, 0xd

    :try_start_3
    invoke-virtual {p1, v5}, Lcom/miui/video/base/common/net/ConnectEntity;->setState(I)V

    goto :goto_8

    :cond_c
    const/16 v6, 0xc8

    if-eq v6, v5, :cond_e

    const/16 v6, 0xc9

    if-eq v6, v5, :cond_e

    const/16 v6, 0xce

    if-ne v6, v5, :cond_d

    goto :goto_7

    :cond_d
    invoke-virtual {p1, v2}, Lcom/miui/video/base/common/net/ConnectEntity;->setState(I)V

    goto :goto_8

    :cond_e
    :goto_7
    iget-object v5, p0, Lcom/miui/video/base/common/net/Connect;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v5}, Lcom/miui/video/base/common/net/Connect;->getContentLength(Ljava/net/HttpURLConnection;)J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lcom/miui/video/base/common/net/ConnectEntity;->setContentLength(J)V

    iget-object v5, p0, Lcom/miui/video/base/common/net/Connect;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/miui/video/base/common/net/ConnectEntity;->setContentStream(Ljava/io/InputStream;)V

    iget-object v5, p0, Lcom/miui/video/base/common/net/Connect;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/miui/video/base/common/net/ConnectEntity;->setContentEncoding(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/miui/video/base/common/net/ConnectEntity;->setState(I)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_8
    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getState()I

    move-result v5

    if-gt v2, v5, :cond_14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thread= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/miui/video/base/common/net/Connect;->mId:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "  ERROR= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getState()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  RetryCount= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/miui/video/base/common/net/Connect;->mRetryCount:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  UseProxyRetry= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/miui/video/base/common/net/Connect;->isUseProxyRetry:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/miui/video/base/common/net/Connect;->mRetryCount:I

    if-lez v1, :cond_f

    goto/16 :goto_5

    :cond_f
    iget-boolean v1, p0, Lcom/miui/video/base/common/net/Connect;->isUseProxyRetry:Z

    if-eqz v1, :cond_14

    goto/16 :goto_6

    :catchall_0
    move-exception v5

    goto/16 :goto_9

    :catch_1
    move-exception v5

    :try_start_4
    invoke-static {p0, v5}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/16 v5, 0xb

    invoke-virtual {p1, v5}, Lcom/miui/video/base/common/net/ConnectEntity;->setState(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getState()I

    move-result v5

    if-gt v2, v5, :cond_14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thread= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/miui/video/base/common/net/Connect;->mId:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "  ERROR= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getState()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  RetryCount= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/miui/video/base/common/net/Connect;->mRetryCount:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  UseProxyRetry= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/miui/video/base/common/net/Connect;->isUseProxyRetry:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/miui/video/base/common/net/Connect;->mRetryCount:I

    if-lez v1, :cond_10

    goto/16 :goto_5

    :cond_10
    iget-boolean v1, p0, Lcom/miui/video/base/common/net/Connect;->isUseProxyRetry:Z

    if-eqz v1, :cond_14

    goto/16 :goto_6

    :catch_2
    move-exception v5

    :try_start_5
    invoke-static {p0, v5}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/16 v5, 0x10

    invoke-virtual {p1, v5}, Lcom/miui/video/base/common/net/ConnectEntity;->setState(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getState()I

    move-result v5

    if-gt v2, v5, :cond_14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thread= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/miui/video/base/common/net/Connect;->mId:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "  ERROR= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getState()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  RetryCount= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/miui/video/base/common/net/Connect;->mRetryCount:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  UseProxyRetry= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/miui/video/base/common/net/Connect;->isUseProxyRetry:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/miui/video/base/common/net/Connect;->mRetryCount:I

    if-lez v1, :cond_11

    goto/16 :goto_5

    :cond_11
    iget-boolean v1, p0, Lcom/miui/video/base/common/net/Connect;->isUseProxyRetry:Z

    if-eqz v1, :cond_14

    goto/16 :goto_6

    :catch_3
    move-exception v5

    :try_start_6
    invoke-static {p0, v5}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/16 v5, 0xf

    invoke-virtual {p1, v5}, Lcom/miui/video/base/common/net/ConnectEntity;->setState(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getState()I

    move-result v5

    if-gt v2, v5, :cond_14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thread= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/miui/video/base/common/net/Connect;->mId:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "  ERROR= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getState()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  RetryCount= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/miui/video/base/common/net/Connect;->mRetryCount:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  UseProxyRetry= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/miui/video/base/common/net/Connect;->isUseProxyRetry:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/miui/video/base/common/net/Connect;->mRetryCount:I

    if-lez v1, :cond_12

    goto/16 :goto_5

    :cond_12
    iget-boolean v1, p0, Lcom/miui/video/base/common/net/Connect;->isUseProxyRetry:Z

    if-eqz v1, :cond_14

    goto/16 :goto_6

    :catch_4
    move-exception v5

    :try_start_7
    invoke-static {p0, v5}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/16 v5, 0xe

    invoke-virtual {p1, v5}, Lcom/miui/video/base/common/net/ConnectEntity;->setState(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getState()I

    move-result v5

    if-gt v2, v5, :cond_14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thread= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/miui/video/base/common/net/Connect;->mId:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "  ERROR= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getState()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  RetryCount= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/miui/video/base/common/net/Connect;->mRetryCount:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  UseProxyRetry= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/miui/video/base/common/net/Connect;->isUseProxyRetry:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/miui/video/base/common/net/Connect;->mRetryCount:I

    if-lez v1, :cond_13

    goto/16 :goto_5

    :cond_13
    iget-boolean v1, p0, Lcom/miui/video/base/common/net/Connect;->isUseProxyRetry:Z

    if-eqz v1, :cond_14

    goto/16 :goto_6

    :cond_14
    return-object p1

    :goto_9
    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getState()I

    move-result v6

    if-gt v2, v6, :cond_16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Thread= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/miui/video/base/common/net/Connect;->mId:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "  ERROR= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getState()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  RetryCount= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/miui/video/base/common/net/Connect;->mRetryCount:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  UseProxyRetry= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/miui/video/base/common/net/Connect;->isUseProxyRetry:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/miui/video/base/common/net/Connect;->mRetryCount:I

    if-lez v1, :cond_15

    goto/16 :goto_5

    :cond_15
    iget-boolean v1, p0, Lcom/miui/video/base/common/net/Connect;->isUseProxyRetry:Z

    if-eqz v1, :cond_16

    goto/16 :goto_6

    :cond_16
    throw v5
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/net/Connect;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/common/net/Connect;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/base/common/net/Connect;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    :cond_0
    return-void
.end method

.method public open(Lcom/miui/video/base/common/net/ConnectEntity;I)Lcom/miui/video/base/common/net/ConnectEntity;
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/video/base/common/net/Connect;->mId:J

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/video/base/common/net/ConnectEntity;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/miui/video/base/common/net/ConnectEntity;-><init>(Ljava/lang/String;)V

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Lcom/miui/video/base/common/net/ConnectEntity;->setState(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/framework/FrameworkConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Lcom/miui/video/base/common/net/ConnectEntity;->setState(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 p2, 0xd

    invoke-virtual {p1, p2}, Lcom/miui/video/base/common/net/ConnectEntity;->setState(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-eq v0, p2, :cond_4

    const/4 v0, 0x2

    if-ne v0, p2, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    return-object p1

    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/base/common/net/ConnectEntity;->setRunUrl(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/miui/video/base/common/net/Connect;->openUrl(Lcom/miui/video/base/common/net/ConnectEntity;I)Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object p1

    return-object p1
.end method
