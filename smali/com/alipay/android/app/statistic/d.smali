.class public Lcom/alipay/android/app/statistic/d;
.super Ljava/lang/Object;
.source "NetworkPacket.java"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/alipay/android/app/statistic/d;->a:Z

    const/16 v0, 0x18

    invoke-static {v0}, Lcom/alipay/android/app/d/c/c;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/statistic/d;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string/jumbo v1, "%05d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    invoke-static {p1, p2}, Lcom/alipay/android/app/d/c/e;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;[B)[B
    .locals 1

    invoke-static {p1, p2}, Lcom/alipay/android/app/d/c/g;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method private varargs a([[B)[B
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    :goto_1
    :try_start_2
    array-length v4, p1

    if-ge v1, v4, :cond_2

    aget-object v4, p1, v1

    array-length v4, v4

    invoke-direct {p0, v4}, Lcom/alipay/android/app/statistic/d;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write([B)V

    aget-object v4, p1, v1

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    if-eqz v3, :cond_3

    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_2
    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    :goto_3
    :try_start_5
    const-string/jumbo v4, "io"

    const-string/jumbo v5, "log_network_pack"

    invoke-static {v4, v5, v1}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v3, :cond_4

    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_4
    :goto_4
    if-eqz v2, :cond_0

    :try_start_7
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_5
    if-eqz v3, :cond_5

    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :cond_5
    :goto_6
    if-eqz v2, :cond_6

    :try_start_9
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    :cond_6
    :goto_7
    throw v0

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_7

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v1

    move-object v2, v0

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_3
.end method

.method private b(Ljava/lang/String;[B)[B
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/statistic/d;->b:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/alipay/android/app/d/c/g;->b(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/alipay/android/app/statistic/f;)Lcom/alipay/android/app/statistic/a;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lcom/alipay/android/app/statistic/f;->b()[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x5

    :try_start_1
    new-array v1, v1, [B

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v3}, Lcom/alipay/android/app/statistic/d;->a(Ljava/lang/String;)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x5

    :try_start_2
    new-array v1, v1, [B

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v4}, Lcom/alipay/android/app/statistic/d;->a(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_6

    new-array v1, v1, [B

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    iget-boolean v4, p0, Lcom/alipay/android/app/statistic/d;->a:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alipay/android/app/statistic/d;->b:Ljava/lang/String;

    invoke-direct {p0, v4, v1}, Lcom/alipay/android/app/statistic/d;->b(Ljava/lang/String;[B)[B

    move-result-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/alipay/android/app/statistic/f;->a()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1}, Lcom/alipay/android/app/d/a/a;->b([B)[B

    move-result-object v1

    move-object v4, v1

    :goto_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_2
    if-nez v3, :cond_3

    if-nez v1, :cond_3

    :goto_3
    return-object v0

    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    :goto_4
    :try_start_4
    const-string/jumbo v4, "io"

    const-string/jumbo v5, "log_network_unpack"

    invoke-static {v4, v5, v1}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object v1, v0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_5
    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_6
    throw v0

    :cond_3
    new-instance v0, Lcom/alipay/android/app/statistic/a;

    invoke-direct {v0, v3, v1}, Lcom/alipay/android/app/statistic/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v1

    move-object v3, v0

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_4

    :cond_4
    move-object v1, v0

    goto :goto_2

    :cond_5
    move-object v4, v1

    goto :goto_0

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method

.method public a(Lcom/alipay/android/app/statistic/a;Z)Lcom/alipay/android/app/statistic/f;
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/alipay/android/app/statistic/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/android/app/statistic/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {v0}, Lcom/alipay/android/app/d/a/a;->a([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_1
    iget-boolean v3, p0, Lcom/alipay/android/app/statistic/d;->a:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/android/app/statistic/d;->b:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/statistic/g;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/alipay/android/app/statistic/d;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/app/statistic/d;->b:Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lcom/alipay/android/app/statistic/d;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    const/4 v4, 0x3

    new-array v4, v4, [[B

    aput-object v2, v4, v1

    aput-object v3, v4, v6

    aput-object v0, v4, v7

    invoke-direct {p0, v4}, Lcom/alipay/android/app/statistic/d;->a([[B)[B

    move-result-object v0

    :goto_2
    new-instance v1, Lcom/alipay/android/app/statistic/f;

    invoke-direct {v1, p2, v0}, Lcom/alipay/android/app/statistic/f;-><init>(Z[B)V

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v4, "cp"

    const-string/jumbo v5, "log_crypt_gzip"

    invoke-static {v4, v5, v3}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move p2, v1

    goto :goto_1

    :cond_2
    new-array v3, v7, [[B

    aput-object v2, v3, v1

    aput-object v0, v3, v6

    invoke-direct {p0, v3}, Lcom/alipay/android/app/statistic/d;->a([[B)[B

    move-result-object v0

    goto :goto_2
.end method
