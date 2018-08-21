.class Lcom/alipay/apmobilesecuritysdk/a;
.super Ljava/lang/Object;
.source "DeviceFingerprintServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;

.field final synthetic c:Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;Ljava/util/Map;Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/a;->c:Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;

    iput-object p2, p0, Lcom/alipay/apmobilesecuritysdk/a;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/alipay/apmobilesecuritysdk/a;->b:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a;->c:Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->access$000(Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;)Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "APSecuritySdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initToken(), \u5f00\u59cb\u65f6\u95f4: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a;->c:Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->access$100(Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/a;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/a;->c:Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;

    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/a;->c:Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->access$100(Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->access$200(Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;Landroid/content/Context;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/alipay/apmobilesecuritysdk/apdidgen/c;->a(Landroid/content/Context;Ljava/util/Map;I)I

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a;->c:Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->access$100(Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/apdidgen/c;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/a;->c:Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->access$000(Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;)Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "APSecuritySdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdidToken:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a;->b:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a;->c:Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->access$100(Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/apdidgen/c;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/a;->c:Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->access$000(Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;)Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "APSecuritySdk"

    const-string/jumbo v3, "initToken(), \u521d\u59cb\u5316\u6210\u529f,\u8c03\u7528\u56de\u8c03\u51fd\u6570\u3002"

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/a;->b:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;

    invoke-interface {v1, v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;->onResult(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a;->c:Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->access$000(Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;)Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "APSecuritySdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initToken(), \u7ed3\u675f\u65f6\u95f4: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a;->c:Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->access$300(Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a;->c:Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->access$400(Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a;->c:Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->access$300(Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a;->c:Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->access$400(Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/a;->c:Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->access$300(Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/a;->c:Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;->access$400(Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method
