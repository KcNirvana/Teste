.class public Lcom/alipay/mobile/common/http/d/a;
.super Lcom/alipay/mobile/common/http/d/b;
.source "HttpRequest.java"


# instance fields
.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/io/InputStream;

.field private j:Ljava/net/HttpURLConnection;

.field private k:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/http/g;Ljava/lang/reflect/Type;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/http/d/b;-><init>(Lcom/alipay/mobile/common/http/g;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->g:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/alipay/mobile/common/http/d/a;->h:Z

    iput-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->i:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    iput v1, p0, Lcom/alipay/mobile/common/http/d/a;->k:I

    return-void
.end method

.method private static a(Ljava/util/Date;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "EEE, dd MMM y HH:mm:ss \'GMT\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string/jumbo v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;J)J
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p2

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected a(Lcom/alipay/mobile/common/http/g;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Lcom/alipay/mobile/common/http/g;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/alipay/mobile/common/http/g;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/common/a/e;

    iget-object v3, v0, Lcom/alipay/mobile/common/common/a/e;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/common/a/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobile/common/http/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alipay/mobile/common/http/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x26

    if-ne v0, v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x3f

    if-ne v0, v2, :cond_5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/16 v6, 0x13

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-boolean v2, p0, Lcom/alipay/mobile/common/http/d/a;->h:Z

    iput v2, p0, Lcom/alipay/mobile/common/http/d/a;->k:I

    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/alipay/mobile/common/http/d/a;->a:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/http/d/a;->b:Lcom/alipay/mobile/common/http/g;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/http/g;->k()Ljava/net/Proxy;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v3}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v6, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    const-string/jumbo v3, "Connection"

    const-string/jumbo v4, "close"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    iget-object v3, p0, Lcom/alipay/mobile/common/http/d/a;->b:Lcom/alipay/mobile/common/http/g;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/http/g;->m()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    iget-object v3, p0, Lcom/alipay/mobile/common/http/d/a;->b:Lcom/alipay/mobile/common/http/g;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/http/g;->l()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v3, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->b:Lcom/alipay/mobile/common/http/g;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/http/g;->y()Lcom/alipay/mobile/common/http/a/e;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    instance-of v0, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->b:Lcom/alipay/mobile/common/http/g;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/http/g;->j()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->b:Lcom/alipay/mobile/common/http/g;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/http/g;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->b:Lcom/alipay/mobile/common/http/g;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/http/g;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/http/a$a;

    iget-object v3, v0, Lcom/alipay/mobile/common/http/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/http/a$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v0, v0, Lcom/alipay/mobile/common/http/a$a;->c:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->b:Lcom/alipay/mobile/common/http/g;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/http/g;->b()Lcom/alipay/mobile/common/http/HttpMethod;

    move-result-object v2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/http/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-static {v2}, Lcom/alipay/mobile/common/http/HttpMethod;->permitsRequestBody(Lcom/alipay/mobile/common/http/HttpMethod;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->b:Lcom/alipay/mobile/common/http/g;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/http/g;->e()Lcom/alipay/mobile/common/http/b/a;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/alipay/mobile/common/http/b/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    const-string/jumbo v4, "Content-Type"

    invoke-virtual {v3, v4, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-interface {v0}, Lcom/alipay/mobile/common/http/b/a;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_c

    :cond_9
    iget-object v4, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    const/high16 v5, 0x40000

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    :goto_4
    iget-object v4, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    const-string/jumbo v5, "Content-Length"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v2, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/http/b/a;->a(Ljava/io/OutputStream;)V

    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/http/d/a;->k:I

    iget v0, p0, Lcom/alipay/mobile/common/http/d/a;->k:I

    const/16 v2, 0xcc

    if-eq v0, v2, :cond_b

    iget v0, p0, Lcom/alipay/mobile/common/http/d/a;->k:I

    const/16 v2, 0xcd

    if-ne v0, v2, :cond_e

    :cond_b
    new-instance v0, Lcom/alipay/mobile/common/ex/HttpException;

    iget v1, p0, Lcom/alipay/mobile/common/http/d/a;->k:I

    invoke-virtual {p0}, Lcom/alipay/mobile/common/http/d/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/ex/HttpException;-><init>(ILjava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    :try_start_1
    const-class v3, Ljava/net/HttpURLConnection;

    const-string/jumbo v4, "method"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v4, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/http/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v1

    throw v0

    :cond_c
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-gez v4, :cond_d

    iget-object v4, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    long-to-int v5, v2

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    goto :goto_4

    :cond_d
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_9

    iget-object v4, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v2, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    goto :goto_4

    :cond_e
    iget v0, p0, Lcom/alipay/mobile/common/http/d/a;->k:I

    const/16 v2, 0x12c

    if-lt v0, v2, :cond_f

    new-instance v0, Lcom/alipay/mobile/common/ex/HttpException;

    iget v1, p0, Lcom/alipay/mobile/common/http/d/a;->k:I

    invoke-virtual {p0}, Lcom/alipay/mobile/common/http/d/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/ex/HttpException;-><init>(ILjava/lang/String;)V

    :try_start_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/http/d/a;->h()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/http/d/a;->b:Lcom/alipay/mobile/common/http/g;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/http/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/common/a/d;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ex/HttpException;->setResult(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_5
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "HttpRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ex/HttpException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/common/http/d/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_f
    iput-boolean v1, p0, Lcom/alipay/mobile/common/http/d/a;->h:Z

    return-void

    :catch_2
    move-exception v1

    goto :goto_5
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/http/d/a;->h:Z

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->i:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->i:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/alipay/mobile/common/common/a/d;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->i:Ljava/io/InputStream;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->b:Lcom/alipay/mobile/common/http/g;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/http/g;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->b:Lcom/alipay/mobile/common/http/g;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/http/g;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->g:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/http/d/a;->h:Z

    invoke-super {p0}, Lcom/alipay/mobile/common/http/d/b;->e()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/http/d/a;->h:Z

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->b:Lcom/alipay/mobile/common/http/g;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/http/g;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/cache/c;->a(Ljava/lang/String;)Lcom/alipay/mobile/common/cache/c;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/http/d/a;->b:Lcom/alipay/mobile/common/http/g;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/http/g;->o()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/common/cache/c;->a(J)Lcom/alipay/mobile/common/cache/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/http/d/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/cache/c;->b(Ljava/lang/String;)Lcom/alipay/mobile/common/cache/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/common/http/d/a;->b:Lcom/alipay/mobile/common/http/g;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/http/g;->b()Lcom/alipay/mobile/common/http/HttpMethod;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/http/HttpMethod;->permitsCache(Lcom/alipay/mobile/common/http/HttpMethod;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/a;->getLastModify()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/common/http/d/a;->b:Lcom/alipay/mobile/common/http/g;

    const-string/jumbo v3, "If-Modified-Since"

    invoke-static {v1}, Lcom/alipay/mobile/common/http/d/a;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/alipay/mobile/common/http/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/a;->getEtag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/common/http/d/a;->b:Lcom/alipay/mobile/common/http/g;

    const-string/jumbo v3, "If-None-Match"

    invoke-virtual {v2, v3, v1}, Lcom/alipay/mobile/common/http/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/http/d/a;->c:Lcom/alipay/mobile/common/http/c/b;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/http/c/b;->b(Lcom/alipay/mobile/common/cache/a;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->b:Lcom/alipay/mobile/common/http/g;

    const-string/jumbo v1, "If-Modified-Since"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/http/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->b:Lcom/alipay/mobile/common/http/g;

    const-string/jumbo v1, "If-None-Match"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/http/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public h()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->i:Ljava/io/InputStream;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->i:Ljava/io/InputStream;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->i:Ljava/io/InputStream;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public i()J
    .locals 6

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    :goto_0
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/http/d/a;->h()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    int-to-long v0, v0

    :cond_0
    :goto_1
    return-wide v0

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v3

    const-string/jumbo v4, "HttpRequest"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/http/d/a;->h()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    int-to-long v0, v0

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method public j()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/common/http/d/a;->k:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/http/d/a;->h()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc8

    goto :goto_0

    :cond_1
    const/16 v0, 0x194

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/http/d/a;->b:Lcom/alipay/mobile/common/http/g;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/http/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()J
    .locals 8

    const-wide/16 v0, -0x1

    const-wide/16 v6, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    const-string/jumbo v3, "Cache-Control"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/StringTokenizer;

    const-string/jumbo v4, ","

    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "max-age"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_3

    add-int/lit8 v3, v3, 0x1

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v4, v2, v6

    if-lez v4, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    :cond_3
    :goto_1
    cmp-long v2, v0, v6

    if-gtz v2, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getExpiration()J

    move-result-wide v0

    :cond_4
    cmp-long v2, v0, v6

    if-gtz v2, :cond_5

    iget-object v2, p0, Lcom/alipay/mobile/common/http/d/a;->b:Lcom/alipay/mobile/common/http/g;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/http/g;->p()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alipay/mobile/common/http/d/a;->b:Lcom/alipay/mobile/common/http/g;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/http/g;->p()J

    move-result-wide v2

    add-long/2addr v0, v2

    :cond_5
    cmp-long v2, v0, v6

    if-gtz v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v3

    const-string/jumbo v4, "HttpRequest"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public m()J
    .locals 4

    const-string/jumbo v0, "Last-Modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/alipay/mobile/common/http/d/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public n()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/a;->j:Ljava/net/HttpURLConnection;

    const-string/jumbo v1, "ETag"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
