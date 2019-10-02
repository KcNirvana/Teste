.class final Lcom/ooyala/adtech/HTTPRequest$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/adtech/HTTPRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/net/URL;

.field b:F

.field c:Lcom/ooyala/adtech/HTTPRequest$b;

.field d:Lcom/ooyala/adtech/Error;

.field e:Lcom/ooyala/adtech/HTTPRequest$LogItem;


# direct methods
.method constructor <init>(Ljava/net/URL;FLcom/ooyala/adtech/HTTPRequest$b;Lcom/ooyala/adtech/HTTPRequest$LogItem;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/ooyala/adtech/HTTPRequest$a;->a:Ljava/net/URL;

    const p1, 0x3e4ccccd    # 0.2f

    cmpg-float v0, p2, p1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput p1, p0, Lcom/ooyala/adtech/HTTPRequest$a;->b:F

    iput-object p3, p0, Lcom/ooyala/adtech/HTTPRequest$a;->c:Lcom/ooyala/adtech/HTTPRequest$b;

    iput-object p4, p0, Lcom/ooyala/adtech/HTTPRequest$a;->e:Lcom/ooyala/adtech/HTTPRequest$LogItem;

    return-void
.end method

.method private varargs a()Ljava/lang/String;
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ooyala/adtech/HTTPRequest$a;->a:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    iget v4, p0, Lcom/ooyala/adtech/HTTPRequest$a;->b:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/ooyala/adtech/HTTPRequest$a;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iget v6, p0, Lcom/ooyala/adtech/HTTPRequest$a;->b:F

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float v6, v6, v7

    float-to-int v6, v6

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v6, p0, Lcom/ooyala/adtech/HTTPRequest$a;->b:F

    mul-float v6, v6, v7

    float-to-int v6, v6

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {p0}, Lcom/ooyala/adtech/HTTPRequest$a;->isCancelled()Z

    move-result v6
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v6, :cond_0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v7, p0, Lcom/ooyala/adtech/HTTPRequest$a;->e:Lcom/ooyala/adtech/HTTPRequest$LogItem;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/ooyala/adtech/HTTPRequest$a;->e:Lcom/ooyala/adtech/HTTPRequest$LogItem;

    iput v6, v7, Lcom/ooyala/adtech/HTTPRequest$LogItem;->statusCode:I

    iget-object v7, p0, Lcom/ooyala/adtech/HTTPRequest$a;->e:Lcom/ooyala/adtech/HTTPRequest$LogItem;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v8

    iput-object v8, v7, Lcom/ooyala/adtech/HTTPRequest$LogItem;->headerFields:Ljava/util/Map;

    iget-object v7, p0, Lcom/ooyala/adtech/HTTPRequest$a;->e:Lcom/ooyala/adtech/HTTPRequest$LogItem;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    iput v8, v7, Lcom/ooyala/adtech/HTTPRequest$LogItem;->contentLength:I

    iget-object v7, p0, Lcom/ooyala/adtech/HTTPRequest$a;->e:Lcom/ooyala/adtech/HTTPRequest$LogItem;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    sub-long/2addr v8, v4

    iput-wide v8, v7, Lcom/ooyala/adtech/HTTPRequest$LogItem;->time:J

    :cond_1
    const/16 v7, 0xc8

    if-ne v6, v7, :cond_3

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v6}, Lcom/ooyala/adtech/HTTPRequest$a;->a(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/ooyala/adtech/HTTPRequest$a;->e:Lcom/ooyala/adtech/HTTPRequest$LogItem;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/ooyala/adtech/HTTPRequest$a;->e:Lcom/ooyala/adtech/HTTPRequest$LogItem;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    sub-long/2addr v7, v4

    iput-wide v7, v6, Lcom/ooyala/adtech/HTTPRequest$LogItem;->time:J

    :cond_2
    return-object v0

    :cond_3
    if-lez v6, :cond_4

    move v0, v6

    goto :goto_0

    :cond_4
    sget v0, Lcom/ooyala/pulse/Error$Request;->UNKNOWN:I

    :goto_0
    new-instance v4, Lcom/ooyala/adtech/Error;

    sget-object v5, Lcom/ooyala/pulse/Error$Domain;->REQUEST:Ljava/lang/String;

    const-string v7, "Server responded with an unexpected status code: %d"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v0, v6}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v4, p0, Lcom/ooyala/adtech/HTTPRequest$a;->d:Lcom/ooyala/adtech/Error;

    goto :goto_1

    :catch_0
    move-exception v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    new-instance v4, Lcom/ooyala/adtech/Error;

    sget-object v5, Lcom/ooyala/pulse/Error$Domain;->REQUEST:Ljava/lang/String;

    sget v6, Lcom/ooyala/pulse/Error$Request;->REQUEST_FAILED:I

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v6, v0}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v4, p0, Lcom/ooyala/adtech/HTTPRequest$a;->d:Lcom/ooyala/adtech/Error;
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/ooyala/adtech/HTTPRequest$a;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "Error during request: %s"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    new-instance v2, Lcom/ooyala/adtech/Error;

    sget-object v3, Lcom/ooyala/pulse/Error$Domain;->REQUEST:Ljava/lang/String;

    sget v4, Lcom/ooyala/pulse/Error$Request;->UNKNOWN:I

    invoke-direct {v2, v3, v4, v0}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v2, p0, Lcom/ooyala/adtech/HTTPRequest$a;->d:Lcom/ooyala/adtech/Error;

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {p0}, Lcom/ooyala/adtech/HTTPRequest$a;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    new-instance v0, Lcom/ooyala/adtech/Error;

    sget-object v2, Lcom/ooyala/pulse/Error$Domain;->REQUEST:Ljava/lang/String;

    sget v3, Lcom/ooyala/pulse/Error$Request;->TIMED_OUT:I

    const-string v4, "The request took too long to complete."

    invoke-direct {v0, v2, v3, v4}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/ooyala/adtech/HTTPRequest$a;->d:Lcom/ooyala/adtech/Error;

    :cond_5
    :goto_1
    return-object v1
.end method

.method private a(Ljava/io/Reader;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 p1, 0x1000

    :try_start_0
    new-array v2, p1, [C

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Ljava/io/BufferedReader;->read([CII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {p0}, Lcom/ooyala/adtech/HTTPRequest$a;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v2, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Request was cancelled."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw p1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/ooyala/adtech/HTTPRequest$a;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/ooyala/adtech/HTTPRequest$a;->e:Lcom/ooyala/adtech/HTTPRequest$LogItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/adtech/HTTPRequest$a;->e:Lcom/ooyala/adtech/HTTPRequest$LogItem;

    iget-object v1, p0, Lcom/ooyala/adtech/HTTPRequest$a;->d:Lcom/ooyala/adtech/Error;

    iput-object v1, v0, Lcom/ooyala/adtech/HTTPRequest$LogItem;->error:Lcom/ooyala/adtech/Error;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/ooyala/adtech/HTTPRequest$a;->c:Lcom/ooyala/adtech/HTTPRequest$b;

    invoke-interface {v0, p1}, Lcom/ooyala/adtech/HTTPRequest$b;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/ooyala/adtech/HTTPRequest$a;->c:Lcom/ooyala/adtech/HTTPRequest$b;

    iget-object v0, p0, Lcom/ooyala/adtech/HTTPRequest$a;->d:Lcom/ooyala/adtech/Error;

    invoke-interface {p1, v0}, Lcom/ooyala/adtech/HTTPRequest$b;->a(Lcom/ooyala/adtech/Error;)V

    return-void
.end method
