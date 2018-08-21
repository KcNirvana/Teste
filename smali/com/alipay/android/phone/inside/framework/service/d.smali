.class final Lcom/alipay/android/phone/inside/framework/service/d;
.super Ljava/lang/Object;
.source "ServiceExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/alipay/android/phone/inside/framework/service/b;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/alipay/android/phone/inside/framework/service/b;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/inside/framework/service/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/phone/inside/framework/service/d;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/alipay/android/phone/inside/framework/service/d;->c:Lcom/alipay/android/phone/inside/framework/service/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/inside/framework/service/c;->a()Lcom/alipay/android/phone/inside/framework/service/e;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/inside/framework/service/d;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/phone/inside/framework/service/d;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/alipay/android/phone/inside/framework/service/d;->c:Lcom/alipay/android/phone/inside/framework/service/b;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/inside/framework/service/e;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/alipay/android/phone/inside/framework/service/b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/phone/inside/framework/service/d;->c:Lcom/alipay/android/phone/inside/framework/service/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/inside/framework/service/d;->c:Lcom/alipay/android/phone/inside/framework/service/b;

    invoke-interface {v1, v0}, Lcom/alipay/android/phone/inside/framework/service/b;->a(Ljava/lang/Throwable;)V

    :cond_0
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getExceptionLogger()Lcom/alipay/android/phone/inside/log/api/ex/a;

    move-result-object v1

    const-string/jumbo v2, "framework"

    const-string/jumbo v3, "StartServiceWithCallbackEx"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/ex/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
