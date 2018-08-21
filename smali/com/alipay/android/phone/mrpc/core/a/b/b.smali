.class public Lcom/alipay/android/phone/mrpc/core/a/b/b;
.super Lcom/alipay/android/phone/mrpc/core/a/b;
.source "PBSerializer.java"


# instance fields
.field private c:I

.field private d:Ljava/lang/Object;

.field private e:[B


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/alipay/android/phone/mrpc/core/a/b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput p1, p0, Lcom/alipay/android/phone/mrpc/core/a/b/b;->c:I

    return-void
.end method

.method private c()[B
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/a/b/b;->e:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/a/b/b;->e:[B

    :goto_0
    return-object v0

    :cond_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/a/b/b;->e:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/a/b/b;->e:[B

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "PBSerializer"

    const-string/jumbo v3, "toByteArray ex:"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/alipay/android/phone/mrpc/core/RpcException;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alipay/android/phone/mrpc/core/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/a/b/b;->b:Ljava/lang/Object;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "PBSerializer"

    const-string/jumbo v2, "mParams is null."

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/a/b/b;->e:[B

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/a/b/b;->e:[B

    monitor-exit p0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/a/b/b;->b:Ljava/lang/Object;

    instance-of v0, v0, [Ljava/lang/Object;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "PBSerializer"

    const-string/jumbo v2, "mParams not instanceof Object[]."

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/a/b/b;->e:[B

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/a/b/b;->e:[B

    monitor-exit p0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/a/b/b;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    if-gtz v1, :cond_4

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "PBSerializer"

    const-string/jumbo v2, "Protobuf mParams length=0"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/a/b/b;->e:[B

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/a/b/b;->e:[B

    monitor-exit p0

    goto :goto_0

    :cond_4
    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "PBSerializer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Protobuf mParams noly support one inParameter, params.length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    monitor-exit p0

    goto/16 :goto_0

    :cond_5
    new-instance v1, Lcom/alipay/android/phone/mrpc/core/a/b/d;

    invoke-direct {v1}, Lcom/alipay/android/phone/mrpc/core/a/b/d;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-interface {v1, v2}, Lcom/alipay/android/phone/mrpc/core/a/b/c;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "PBSerializer"

    const-string/jumbo v2, "mParams not protobuf bean!"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/a/b/b;->e:[B

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/a/b/b;->e:[B

    monitor-exit p0

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-interface {v1, v2}, Lcom/alipay/android/phone/mrpc/core/a/b/c;->a(Ljava/lang/Object;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/phone/mrpc/core/a/b/b;->e:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "PBSerializer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PB Data size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/android/phone/mrpc/core/a/b/b;->e:[B

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". PB Data="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/android/phone/mrpc/core/a/b/b;->e:[B

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".PB Object String = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v0, v0, v5

    invoke-interface {v1, v0}, Lcom/alipay/android/phone/mrpc/core/a/b/c;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/a/b/b;->e:[B
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/a/b/b;->d:Ljava/lang/Object;

    return-void
.end method

.method public a()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mrpc/core/RpcException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/a/b/b;->c()[B

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    :try_start_0
    const-string/jumbo v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/a/b/b;->a()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "PBSerializer"

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v0, ""

    goto :goto_0
.end method
