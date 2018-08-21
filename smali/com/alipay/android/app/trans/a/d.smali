.class final Lcom/alipay/android/app/trans/a/d;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "PhoneCashierHttpClient.java"


# direct methods
.method constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method protected createConnectionKeepAliveStrategy()Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    .locals 1

    new-instance v0, Lcom/alipay/android/app/trans/a/f;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/trans/a/f;-><init>(Lcom/alipay/android/app/trans/a/d;)V

    return-object v0
.end method

.method protected createHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 3

    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    const-string/jumbo v1, "http.authscheme-registry"

    invoke-virtual {p0}, Lcom/alipay/android/app/trans/a/d;->getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "http.cookiespec-registry"

    invoke-virtual {p0}, Lcom/alipay/android/app/trans/a/d;->getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "http.cookie-store"

    invoke-virtual {p0}, Lcom/alipay/android/app/trans/a/d;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "http.auth.credentials-provider"

    invoke-virtual {p0}, Lcom/alipay/android/app/trans/a/d;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .locals 1

    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    return-object v0
.end method

.method protected createRedirectHandler()Lorg/apache/http/client/RedirectHandler;
    .locals 1

    new-instance v0, Lcom/alipay/android/app/trans/a/e;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/trans/a/e;-><init>(Lcom/alipay/android/app/trans/a/d;)V

    return-object v0
.end method
