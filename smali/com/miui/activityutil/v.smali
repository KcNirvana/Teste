.class final Lcom/miui/activityutil/v;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field final synthetic a:Lcom/miui/activityutil/s;

.field private b:[Ljava/lang/String;

.field private c:[B

.field private d:Ljava/io/File;

.field private e:Lcom/miui/activityutil/t;

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/activityutil/s;[Ljava/lang/String;Ljava/io/File;Lcom/miui/activityutil/t;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/activityutil/v;->a:Lcom/miui/activityutil/s;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/activityutil/v;->g:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/activityutil/v;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/activityutil/v;->b:[Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/activityutil/v;->d:Ljava/io/File;

    iput-object p4, p0, Lcom/miui/activityutil/v;->e:Lcom/miui/activityutil/t;

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/activityutil/v;->f:J

    return-void
.end method

.method public constructor <init>(Lcom/miui/activityutil/s;[Ljava/lang/String;[BLcom/miui/activityutil/t;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/activityutil/v;->a:Lcom/miui/activityutil/s;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/activityutil/v;->g:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/activityutil/v;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/activityutil/v;->b:[Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/activityutil/v;->c:[B

    iput-object p4, p0, Lcom/miui/activityutil/v;->e:Lcom/miui/activityutil/t;

    array-length v0, p3

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/miui/activityutil/v;->f:J

    return-void
.end method

.method private a([Ljava/lang/String;)Lcom/miui/activityutil/u;
    .locals 14

    const/4 v11, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-instance v6, Lcom/miui/activityutil/u;

    iget-object v2, p0, Lcom/miui/activityutil/v;->a:Lcom/miui/activityutil/s;

    invoke-direct {v6, v2}, Lcom/miui/activityutil/u;-><init>(Lcom/miui/activityutil/s;)V

    array-length v7, p1

    move v5, v0

    :goto_0
    if-ge v5, v7, :cond_4

    aget-object v0, p1, v5

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const v2, 0xc350

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v2, 0xc350

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string/jumbo v2, "POST"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string/jumbo v2, "Content-Type"

    const-string/jumbo v3, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/miui/activityutil/v;->f:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Content-Length"

    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/activityutil/v;->g:Ljava/lang/String;

    const-string/jumbo v3, "pkg"

    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/activityutil/v;->h:Ljava/lang/String;

    const-string/jumbo v3, "ver"

    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "upload_ver"

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    iget-object v2, p0, Lcom/miui/activityutil/v;->d:Ljava/io/File;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/activityutil/v;->c:[B

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v1

    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    iput v4, v6, Lcom/miui/activityutil/u;->a:I

    iget v4, v6, Lcom/miui/activityutil/u;->a:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v8, 0xc8

    if-eq v4, v8, :cond_2

    invoke-static {v2}, Lcom/miui/activityutil/af;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/miui/activityutil/af;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/miui/activityutil/af;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/miui/activityutil/af;->a(Ljava/io/Closeable;)V

    :goto_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_1
    :try_start_3
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/miui/activityutil/v;->d:Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v4, 0x1000

    :try_start_4
    new-array v4, v4, [B

    :goto_2
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    if-eq v8, v11, :cond_0

    const/4 v9, 0x0

    invoke-virtual {v3, v4, v9, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v0, v2

    move-object v4, v1

    move-object v2, v3

    move-object v3, v1

    :goto_3
    const/4 v8, 0x0

    :try_start_5
    iput v8, v6, Lcom/miui/activityutil/u;->a:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    invoke-static {v0}, Lcom/miui/activityutil/af;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/miui/activityutil/af;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/miui/activityutil/af;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/miui/activityutil/af;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :cond_2
    :try_start_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v4

    :try_start_7
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const/16 v8, 0x1000

    :try_start_8
    new-array v8, v8, [B

    :goto_4
    invoke-virtual {v4, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-eq v9, v11, :cond_3

    const/4 v10, 0x0

    invoke-virtual {v0, v8, v10, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_4

    :catch_1
    move-exception v8

    move-object v12, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v12

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/miui/activityutil/u;->b:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    invoke-static {v2}, Lcom/miui/activityutil/af;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/miui/activityutil/af;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/miui/activityutil/af;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/miui/activityutil/af;->a(Ljava/io/Closeable;)V

    :cond_4
    return-object v6

    :catchall_0
    move-exception v0

    move-object v3, v1

    move-object v2, v1

    move-object v4, v1

    :goto_5
    invoke-static {v1}, Lcom/miui/activityutil/af;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/miui/activityutil/af;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/miui/activityutil/af;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/miui/activityutil/af;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v4, v1

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v4, v1

    move-object v12, v1

    move-object v1, v2

    move-object v2, v12

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto :goto_5

    :catchall_4
    move-exception v1

    move-object v12, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v12

    goto :goto_5

    :catchall_5
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    move-object v13, v2

    move-object v2, v3

    move-object v3, v13

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    move-object v4, v1

    move-object v3, v1

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    move-object v3, v1

    goto :goto_3
.end method

.method static synthetic a(Lcom/miui/activityutil/v;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/activityutil/v;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/miui/activityutil/v;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/activityutil/v;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/activityutil/v;->start()V

    return-void
.end method

.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/activityutil/v;->b:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/activityutil/v;->a([Ljava/lang/String;)Lcom/miui/activityutil/u;

    move-result-object v0

    iget v1, v0, Lcom/miui/activityutil/u;->a:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/miui/activityutil/v;->e:Lcom/miui/activityutil/t;

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/activityutil/v;->e:Lcom/miui/activityutil/t;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/activityutil/v;->e:Lcom/miui/activityutil/t;

    iget v2, v0, Lcom/miui/activityutil/u;->a:I

    iget-object v0, v0, Lcom/miui/activityutil/u;->b:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/miui/activityutil/t;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/miui/activityutil/v;->e:Lcom/miui/activityutil/t;

    iget v0, v0, Lcom/miui/activityutil/u;->a:I

    invoke-interface {v1, v0}, Lcom/miui/activityutil/t;->a(I)V

    goto :goto_0
.end method
