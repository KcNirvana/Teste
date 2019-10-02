.class Lcom/hungama/apps/ha/e/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hungama/apps/ha/e/g;->a:Z

    return-void
.end method

.method private a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HTTP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HTTPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v0, Lcom/hungama/apps/ha/e/g$2;

    invoke-direct {v0, p0}, Lcom/hungama/apps/ha/e/g$2;-><init>(Lcom/hungama/apps/ha/e/g;)V

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :goto_0
    return-object p1

    :cond_1
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Only http and https protocols are supported."

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a()V
    .locals 1

    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 7

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "http"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p0, "android.net.http.HttpResponseCache"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v1, "install"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/io/File;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    const-wide/32 v3, 0x1400000

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-virtual {p0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public static b()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcom/hungama/apps/ha/e/g$1;

    invoke-direct {v1}, Lcom/hungama/apps/ha/e/g$1;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    :try_start_0
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method a(Lcom/hungama/apps/ha/e/a;)Lcom/hungama/apps/ha/e/b;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hungama/apps/ha/e/h;
        }
    .end annotation

    invoke-interface {p1}, Lcom/hungama/apps/ha/e/a;->g()Lcom/hungama/apps/ha/e/b;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-interface {p1}, Lcom/hungama/apps/ha/e/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/hungama/apps/ha/e/g;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v3
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lcom/hungama/apps/ha/e/h; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1}, Lcom/hungama/apps/ha/e/a;->c()Lcom/hungama/apps/ha/e/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hungama/apps/ha/e/i;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/hungama/apps/ha/e/a;->e()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 v4, 0x7530

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-interface {p1}, Lcom/hungama/apps/ha/e/a;->d()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/hungama/apps/ha/e/a;->c()Lcom/hungama/apps/ha/e/i;

    move-result-object v4

    sget-object v5, Lcom/hungama/apps/ha/e/i;->b:Lcom/hungama/apps/ha/e/i;

    if-eq v4, v5, :cond_1

    invoke-interface {p1}, Lcom/hungama/apps/ha/e/a;->c()Lcom/hungama/apps/ha/e/i;

    move-result-object v4

    sget-object v5, Lcom/hungama/apps/ha/e/i;->e:Lcom/hungama/apps/ha/e/i;

    if-ne v4, v5, :cond_2

    :cond_1
    invoke-interface {p1}, Lcom/hungama/apps/ha/e/a;->f()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    const-string v7, "UTF-8"

    invoke-direct {v6, v4, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v5, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const-string v4, ""

    const/16 v5, 0xc8

    if-ne p1, v5, :cond_5

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/hungama/apps/ha/e/g;->a:Z

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/hungama/apps/ha/e/h;

    const-string v0, "User forcefully ended."

    sget v4, Lcom/hungama/apps/ha/e/h;->h:I

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p1, v0, v4, v5, v6}, Lcom/hungama/apps/ha/e/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    throw p1

    :cond_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_5
    if-eqz v0, :cond_8

    invoke-interface {v0, p1, v4}, Lcom/hungama/apps/ha/e/b;->a(ILjava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/hungama/apps/ha/e/h; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_7

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    return-object v0

    :cond_7
    :try_start_2
    new-instance v0, Lcom/hungama/apps/ha/e/h;

    const-string v5, "Unable to push"

    sget v6, Lcom/hungama/apps/ha/e/h;->j:I

    invoke-direct {v0, v5, v6, p1, v4}, Lcom/hungama/apps/ha/e/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Lcom/hungama/apps/ha/e/h;

    const-string v5, "Response processor cannot be null"

    sget v6, Lcom/hungama/apps/ha/e/h;->k:I

    invoke-direct {v0, v5, v6, p1, v4}, Lcom/hungama/apps/ha/e/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    throw v0

    :cond_9
    new-instance p1, Lcom/hungama/apps/ha/e/h;

    const-string v0, "Payload cannot be null."

    sget v4, Lcom/hungama/apps/ha/e/h;->g:I

    invoke-direct {p1, v0, v4, v1, v2}, Lcom/hungama/apps/ha/e/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/hungama/apps/ha/e/h; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v2, v3

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_4

    :catch_3
    move-exception p1

    goto :goto_5

    :catch_4
    move-exception p1

    goto :goto_6

    :catch_5
    move-exception p1

    goto :goto_7

    :catch_6
    move-exception p1

    goto :goto_8

    :catchall_0
    move-exception p1

    move-object v3, v2

    goto :goto_9

    :catch_7
    move-exception p1

    move-object v3, v2

    :goto_2
    :try_start_3
    new-instance v0, Lcom/hungama/apps/ha/e/h;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget v4, Lcom/hungama/apps/ha/e/h;->f:I

    invoke-direct {v0, p1, v4, v1, v2}, Lcom/hungama/apps/ha/e/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_8
    move-exception p1

    :goto_3
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_9
    move-exception p1

    move-object v3, v2

    :goto_4
    :try_start_5
    new-instance v0, Lcom/hungama/apps/ha/e/h;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget v4, Lcom/hungama/apps/ha/e/h;->b:I

    invoke-direct {v0, p1, v4, v1, v2}, Lcom/hungama/apps/ha/e/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    throw v0

    :catch_a
    move-exception p1

    move-object v3, v2

    :goto_5
    new-instance v0, Lcom/hungama/apps/ha/e/h;

    invoke-virtual {p1}, Ljava/io/EOFException;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget v4, Lcom/hungama/apps/ha/e/h;->i:I

    invoke-direct {v0, p1, v4, v1, v2}, Lcom/hungama/apps/ha/e/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    throw v0

    :catch_b
    move-exception p1

    move-object v3, v2

    :goto_6
    new-instance v0, Lcom/hungama/apps/ha/e/h;

    invoke-virtual {p1}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget v4, Lcom/hungama/apps/ha/e/h;->c:I

    invoke-direct {v0, p1, v4, v1, v2}, Lcom/hungama/apps/ha/e/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    throw v0

    :catch_c
    move-exception p1

    move-object v3, v2

    :goto_7
    new-instance v0, Lcom/hungama/apps/ha/e/h;

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget v4, Lcom/hungama/apps/ha/e/h;->d:I

    invoke-direct {v0, p1, v4, v1, v2}, Lcom/hungama/apps/ha/e/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    throw v0

    :catch_d
    move-exception p1

    move-object v3, v2

    :goto_8
    new-instance v0, Lcom/hungama/apps/ha/e/h;

    invoke-virtual {p1}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget v4, Lcom/hungama/apps/ha/e/h;->e:I

    invoke-direct {v0, p1, v4, v1, v2}, Lcom/hungama/apps/ha/e/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    :goto_9
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    throw p1
.end method

.method c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hungama/apps/ha/e/g;->a:Z

    return-void
.end method

.method d()V
    .locals 0

    return-void
.end method
