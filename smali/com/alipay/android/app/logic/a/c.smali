.class public Lcom/alipay/android/app/logic/a/c;
.super Lcom/alipay/android/app/logic/a/a;
.source "BytesEnvelopDecorator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/logic/a/a;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/logic/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/logic/a/a;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/app/logic/a/c;->a:Lcom/alipay/android/app/logic/a/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;,
            Lcom/alipay/android/app/json/JSONException;,
            Lcom/alipay/android/app/exception/PublicKeyException;,
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, [B

    check-cast p1, [B

    const/4 v0, 0x5

    new-array v1, v0, [B

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayInputStream;->read([B)I

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, v3}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "data"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    const/4 v2, 0x4

    const-string/jumbo v4, "phonecashiermsp"

    const-string/jumbo v5, "DataSourceDecorator.undo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " params length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v4, v5, v6}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/android/app/d/c/a;->a([B)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "params"

    invoke-virtual {v3, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    :cond_0
    const-string/jumbo v4, "res_data"

    invoke-virtual {v1, v4, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "params"

    invoke-virtual {v3, v2, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/alipay/android/app/logic/a/c;->a:Lcom/alipay/android/app/logic/a/a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/app/logic/a/c;->a:Lcom/alipay/android/app/logic/a/a;

    iget-object v2, p0, Lcom/alipay/android/app/logic/a/c;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/logic/a/a;->a(Lcom/alipay/android/app/trans/config/a;)V

    iget-object v1, p0, Lcom/alipay/android/app/logic/a/c;->a:Lcom/alipay/android/app/logic/a/a;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/logic/a/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "de"

    const-string/jumbo v2, "decorator_undo_exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v1, "\u6570\u636e\u89e3\u6790\u5f02\u5e38"

    const/16 v2, 0xcc

    invoke-static {v1, v2}, Lcom/alipay/android/app/g/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a([BLjava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/json/JSONException;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v3, "device"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "namespace"

    iget-object v4, p0, Lcom/alipay/android/app/logic/a/c;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v4}, Lcom/alipay/android/app/trans/config/a;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "api_name"

    iget-object v4, p0, Lcom/alipay/android/app/logic/a/c;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v4}, Lcom/alipay/android/app/trans/config/a;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "api_version"

    iget-object v4, p0, Lcom/alipay/android/app/logic/a/c;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v4}, Lcom/alipay/android/app/trans/config/a;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "data"

    invoke-virtual {v0, v3, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/app/logic/a/c;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v2}, Lcom/alipay/android/app/trans/config/a;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/android/app/logic/a/c;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v3}, Lcom/alipay/android/app/trans/config/a;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "00000"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x5

    if-ge v3, v5, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_0
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/alipay/android/app/logic/a/c;->a:Lcom/alipay/android/app/logic/a/a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/android/app/logic/a/c;->a:Lcom/alipay/android/app/logic/a/a;

    iget-object v2, p0, Lcom/alipay/android/app/logic/a/c;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/logic/a/a;->a(Lcom/alipay/android/app/trans/config/a;)V

    iget-object v1, p0, Lcom/alipay/android/app/logic/a/c;->a:Lcom/alipay/android/app/logic/a/a;

    invoke-virtual {v1, v0, p2}, Lcom/alipay/android/app/logic/a/a;->a([BLjava/lang/String;)[B

    move-result-object v0

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_2
    :try_start_5
    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v3, :cond_5

    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :goto_3
    :try_start_7
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_4
    if-eqz v3, :cond_4

    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :goto_5
    :try_start_9
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_4
    :goto_6
    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_8
    move-exception v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method
