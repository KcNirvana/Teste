.class Lcom/alipay/mobile/common/http/d/c;
.super Ljava/lang/Object;
.source "UriRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/common/http/d/b;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/http/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/http/d/c;->a:Lcom/alipay/mobile/common/http/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/c;->a:Lcom/alipay/mobile/common/http/d/b;

    iget-object v0, v0, Lcom/alipay/mobile/common/http/d/b;->c:Lcom/alipay/mobile/common/http/c/b;

    iget-object v1, p0, Lcom/alipay/mobile/common/http/d/c;->a:Lcom/alipay/mobile/common/http/d/b;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/http/c/b;->b(Lcom/alipay/mobile/common/http/d/b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "save2Cache"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
