.class Lcom/alipay/android/phone/mrpc/core/aa;
.super Ljava/lang/Object;
.source "RpcInvoker.java"

# interfaces
.implements Lcom/alipay/android/phone/mrpc/core/y$a;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:[B

.field final synthetic c:Ljava/lang/Class;

.field final synthetic d:Ljava/lang/reflect/Method;

.field final synthetic e:[Ljava/lang/Object;

.field final synthetic f:Lcom/alipay/android/phone/mrpc/core/RpcException;

.field final synthetic g:Lcom/alipay/android/phone/mrpc/core/y;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mrpc/core/y;Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/android/phone/mrpc/core/RpcException;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/aa;->g:Lcom/alipay/android/phone/mrpc/core/y;

    iput-object p2, p0, Lcom/alipay/android/phone/mrpc/core/aa;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/alipay/android/phone/mrpc/core/aa;->b:[B

    iput-object p4, p0, Lcom/alipay/android/phone/mrpc/core/aa;->c:Ljava/lang/Class;

    iput-object p5, p0, Lcom/alipay/android/phone/mrpc/core/aa;->d:Ljava/lang/reflect/Method;

    iput-object p6, p0, Lcom/alipay/android/phone/mrpc/core/aa;->e:[Ljava/lang/Object;

    iput-object p7, p0, Lcom/alipay/android/phone/mrpc/core/aa;->f:Lcom/alipay/android/phone/mrpc/core/RpcException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alipay/android/phone/mrpc/core/v;Ljava/lang/annotation/Annotation;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mrpc/core/RpcException;
        }
    .end annotation

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/aa;->a:Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/phone/mrpc/core/y;->b()Ljava/lang/ThreadLocal;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/aa;->b:[B

    iget-object v4, p0, Lcom/alipay/android/phone/mrpc/core/aa;->c:Ljava/lang/Class;

    iget-object v5, p0, Lcom/alipay/android/phone/mrpc/core/aa;->d:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/alipay/android/phone/mrpc/core/aa;->e:[Ljava/lang/Object;

    iget-object v7, p0, Lcom/alipay/android/phone/mrpc/core/aa;->f:Lcom/alipay/android/phone/mrpc/core/RpcException;

    move-object v0, p1

    move-object v8, p2

    invoke-interface/range {v0 .. v8}, Lcom/alipay/android/phone/mrpc/core/v;->a(Ljava/lang/Object;Ljava/lang/ThreadLocal;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/android/phone/mrpc/core/RpcException;Ljava/lang/annotation/Annotation;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "RpcInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/aa;->f:Lcom/alipay/android/phone/mrpc/core/RpcException;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " need process"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "RpcInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/aa;->f:Lcom/alipay/android/phone/mrpc/core/RpcException;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " need not process,interceptor already process"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
