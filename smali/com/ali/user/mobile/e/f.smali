.class public Lcom/ali/user/mobile/e/f;
.super Ljava/lang/Object;
.source "LoggerUtils.java"


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "UC-ZHAQ-56"

    const-string/jumbo v1, "loginTrace"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-static {v0, v1, p0, v2, v3}, Lcom/ali/user/mobile/e/c;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/log/api/behavior/a;-><init>()V

    iput-object p1, v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->c:Ljava/lang/String;

    iput-object p2, v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->a:Ljava/lang/String;

    iput-object p3, v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->g:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getBehaviorLogger()Lcom/alipay/android/phone/inside/log/api/behavior/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/android/phone/inside/log/api/behavior/b;->a(Lcom/alipay/android/phone/inside/log/api/behavior/a;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "LoggerUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wirteBehaviorLog behaviorId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-seedId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-userCase="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-param1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "AS-EXCEPTION-161206-01"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    move-object v1, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/ali/user/mobile/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
