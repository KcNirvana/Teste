.class Lcom/alipay/android/phone/inside/log/d;
.super Ljava/lang/Object;
.source "LogCollect.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/inside/log/b;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/inside/log/b;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/inside/log/d;->a:Lcom/alipay/android/phone/inside/log/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/inside/log/d;->a:Lcom/alipay/android/phone/inside/log/b;

    invoke-static {v0}, Lcom/alipay/android/phone/inside/log/b;->b(Lcom/alipay/android/phone/inside/log/b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "inside"

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
