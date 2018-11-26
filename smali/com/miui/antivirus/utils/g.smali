.class public Lcom/miui/antivirus/utils/g;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aoo:Ljava/lang/String;

.field protected aop:Lcom/miui/antivirus/utils/h;

.field private aoq:[B

.field protected aor:Lorg/json/JSONArray;

.field protected aos:Ljava/net/URL;

.field protected aot:Z

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/antivirus/utils/g;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/antivirus/utils/g;->auK(Ljava/net/URL;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "PaySafetyConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "URL error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private static auG(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    invoke-static {p2, p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static auH(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/StringBuilder;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method private auJ(I)Lcom/miui/antivirus/utils/Connection$NetworkError;
    .locals 3

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/miui/antivirus/utils/Connection$NetworkError;->aou:Lcom/miui/antivirus/utils/Connection$NetworkError;

    return-object v0

    :cond_0
    const-string/jumbo v0, "PaySafetyConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Network Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/antivirus/utils/Connection$NetworkError;->aoz:Lcom/miui/antivirus/utils/Connection$NetworkError;

    return-object v0
.end method

.method private auK(Ljava/net/URL;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/antivirus/utils/g;->aot:Z

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/utils/g;->auI(Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/miui/antivirus/utils/g;->aos:Ljava/net/URL;

    :cond_0
    return-void
.end method

.method private auL(Ljava/lang/String;[BZLcom/miui/antivirus/utils/i;)Lcom/miui/antivirus/utils/Connection$NetworkError;
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/miui/applicationlock/utils/h;->aeL([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-boolean v1, Lcom/miui/antivirus/utils/e;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "PaySafetyConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hosted connection url: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/16 v2, 0x2710

    :try_start_2
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v2, p0, Lcom/miui/antivirus/utils/g;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/antivirus/utils/m;->auZ(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :goto_1
    if-eqz p3, :cond_6

    const-string/jumbo v2, "GET"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_2
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/miui/antivirus/utils/g;->auM(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    :try_end_3
    .catch Lcom/miui/antivirus/utils/Connection$ConnectionException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    :try_start_4
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    if-nez p3, :cond_3

    if-eqz p2, :cond_3

    array-length v1, p2

    if-lez v1, :cond_3

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/antivirus/utils/g;->auJ(I)Lcom/miui/antivirus/utils/Connection$NetworkError;

    move-result-object v7

    sget-object v2, Lcom/miui/antivirus/utils/Connection$NetworkError;->aou:Lcom/miui/antivirus/utils/Connection$NetworkError;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-ne v7, v2, :cond_e

    if-eqz p4, :cond_b

    :try_start_5
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v8, 0x2000

    invoke-direct {v2, v1, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/16 v1, 0x400

    :try_start_6
    new-array v1, v1, [B

    :goto_3
    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-virtual {v2, v1, v8, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v8

    if-lez v8, :cond_a

    const/4 v9, 0x0

    invoke-virtual {p4, v1, v9, v8}, Lcom/miui/antivirus/utils/i;->write([BII)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_3

    :catch_0
    move-exception v1

    :goto_4
    :try_start_7
    const-string/jumbo v7, "PaySafetyConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Connection Exception for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " : read file stream error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p4}, Lcom/miui/antivirus/utils/i;->reset()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-eqz v2, :cond_4

    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_4
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "PaySafetyConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " URL error :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0x7530

    :try_start_9
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    :catch_2
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    :goto_5
    :try_start_a
    const-string/jumbo v4, "PaySafetyConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Connection Exception for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/antivirus/utils/g;->auQ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    :cond_6
    :try_start_b
    const-string/jumbo v2, "POST"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    if-eqz p2, :cond_7

    array-length v2, p2

    if-lez v2, :cond_7

    const-string/jumbo v2, "Content-Length"

    array-length v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v2, p0, Lcom/miui/antivirus/utils/g;->aoo:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "Content-Type"

    iget-object v4, p0, Lcom/miui/antivirus/utils/g;->aoo:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    throw v0

    :catch_3
    move-exception v2

    :try_start_c
    iget-object v0, v2, Lcom/miui/antivirus/utils/Connection$ConnectionException;->mError:Lcom/miui/antivirus/utils/Connection$NetworkError;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    return-object v0

    :cond_a
    :try_start_d
    invoke-virtual {p4}, Lcom/miui/antivirus/utils/i;->flush()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    if-eqz v2, :cond_b

    :try_start_e
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :cond_b
    :goto_7
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    return-object v7

    :catchall_1
    move-exception v1

    move-object v2, v3

    :goto_8
    if-eqz v2, :cond_d

    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    :cond_d
    throw v1

    :catch_4
    move-exception v1

    move-object v2, v4

    goto/16 :goto_5

    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/antivirus/utils/g;->auQ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v1, v4

    goto :goto_6

    :cond_f
    sget-object v0, Lcom/miui/antivirus/utils/Connection$NetworkError;->aox:Lcom/miui/antivirus/utils/Connection$NetworkError;

    return-object v0

    :catchall_3
    move-exception v0

    move-object v1, v3

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :catch_5
    move-exception v1

    move-object v2, v3

    goto/16 :goto_5

    :catchall_5
    move-exception v1

    goto :goto_8

    :catch_6
    move-exception v1

    move-object v2, v3

    goto/16 :goto_4
.end method

.method static synthetic auR(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/StringBuilder;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/miui/antivirus/utils/g;->auH(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic auS(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/miui/antivirus/utils/g;->auG(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public auE()Lcom/miui/antivirus/utils/Connection$NetworkError;
    .locals 5

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Lcom/miui/antivirus/utils/j;

    invoke-direct {v0, p0, v1}, Lcom/miui/antivirus/utils/j;-><init>(Lcom/miui/antivirus/utils/g;Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/utils/g;->auP(Lcom/miui/antivirus/utils/i;)Lcom/miui/antivirus/utils/Connection$NetworkError;

    move-result-object v0

    :try_start_0
    sget-object v2, Lcom/miui/antivirus/utils/Connection$NetworkError;->aou:Lcom/miui/antivirus/utils/Connection$NetworkError;

    if-ne v0, v2, :cond_0

    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miui/antivirus/utils/g;->aor:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v0

    :cond_0
    :try_start_2
    const-string/jumbo v2, "PaySafetyConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Connection failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "PaySafetyConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "JSON error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/antivirus/utils/Connection$NetworkError;->aoy:Lcom/miui/antivirus/utils/Connection$NetworkError;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    return-object v0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_3
    throw v0

    :catch_3
    move-exception v1

    goto :goto_3
.end method

.method public auF()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/utils/g;->aor:Lorg/json/JSONArray;

    return-object v0
.end method

.method protected auI(Ljava/net/URL;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "http"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "https"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected auM(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 0

    return-object p1
.end method

.method protected auN(Lcom/miui/antivirus/utils/h;)Lcom/miui/antivirus/utils/h;
    .locals 0

    return-object p1
.end method

.method protected auO(Ljava/lang/String;Lcom/miui/antivirus/utils/h;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method protected auP(Lcom/miui/antivirus/utils/i;)Lcom/miui/antivirus/utils/Connection$NetworkError;
    .locals 9

    iget-object v0, p0, Lcom/miui/antivirus/utils/g;->aos:Ljava/net/URL;

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/antivirus/utils/Connection$NetworkError;->aoB:Lcom/miui/antivirus/utils/Connection$NetworkError;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/utils/g;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/antivirus/utils/m;->ava(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/antivirus/utils/Connection$NetworkError;->aox:Lcom/miui/antivirus/utils/Connection$NetworkError;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/miui/antivirus/utils/g;->aop:Lcom/miui/antivirus/utils/h;

    if-nez v0, :cond_2

    new-instance v0, Lcom/miui/antivirus/utils/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/utils/h;-><init>(Lcom/miui/antivirus/utils/g;)V

    iput-object v0, p0, Lcom/miui/antivirus/utils/g;->aop:Lcom/miui/antivirus/utils/h;

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/miui/antivirus/utils/g;->aop:Lcom/miui/antivirus/utils/h;

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/utils/g;->auN(Lcom/miui/antivirus/utils/h;)Lcom/miui/antivirus/utils/h;
    :try_end_0
    .catch Lcom/miui/antivirus/utils/Connection$ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-object v0, p0, Lcom/miui/antivirus/utils/g;->aos:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/miui/antivirus/utils/g;->aot:Z

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/miui/antivirus/utils/h;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/miui/antivirus/utils/g;->aos:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/antivirus/utils/g;->aos:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/miui/antivirus/utils/h;->auU()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    :try_start_1
    invoke-virtual {p0, v0, v1}, Lcom/miui/antivirus/utils/g;->auO(Ljava/lang/String;Lcom/miui/antivirus/utils/h;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/miui/antivirus/utils/Connection$ConnectionException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    sget-boolean v2, Lcom/miui/antivirus/utils/e;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "PaySafetyConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "connection url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-boolean v2, p0, Lcom/miui/antivirus/utils/g;->aot:Z

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/miui/antivirus/utils/g;->aoq:[B

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/miui/antivirus/utils/g;->aoq:[B

    array-length v2, v2

    if-lez v2, :cond_8

    const-string/jumbo v1, "application/octet-stream"

    iput-object v1, p0, Lcom/miui/antivirus/utils/g;->aoo:Ljava/lang/String;

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/miui/antivirus/utils/g;->aoq:[B

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/miui/antivirus/utils/g;->aoq:[B

    array-length v1, v1

    if-nez v1, :cond_9

    :cond_6
    sget-object v0, Lcom/miui/antivirus/utils/Connection$NetworkError;->aow:Lcom/miui/antivirus/utils/Connection$NetworkError;

    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, v0, Lcom/miui/antivirus/utils/Connection$ConnectionException;->mError:Lcom/miui/antivirus/utils/Connection$NetworkError;

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/miui/antivirus/utils/h;->auU()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, v0, Lcom/miui/antivirus/utils/Connection$ConnectionException;->mError:Lcom/miui/antivirus/utils/Connection$NetworkError;

    return-object v0

    :cond_8
    invoke-virtual {v1}, Lcom/miui/antivirus/utils/h;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/miui/antivirus/utils/h;->auU()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, p0, Lcom/miui/antivirus/utils/g;->aoq:[B

    sget-boolean v2, Lcom/miui/antivirus/utils/e;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "PaySafetyConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[post]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/miui/antivirus/utils/g;->aoq:[B

    iget-boolean v4, p0, Lcom/miui/antivirus/utils/g;->aot:Z

    invoke-direct {p0, v0, v1, v4, p1}, Lcom/miui/antivirus/utils/g;->auL(Ljava/lang/String;[BZLcom/miui/antivirus/utils/i;)Lcom/miui/antivirus/utils/Connection$NetworkError;

    move-result-object v1

    sget-boolean v4, Lcom/miui/antivirus/utils/e;->DEBUG:Z

    if-eqz v4, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string/jumbo v6, "PaySafetyConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Time(ms) spent in request: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v2, v4, v2

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-object v1
.end method

.method protected auQ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
