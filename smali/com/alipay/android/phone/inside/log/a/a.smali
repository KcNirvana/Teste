.class public Lcom/alipay/android/phone/inside/log/a/a;
.super Ljava/lang/Object;
.source "BehaviorLoggerImpl.java"

# interfaces
.implements Lcom/alipay/android/phone/inside/log/api/behavior/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alipay/android/phone/inside/log/api/behavior/a;)V
    .locals 5

    if-eqz p1, :cond_0

    new-instance v0, Lcom/alipay/android/phone/inside/log/f/c;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/inside/log/f/c;-><init>(Lcom/alipay/android/phone/inside/log/api/behavior/a;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "inside"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "add behavior:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/log/f/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/b;->a()Lcom/alipay/android/phone/inside/log/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/log/b;->a(Lcom/alipay/android/phone/inside/log/f/c;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/log/api/behavior/a;-><init>()V

    iput-object p1, v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->a:Ljava/lang/String;

    iput-object p2, v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->b:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    iput-object p3, v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->c:Ljava/lang/String;

    new-instance v1, Lcom/alipay/android/phone/inside/log/f/c;

    invoke-direct {v1, v0}, Lcom/alipay/android/phone/inside/log/f/c;-><init>(Lcom/alipay/android/phone/inside/log/api/behavior/a;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v2, "inside"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "add behavior:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alipay/android/phone/inside/log/f/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/b;->a()Lcom/alipay/android/phone/inside/log/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/log/b;->a(Lcom/alipay/android/phone/inside/log/f/c;)V

    return-void
.end method
