.class public Lcom/xiaomi/accountsdk/utils/FidNonce$Builder;
.super Ljava/lang/Object;
.source "FidNonce.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/utils/FidNonce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/xiaomi/accountsdk/utils/FidNonce$Type;)Lcom/xiaomi/accountsdk/utils/FidNonce;
    .locals 3

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;->getComputer()Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$IServerTimeComputer;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/FidSigningUtil;->getFidSigner()Lcom/xiaomi/accountsdk/utils/FidSigningUtil$IFidSigner;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/accountsdk/utils/FidNonce$Builder;

    invoke-direct {v2}, Lcom/xiaomi/accountsdk/utils/FidNonce$Builder;-><init>()V

    invoke-virtual {v2, p1, v0, v1}, Lcom/xiaomi/accountsdk/utils/FidNonce$Builder;->build(Lcom/xiaomi/accountsdk/utils/FidNonce$Type;Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$IServerTimeComputer;Lcom/xiaomi/accountsdk/utils/FidSigningUtil$IFidSigner;)Lcom/xiaomi/accountsdk/utils/FidNonce;

    move-result-object p1

    return-object p1
.end method

.method build(Lcom/xiaomi/accountsdk/utils/FidNonce$Type;Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$IServerTimeComputer;Lcom/xiaomi/accountsdk/utils/FidSigningUtil$IFidSigner;)Lcom/xiaomi/accountsdk/utils/FidNonce;
    .locals 3

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    if-nez p3, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    invoke-interface {p3}, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$IFidSigner;->canSign()Z

    move-result v1
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException; {:try_start_0 .. :try_end_0} :catch_4

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    sget-object v1, Lcom/xiaomi/accountsdk/utils/FidNonce$Type;->NATIVE:Lcom/xiaomi/accountsdk/utils/FidNonce$Type;

    if-ne p1, v1, :cond_3

    const-string p1, "n"

    goto :goto_0

    :cond_3
    const-string p1, "wb"

    :goto_0
    invoke-interface {p2}, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$IServerTimeComputer;->computeServerTime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/xiaomi/accountsdk/utils/FidNonce$Builder;->generateNonce(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/FidNonce$Builder;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/xiaomi/accountsdk/utils/FidNonce$Builder;->buildPlain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_1
    const-string p2, "UTF-8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0xa

    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$IFidSigner;->sign([B)[B

    move-result-object p1
    :try_end_2
    .catch Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    invoke-static {p1, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    :try_start_3
    new-instance p3, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {p3, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    new-instance p1, Lcom/xiaomi/accountsdk/utils/FidNonce;

    invoke-direct {p1, p2, p3}, Lcom/xiaomi/accountsdk/utils/FidNonce;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "FidNonce"

    invoke-static {p2, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :catch_1
    move-exception p1

    const-string p2, "FidNonce"

    invoke-static {p2, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :catch_2
    move-exception p1

    const-string p2, "FidNonce"

    invoke-static {p2, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :catch_3
    move-exception p1

    const-string p2, "FidNonce"

    invoke-static {p2, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :catch_4
    move-exception p1

    const-string p2, "FidNonce"

    invoke-static {p2, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method buildPlain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "tp"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "nonce"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "v"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "should not happen"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method generateNonce(J)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lcom/xiaomi/accountsdk/utils/NonceCoder;->generateNonce(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/VersionUtils;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
