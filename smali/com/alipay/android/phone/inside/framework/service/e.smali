.class Lcom/alipay/android/phone/inside/framework/service/e;
.super Ljava/lang/Object;
.source "ServiceExecutorProxy.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Params:",
            "Ljava/lang/Object;",
            "Result:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TParams;)TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lcom/alipay/android/phone/inside/framework/a/c;->b(Ljava/lang/String;)Lcom/alipay/android/phone/inside/framework/service/a;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1, p2}, Lcom/alipay/android/phone/inside/framework/service/a;->startForResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Lcom/alipay/android/phone/inside/framework/service/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Params:",
            "Ljava/lang/Object;",
            "Result:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TParams;",
            "Lcom/alipay/android/phone/inside/framework/service/b",
            "<TResult;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lcom/alipay/android/phone/inside/framework/a/c;->b(Ljava/lang/String;)Lcom/alipay/android/phone/inside/framework/service/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p3, p2}, Lcom/alipay/android/phone/inside/framework/service/a;->start(Lcom/alipay/android/phone/inside/framework/service/b;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
