.class public Lcom/xiaomi/phonenum/obtain/EncryptHttpClient;
.super Ljava/lang/Object;
.source "EncryptHttpClient.java"

# interfaces
.implements Lcom/xiaomi/phonenum/http/HttpClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/phonenum/obtain/EncryptHttpClient$HttpFactory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EncryptHttpClient"


# instance fields
.field private RSAEncryptUtil:Lcom/xiaomi/phonenum/utils/RSAEncryptUtil;

.field private client:Lcom/xiaomi/phonenum/http/HttpClient;

.field private logger:Lcom/xiaomi/phonenum/utils/Logger;


# direct methods
.method constructor <init>(Lcom/xiaomi/phonenum/http/HttpClient;)V
    .locals 1
    .param p1    # Lcom/xiaomi/phonenum/http/HttpClient;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/xiaomi/phonenum/utils/LoggerManager;->getLogger()Lcom/xiaomi/phonenum/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/obtain/EncryptHttpClient;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    iput-object p1, p0, Lcom/xiaomi/phonenum/obtain/EncryptHttpClient;->client:Lcom/xiaomi/phonenum/http/HttpClient;

    :try_start_0
    new-instance p1, Lcom/xiaomi/phonenum/utils/RSAEncryptUtil;

    invoke-direct {p1}, Lcom/xiaomi/phonenum/utils/RSAEncryptUtil;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/phonenum/obtain/EncryptHttpClient;->RSAEncryptUtil:Lcom/xiaomi/phonenum/utils/RSAEncryptUtil;
    :try_end_0
    .catch Lcom/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public excute(Lcom/xiaomi/phonenum/http/Request;)Lcom/xiaomi/phonenum/http/Response;
    .locals 10
    .param p1    # Lcom/xiaomi/phonenum/http/Request;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lcom/xiaomi/phonenum/http/Request;->url:Ljava/lang/String;

    sget-object v1, Lcom/xiaomi/phonenum/Constant;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/phonenum/obtain/EncryptHttpClient;->client:Lcom/xiaomi/phonenum/http/HttpClient;

    invoke-interface {v0, p1}, Lcom/xiaomi/phonenum/http/HttpClient;->excute(Lcom/xiaomi/phonenum/http/Request;)Lcom/xiaomi/phonenum/http/Response;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/phonenum/obtain/EncryptHttpClient;->RSAEncryptUtil:Lcom/xiaomi/phonenum/utils/RSAEncryptUtil;

    if-nez v0, :cond_1

    sget-object p1, Lcom/xiaomi/phonenum/bean/HttpError;->ENCRYPT:Lcom/xiaomi/phonenum/bean/HttpError;

    invoke-virtual {p1}, Lcom/xiaomi/phonenum/bean/HttpError;->result()Lcom/xiaomi/phonenum/http/Response;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p1, Lcom/xiaomi/phonenum/http/Request;->uri:Ljava/net/URI;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p1, Lcom/xiaomi/phonenum/http/Request;->formBody:Ljava/util/Map;

    invoke-static {v3}, Lcom/xiaomi/phonenum/utils/MapUtil;->joinToQuery(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "&"

    invoke-static {v2, v3}, Lcom/xiaomi/phonenum/utils/MapUtil;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/xiaomi/phonenum/obtain/EncryptHttpClient;->RSAEncryptUtil:Lcom/xiaomi/phonenum/utils/RSAEncryptUtil;

    invoke-virtual {v3, v2}, Lcom/xiaomi/phonenum/utils/RSAEncryptUtil;->encrypt(Ljava/lang/String;)Lcom/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptResult;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "params"

    iget-object v5, v2, Lcom/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptResult;->content:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "secretKey"

    iget-object v2, v2, Lcom/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptResult;->encryptedKey:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move-object v3, v0

    :goto_0
    new-instance v2, Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v9

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/xiaomi/phonenum/http/Request$Builder;

    invoke-direct {v1}, Lcom/xiaomi/phonenum/http/Request$Builder;-><init>()V

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/phonenum/http/Request$Builder;->url(Ljava/lang/String;)Lcom/xiaomi/phonenum/http/Request$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/xiaomi/phonenum/http/Request;->headers:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/xiaomi/phonenum/http/Request$Builder;->headers(Ljava/util/Map;)Lcom/xiaomi/phonenum/http/Request$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/xiaomi/phonenum/http/Request$Builder;->formBody(Ljava/util/Map;)Lcom/xiaomi/phonenum/http/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/phonenum/http/Request$Builder;->build()Lcom/xiaomi/phonenum/http/Request;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/xiaomi/phonenum/obtain/EncryptHttpClient;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    const-string v3, "EncryptHttpClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encryptedRequest Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v3, p1, v1}, Lcom/xiaomi/phonenum/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    if-nez v0, :cond_3

    sget-object p1, Lcom/xiaomi/phonenum/bean/HttpError;->ENCRYPT:Lcom/xiaomi/phonenum/bean/HttpError;

    invoke-virtual {p1}, Lcom/xiaomi/phonenum/bean/HttpError;->result()Lcom/xiaomi/phonenum/http/Response;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/xiaomi/phonenum/obtain/EncryptHttpClient;->client:Lcom/xiaomi/phonenum/http/HttpClient;

    invoke-interface {p1, v0}, Lcom/xiaomi/phonenum/http/HttpClient;->excute(Lcom/xiaomi/phonenum/http/Request;)Lcom/xiaomi/phonenum/http/Response;

    move-result-object p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/xiaomi/phonenum/bean/HttpError;->DECRYPT:Lcom/xiaomi/phonenum/bean/HttpError;

    invoke-virtual {p1}, Lcom/xiaomi/phonenum/bean/HttpError;->result()Lcom/xiaomi/phonenum/http/Response;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object v0, p1, Lcom/xiaomi/phonenum/http/Response;->body:Ljava/lang/String;

    if-nez v0, :cond_5

    return-object p1

    :cond_5
    :try_start_1
    new-instance v0, Lcom/xiaomi/phonenum/http/Response$Builder;

    invoke-direct {v0, p1}, Lcom/xiaomi/phonenum/http/Response$Builder;-><init>(Lcom/xiaomi/phonenum/http/Response;)V

    iget-object v1, p0, Lcom/xiaomi/phonenum/obtain/EncryptHttpClient;->RSAEncryptUtil:Lcom/xiaomi/phonenum/utils/RSAEncryptUtil;

    iget-object v2, p1, Lcom/xiaomi/phonenum/http/Response;->body:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/phonenum/utils/RSAEncryptUtil;->aesDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/phonenum/http/Response$Builder;->body(Ljava/lang/String;)Lcom/xiaomi/phonenum/http/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/http/Response$Builder;->build()Lcom/xiaomi/phonenum/http/Response;

    move-result-object v0
    :try_end_1
    .catch Lcom/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/phonenum/obtain/EncryptHttpClient;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    const-string v2, "EncryptHttpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decryptedResponse Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1, v0}, Lcom/xiaomi/phonenum/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lcom/xiaomi/phonenum/bean/HttpError;->DECRYPT:Lcom/xiaomi/phonenum/bean/HttpError;

    invoke-virtual {p1}, Lcom/xiaomi/phonenum/bean/HttpError;->result()Lcom/xiaomi/phonenum/http/Response;

    move-result-object p1

    return-object p1

    :catch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected newQuery: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/xiaomi/phonenum/http/Request;->url:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
