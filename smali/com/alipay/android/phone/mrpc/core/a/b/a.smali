.class public Lcom/alipay/android/phone/mrpc/core/a/b/a;
.super Lcom/alipay/android/phone/mrpc/core/a/a;
.source "PBDeserializer.java"


# instance fields
.field public c:Lcom/alipay/android/phone/mrpc/core/s;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Lcom/alipay/android/phone/mrpc/core/s;)V
    .locals 1

    invoke-virtual {p2}, Lcom/alipay/android/phone/mrpc/core/s;->b()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/mrpc/core/a/a;-><init>(Ljava/lang/reflect/Type;[B)V

    iput-object p2, p0, Lcom/alipay/android/phone/mrpc/core/a/b/a;->c:Lcom/alipay/android/phone/mrpc/core/s;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mrpc/core/RpcException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/a/b/a;->c:Lcom/alipay/android/phone/mrpc/core/s;

    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/c/f;->a(Lcom/alipay/android/phone/mrpc/core/s;)V

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/a/b/a;->a:Ljava/lang/reflect/Type;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/android/phone/mrpc/core/a/b/d;

    invoke-direct {v0}, Lcom/alipay/android/phone/mrpc/core/a/b/d;-><init>()V

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "protobufCodec == null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/alipay/android/phone/mrpc/core/RpcException;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/alipay/android/phone/mrpc/core/RpcException;

    throw v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/a/b/a;->a:Ljava/lang/reflect/Type;

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/a/b/a;->b:[B

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/mrpc/core/a/b/c;->a(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "PBDeserializer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parser ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/android/phone/mrpc/core/RpcException;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alipay/android/phone/mrpc/core/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/Throwable;)V

    throw v1
.end method
