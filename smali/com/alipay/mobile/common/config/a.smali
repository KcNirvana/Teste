.class final Lcom/alipay/mobile/common/config/a;
.super Ljava/lang/Object;
.source "DbConfigs.java"

# interfaces
.implements Lcom/alipay/mobile/common/a$c;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alipay/mobile/common/a;II)V
    .locals 3

    :try_start_0
    invoke-interface {p1}, Lcom/alipay/mobile/common/a;->b()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "DbConfigs"

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
