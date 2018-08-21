.class public Lcom/alipay/android/phone/inside/security/net/a;
.super Ljava/lang/Object;
.source "ClientPackProxy.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/phone/inside/security/net/a;->b:Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;

    const/16 v0, 0x18

    invoke-static {v0}, Lcom/alipay/android/phone/inside/security/b/b;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/inside/security/net/a;->a:Ljava/lang/String;

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string/jumbo v1, "%06d"

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

.method private a(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "public_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/alipay/android/phone/inside/security/net/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string/jumbo v0, "{\"data\":{\"api_version\":\"1.0\"}}"

    const-string/jumbo v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p2}, Lcom/alipay/android/phone/inside/security/b/d;->a(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/security/net/a;->b()V

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/security/net/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/android/phone/inside/security/b/d;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getExceptionLogger()Lcom/alipay/android/phone/inside/log/api/ex/a;

    move-result-object v2

    const-string/jumbo v3, "security"

    const-string/jumbo v4, "EncryptDesKeyEx"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/android/phone/inside/log/api/ex/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/alipay/android/phone/inside/security/b/a;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method private varargs a([[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    :goto_1
    :try_start_2
    array-length v3, p1

    if-ge v0, v3, :cond_2

    aget-object v3, p1, v0

    array-length v3, v3

    invoke-direct {p0, v3}, Lcom/alipay/android/phone/inside/security/net/a;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write([B)V

    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_2
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_3
    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    :goto_4
    if-eqz v1, :cond_5

    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_5
    :goto_5
    throw v0

    :catch_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/inside/security/net/a;->b:Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;

    sget-object v1, Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;->LOG:Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/alipay/android/phone/inside/security/net/b;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/inside/security/net/a;->b:Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;

    sget-object v1, Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;->RPC:Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/inside/security/net/b;->d()V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/inside/security/net/a;->b:Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;

    sget-object v1, Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;->RPC:Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lcom/alipay/android/phone/inside/security/net/b;->a(Ljava/lang/String;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/inside/security/net/a;->b:Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;

    sget-object v1, Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;->LOG:Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/alipay/android/phone/inside/security/net/b;->b(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private b(Ljava/lang/String;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/alipay/android/phone/inside/security/b/a;->b(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method private c([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "utf-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private c()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/android/phone/inside/security/net/a;->b:Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;

    sget-object v2, Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;->LOG:Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/alipay/android/phone/inside/security/net/b;->b()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/alipay/android/phone/inside/security/net/a;->b:Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;

    sget-object v2, Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;->RPC:Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/inside/security/net/b;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/security/net/a;->a()[B

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/inside/security/net/a;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/security/net/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/android/phone/inside/security/net/a;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p1}, Lcom/alipay/android/phone/inside/security/b/c;->a([B)[B

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/inside/security/net/a;->a:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/alipay/android/phone/inside/security/net/a;->a(Ljava/lang/String;[B)[B

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [[B

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-direct {p0, v3}, Lcom/alipay/android/phone/inside/security/net/a;->a([[B)[B

    move-result-object v0

    return-object v0
.end method

.method public b([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x6

    :try_start_1
    new-array v0, v0, [B

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayInputStream;->read([B)I

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/inside/security/net/a;->c([B)I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayInputStream;->read([B)I

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/alipay/android/phone/inside/security/net/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/alipay/android/phone/inside/security/PublicKeyUpdateException;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/security/PublicKeyUpdateException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_2
    throw v0

    :cond_1
    const/4 v0, 0x6

    :try_start_4
    new-array v0, v0, [B

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayInputStream;->read([B)I

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/inside/security/net/a;->c([B)I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayInputStream;->read([B)I

    iget-object v2, p0, Lcom/alipay/android/phone/inside/security/net/a;->a:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/alipay/android/phone/inside/security/net/a;->b(Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/inside/security/b/c;->b([B)[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    :goto_3
    return-object v0

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method
