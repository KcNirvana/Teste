.class Lcom/alipay/android/phone/mrpc/core/ab;
.super Ljava/lang/Object;
.source "RpcInvoker.java"

# interfaces
.implements Lcom/alipay/android/phone/mrpc/core/y$a;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Class;

.field final synthetic c:Ljava/lang/reflect/Method;

.field final synthetic d:[Ljava/lang/Object;

.field final synthetic e:Lcom/alipay/android/phone/mrpc/core/y;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mrpc/core/y;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/ab;->e:Lcom/alipay/android/phone/mrpc/core/y;

    iput-object p2, p0, Lcom/alipay/android/phone/mrpc/core/ab;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/alipay/android/phone/mrpc/core/ab;->b:Ljava/lang/Class;

    iput-object p4, p0, Lcom/alipay/android/phone/mrpc/core/ab;->c:Ljava/lang/reflect/Method;

    iput-object p5, p0, Lcom/alipay/android/phone/mrpc/core/ab;->d:[Ljava/lang/Object;

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

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/ab;->a:Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/phone/mrpc/core/y;->b()Ljava/lang/ThreadLocal;

    move-result-object v2

    const/4 v0, 0x0

    new-array v3, v0, [B

    iget-object v4, p0, Lcom/alipay/android/phone/mrpc/core/ab;->b:Ljava/lang/Class;

    iget-object v5, p0, Lcom/alipay/android/phone/mrpc/core/ab;->c:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/alipay/android/phone/mrpc/core/ab;->d:[Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/phone/mrpc/core/y;->c()Ljava/lang/ThreadLocal;

    move-result-object v8

    move-object v0, p1

    move-object v7, p2

    invoke-interface/range {v0 .. v8}, Lcom/alipay/android/phone/mrpc/core/v;->a(Ljava/lang/Object;Ljava/lang/ThreadLocal;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/annotation/Annotation;Ljava/lang/ThreadLocal;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/RpcException;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "preHandle stop this call."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/mrpc/core/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
