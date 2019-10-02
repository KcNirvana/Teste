.class public Lcom/hungama/movies/sdk/d/a;
.super Ljava/lang/Object;
.source "CommunicationManager.java"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field b:Lcom/hungama/movies/sdk/d/b;

.field c:Lcom/hungama/movies/sdk/b/a;

.field d:I

.field e:Landroid/os/Handler;

.field f:Lcom/hungama/movies/sdk/Utils/WebServiceError;

.field g:Landroid/os/Handler;

.field private h:Landroid/content/Context;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hungama/movies/sdk/d/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/hungama/movies/sdk/d/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/hungama/movies/sdk/d/a;->e:Landroid/os/Handler;

    new-instance v0, Lcom/hungama/movies/sdk/d/a$3;

    invoke-direct {v0, p0}, Lcom/hungama/movies/sdk/d/a$3;-><init>(Lcom/hungama/movies/sdk/d/a;)V

    iput-object v0, p0, Lcom/hungama/movies/sdk/d/a;->g:Landroid/os/Handler;

    iput-object p1, p0, Lcom/hungama/movies/sdk/d/a;->h:Landroid/content/Context;

    iput-object p3, p0, Lcom/hungama/movies/sdk/d/a;->b:Lcom/hungama/movies/sdk/d/b;

    iput-object p2, p0, Lcom/hungama/movies/sdk/d/a;->i:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/hungama/movies/sdk/R$string;->PLAYABLE_URL:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "@CONTENT_ID@"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method static synthetic a(Lcom/hungama/movies/sdk/d/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hungama/movies/sdk/d/a;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/hungama/movies/sdk/d/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/hungama/movies/sdk/d/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1, p0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, ""

    const-string v1, "not tls ssl socket factory available"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ErrorMsg"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p0, p2}, Lcom/hungama/movies/sdk/d/a;->a(Ljava/lang/Throwable;)Lcom/hungama/movies/sdk/Utils/WebServiceError;

    move-result-object p1

    iput-object p1, p0, Lcom/hungama/movies/sdk/d/a;->f:Lcom/hungama/movies/sdk/Utils/WebServiceError;

    iget-object p1, p0, Lcom/hungama/movies/sdk/d/a;->g:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static c()Ljavax/net/ssl/X509TrustManager;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Ljava/security/KeyStore;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, ""

    const-string v3, "not trust manager available"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static d()Lokhttp3/OkHttpClient$Builder;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/hungama/movies/sdk/d/a;->c()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-static {v0}, Lcom/hungama/movies/sdk/d/a;->a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    new-instance v0, Lcom/hungama/movies/sdk/d/a$4;

    invoke-direct {v0}, Lcom/hungama/movies/sdk/d/a$4;-><init>()V

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaEventHungamaObject :::: Request :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hungama/movies/sdk/a/d;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/hungama/movies/sdk/d/a;->d()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance p0, Lokhttp3/Request$Builder;

    invoke-direct {p0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p0, v1}, Lokhttp3/Request$Builder;->url(Ljava/net/URL;)Lokhttp3/Request$Builder;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaEventHungamaObject :::: Response :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/hungama/movies/sdk/a/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/hungama/movies/sdk/a/d;->a(Ljava/lang/Exception;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private e()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/d/a;->h:Landroid/content/Context;

    return-object v0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-direct {p0}, Lcom/hungama/movies/sdk/d/a;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/hungama/movies/sdk/b/a;->a(Landroid/content/Context;)Lcom/hungama/movies/sdk/b/a;

    move-result-object v1

    iput-object v1, p0, Lcom/hungama/movies/sdk/d/a;->c:Lcom/hungama/movies/sdk/b/a;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "app-id"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "app-id"

    invoke-virtual {p0, p1}, Lcom/hungama/movies/sdk/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/hungama/movies/sdk/d/a;->h:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/hungama/movies/sdk/R$string;->app_id:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hungama/movies/sdk/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p1, "&"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "user_id"

    invoke-virtual {p0, p1}, Lcom/hungama/movies/sdk/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/hungama/movies/sdk/d/a;->c:Lcom/hungama/movies/sdk/b/a;

    invoke-virtual {p1}, Lcom/hungama/movies/sdk/b/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hungama/movies/sdk/a/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "user id"

    iget-object v1, p0, Lcom/hungama/movies/sdk/d/a;->c:Lcom/hungama/movies/sdk/b/a;

    invoke-virtual {v1}, Lcom/hungama/movies/sdk/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "message"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private g(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/d/a;->e:Landroid/os/Handler;

    new-instance v1, Lcom/hungama/movies/sdk/d/a$2;

    invoke-direct {v1, p0, p1}, Lcom/hungama/movies/sdk/d/a$2;-><init>(Lcom/hungama/movies/sdk/d/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private h(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "status"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Lcom/hungama/movies/sdk/Utils/WebServiceError;
    .locals 2

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_3

    instance-of v1, p1, Ljava/net/MalformedURLException;

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    instance-of v1, p1, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    new-instance v1, Lcom/hungama/movies/sdk/Utils/WebServiceError;

    invoke-direct {v1, p1, v0}, Lcom/hungama/movies/sdk/Utils/WebServiceError;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/hungama/movies/sdk/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hungama/movies/sdk/d/a$1;

    invoke-direct {v1, p0}, Lcom/hungama/movies/sdk/d/a$1;-><init>(Lcom/hungama/movies/sdk/d/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hungama/movies/sdk/d/a;->h:Landroid/content/Context;

    iput-object v0, p0, Lcom/hungama/movies/sdk/d/a;->b:Lcom/hungama/movies/sdk/d/b;

    iput-object v0, p0, Lcom/hungama/movies/sdk/d/a;->i:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "Hungama Debug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call API:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hungama/movies/sdk/d/a;->d()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    const-string v3, "header user_id"

    iget-object v4, p0, Lcom/hungama/movies/sdk/d/a;->c:Lcom/hungama/movies/sdk/b/a;

    invoke-virtual {v4}, Lcom/hungama/movies/sdk/b/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hungama/movies/sdk/a/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "user_id"

    iget-object v4, p0, Lcom/hungama/movies/sdk/d/a;->c:Lcom/hungama/movies/sdk/b/a;

    invoke-virtual {v4}, Lcom/hungama/movies/sdk/b/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hungama/movies/sdk/a/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v3, "X-Device-Info"

    invoke-direct {p0}, Lcom/hungama/movies/sdk/d/a;->e()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/hungama/movies/sdk/a/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v3, "header X-Device-Info"

    invoke-direct {p0}, Lcom/hungama/movies/sdk/d/a;->e()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/hungama/movies/sdk/a/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "header get url"

    invoke-virtual {p0, p1}, Lcom/hungama/movies/sdk/d/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/hungama/movies/sdk/d/a;->h:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/hungama/movies/sdk/R$string;->product_key:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/hungama/movies/sdk/d/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hungama/movies/sdk/a/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "header Authorization"

    invoke-static {v4, v3}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Authorization"

    invoke-virtual {v2, v4, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_0
    new-instance v3, Lokhttp3/Cache;

    invoke-direct {p0}, Lcom/hungama/movies/sdk/d/a;->e()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-wide/32 v5, 0x1400000

    invoke-direct {v3, v4, v5, v6}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    invoke-virtual {v1, v3}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lokhttp3/Request$Builder;->url(Ljava/net/URL;)Lokhttp3/Request$Builder;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v2

    iput v2, p0, Lcom/hungama/movies/sdk/d/a;->d:I

    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    const-string v4, "apiLink**"

    invoke-static {v4, p1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p1, v2}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "responseCode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/hungama/movies/sdk/d/a;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/UnknownServiceException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/UnknownServiceException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-virtual {v3}, Lokhttp3/Cache;->isClosed()Z

    move-result p1
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/UnknownServiceException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    if-nez p1, :cond_1

    :try_start_3
    invoke-virtual {v3}, Lokhttp3/Cache;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/net/UnknownServiceException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    iget p1, p0, Lcom/hungama/movies/sdk/d/a;->d:I

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_3

    invoke-direct {p0, v2}, Lcom/hungama/movies/sdk/d/a;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, v2}, Lcom/hungama/movies/sdk/d/a;->g(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    invoke-direct {p0}, Lcom/hungama/movies/sdk/d/a;->e()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/hungama/movies/sdk/d/a;->e()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/hungama/movies/sdk/R$string;->error_no_content:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/hungama/movies/sdk/d/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_3

    :cond_3
    iget p1, p0, Lcom/hungama/movies/sdk/d/a;->d:I

    const/16 v1, 0x130

    if-eq p1, v1, :cond_9

    iget p1, p0, Lcom/hungama/movies/sdk/d/a;->d:I

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    iget p1, p0, Lcom/hungama/movies/sdk/d/a;->d:I

    const/16 v1, 0x194

    if-ne p1, v1, :cond_7

    invoke-direct {p0}, Lcom/hungama/movies/sdk/d/a;->e()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    invoke-direct {p0, v2}, Lcom/hungama/movies/sdk/d/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0, p1, v0}, Lcom/hungama/movies/sdk/d/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_3

    :cond_6
    invoke-direct {p0}, Lcom/hungama/movies/sdk/d/a;->e()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/hungama/movies/sdk/R$string;->error_msg_server_error:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/hungama/movies/sdk/d/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_3

    :cond_7
    invoke-direct {p0}, Lcom/hungama/movies/sdk/d/a;->e()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/hungama/movies/sdk/a/c;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-direct {p0}, Lcom/hungama/movies/sdk/d/a;->e()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/hungama/movies/sdk/d/a;->e()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/hungama/movies/sdk/R$string;->error_msg_no_network:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/hungama/movies/sdk/d/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_3

    :cond_8
    invoke-direct {p0}, Lcom/hungama/movies/sdk/d/a;->e()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/hungama/movies/sdk/d/a;->e()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/hungama/movies/sdk/R$string;->error_msg_server_error:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/hungama/movies/sdk/d/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_3

    :cond_9
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "null"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    invoke-direct {p0, v2}, Lcom/hungama/movies/sdk/d/a;->g(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/net/UnknownServiceException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Error;->printStackTrace()V

    invoke-direct {p0}, Lcom/hungama/movies/sdk/d/a;->e()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/hungama/movies/sdk/d/a;->e()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/hungama/movies/sdk/R$string;->error_msg_server_error:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/hungama/movies/sdk/d/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_3

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/hungama/movies/sdk/d/a;->e()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/hungama/movies/sdk/d/a;->e()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/hungama/movies/sdk/R$string;->error_msg_no_network:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/hungama/movies/sdk/d/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_3

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    invoke-direct {p0}, Lcom/hungama/movies/sdk/d/a;->e()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/hungama/movies/sdk/d/a;->e()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/hungama/movies/sdk/R$string;->error_msg_server_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/hungama/movies/sdk/d/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/net/UnknownServiceException;->printStackTrace()V

    invoke-direct {p0}, Lcom/hungama/movies/sdk/d/a;->e()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/hungama/movies/sdk/d/a;->e()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/hungama/movies/sdk/R$string;->error_msg_no_network:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/hungama/movies/sdk/d/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    :catch_6
    move-exception p1

    invoke-virtual {p1}, Ljava/net/UnknownHostException;->printStackTrace()V

    invoke-direct {p0}, Lcom/hungama/movies/sdk/d/a;->e()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/hungama/movies/sdk/d/a;->e()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/hungama/movies/sdk/R$string;->error_msg_no_network:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/hungama/movies/sdk/d/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    :catch_7
    move-exception p1

    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    invoke-direct {p0}, Lcom/hungama/movies/sdk/d/a;->e()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/hungama/movies/sdk/d/a;->e()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/hungama/movies/sdk/R$string;->error_msg_socket_timeout:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/hungama/movies/sdk/d/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    :catch_8
    move-exception p1

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    invoke-direct {p0}, Lcom/hungama/movies/sdk/d/a;->e()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/hungama/movies/sdk/d/a;->e()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/hungama/movies/sdk/R$string;->error_msg_invalid_url:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/hungama/movies/sdk/d/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method
