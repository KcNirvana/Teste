.class public Lcom/alipay/android/app/trans/api/TransChannel;
.super Ljava/lang/Object;
.source "TransChannel.java"

# interfaces
.implements Lcom/alipay/android/app/plugin/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildResHeaders([Lorg/apache/http/Header;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "msp-gzip"

    invoke-direct {p0, v1, p1}, Lcom/alipay/android/app/trans/api/TransChannel;->findHeader(Ljava/lang/String;[Lorg/apache/http/Header;)Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string/jumbo v1, "Msp-Param"

    invoke-direct {p0, v1, p1}, Lcom/alipay/android/app/trans/api/TransChannel;->findHeader(Ljava/lang/String;[Lorg/apache/http/Header;)Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string/jumbo v1, "msp-bytes"

    invoke-direct {p0, v1, p1}, Lcom/alipay/android/app/trans/api/TransChannel;->findHeader(Ljava/lang/String;[Lorg/apache/http/Header;)Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/g/h;->a(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method private findHeader(Ljava/lang/String;[Lorg/apache/http/Header;)Lorg/apache/http/Header;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    array-length v4, p2

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v0, p2, v2

    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_2
    move-object v1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method private getCompressedEntity(Ljava/lang/String;[B)Lorg/apache/http/entity/ByteArrayEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "application/octet-stream;binary/octet-stream"

    :cond_0
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v0, p1}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    return-object v0
.end method

.method private getHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    const-string/jumbo v0, "mobilegw.alipay.com"

    goto :goto_0
.end method

.method private getProxy11(Ljava/lang/String;)Lorg/apache/http/HttpHost;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Lcom/alipay/android/app/b/e/d;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "wap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object v2

    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "https.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "https.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v2, v1, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object v0, v2

    :goto_2
    move-object v2, v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "http.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "http.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_2
.end method

.method private requestData([BLjava/lang/String;Ljava/lang/String;Ljava/util/List;I)Lcom/alipay/android/app/trans/b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;I)",
            "Lcom/alipay/android/app/trans/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alipay/android/app/exception/NetErrorException;
        }
    .end annotation

    const/4 v6, 0x2

    const-string/jumbo v0, ""

    const-string/jumbo v1, "TransChannel::requestData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "request url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/trans/a/b;->a()Lcom/alipay/android/app/trans/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/trans/a/b;->d()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-virtual {p0, p3}, Lcom/alipay/android/app/trans/api/TransChannel;->getProxy(Ljava/lang/String;)Lorg/apache/http/HttpHost;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v3, "http.route.default-proxy"

    invoke-interface {v0, v3, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_0
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    const-string/jumbo v0, ""

    const-string/jumbo v3, "TransChannel::requestData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "request data len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v0, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/alipay/android/app/trans/api/TransChannel;->getCompressedEntity(Ljava/lang/String;[B)Lorg/apache/http/entity/ByteArrayEntity;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-virtual {v3}, Lorg/apache/http/entity/ByteArrayEntity;->getContentLength()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/alipay/android/app/statistic/h;->b(J)V

    :cond_1
    invoke-direct {p0, p3}, Lcom/alipay/android/app/trans/api/TransChannel;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v4, "host"

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V

    if-eqz p4, :cond_2

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    invoke-interface {v1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v1, p5}, Lcom/alipay/android/app/trans/a/b;->a(Lorg/apache/http/client/methods/HttpUriRequest;I)Lorg/apache/http/HttpResponse;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/statistic/h;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/trans/b/a;->a(Lorg/apache/http/HttpResponse;)[B

    move-result-object v1

    array-length v2, v1

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/alipay/android/app/statistic/h;->f(J)V

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alipay/android/app/trans/api/TransChannel;->buildResHeaders([Lorg/apache/http/Header;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/app/trans/b;

    invoke-direct {v3}, Lcom/alipay/android/app/trans/b;-><init>()V

    iput-object v1, v3, Lcom/alipay/android/app/trans/b;->a:Ljava/lang/Object;

    iput-object v2, v3, Lcom/alipay/android/app/trans/b;->b:Ljava/util/List;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    iput v0, v3, Lcom/alipay/android/app/trans/b;->c:I

    return-object v3
.end method


# virtual methods
.method public getProxy(Ljava/lang/String;)Lorg/apache/http/HttpHost;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/alipay/android/app/trans/api/TransChannel;->getProxy11(Ljava/lang/String;)Lorg/apache/http/HttpHost;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/trans/api/TransChannel;->getProxy10()Lorg/apache/http/HttpHost;

    move-result-object v0

    goto :goto_0
.end method

.method public getProxy10()Lorg/apache/http/HttpHost;
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/alipay/android/app/b/e/d;->b()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    if-eqz v1, :cond_0

    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    :cond_0
    return-object v0
.end method

.method public requestData(Lcom/alipay/android/app/trans/a;Lcom/alipay/android/app/trans/config/a;)Lcom/alipay/android/app/trans/b;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/alipay/android/app/trans/config/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/alipay/android/app/trans/config/a;->e()Lcom/alipay/android/app/trans/config/RequestChannel;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/trans/config/RequestChannel;->BYTES_CASHIER:Lcom/alipay/android/app/trans/config/RequestChannel;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/alipay/android/app/trans/a;->d:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/alipay/android/app/logic/c/c;->b(Ljava/lang/String;Lcom/alipay/android/app/trans/config/a;)Ljava/util/List;

    move-result-object v4

    :goto_0
    invoke-virtual {p1}, Lcom/alipay/android/app/trans/a;->a()[B

    move-result-object v1

    invoke-virtual {p2}, Lcom/alipay/android/app/trans/config/a;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/alipay/android/app/trans/config/a;->p()Ljava/lang/String;

    move-result-object v3

    iget v5, p1, Lcom/alipay/android/app/trans/a;->c:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/trans/api/TransChannel;->requestData([BLjava/lang/String;Ljava/lang/String;Ljava/util/List;I)Lcom/alipay/android/app/trans/b;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/alipay/android/app/trans/a;->d:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/alipay/android/app/logic/c/c;->a(Ljava/lang/String;Lcom/alipay/android/app/trans/config/a;)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/alipay/android/app/trans/config/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alipay/android/app/trans/a;->d:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/alipay/android/app/logic/c/c;->c(Ljava/lang/String;Lcom/alipay/android/app/trans/config/a;)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    :cond_2
    iget-object v4, p1, Lcom/alipay/android/app/trans/a;->b:Ljava/util/List;

    goto :goto_0
.end method

.method public shutdown()V
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/trans/a/b;->a()Lcom/alipay/android/app/trans/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/trans/a/b;->c()V

    return-void
.end method
