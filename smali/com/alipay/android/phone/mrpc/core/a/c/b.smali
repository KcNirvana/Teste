.class public Lcom/alipay/android/phone/mrpc/core/a/c/b;
.super Ljava/lang/Object;
.source "SerializerFactory.java"


# instance fields
.field private a:Lcom/alipay/android/phone/mrpc/core/u;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/mrpc/core/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/a/c/b;->a:Lcom/alipay/android/phone/mrpc/core/u;

    return-void
.end method

.method private a([Ljava/lang/Object;Ljava/lang/reflect/Method;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lcom/alipay/android/phone/mrpc/core/a/b/d;

    invoke-direct {v2}, Lcom/alipay/android/phone/mrpc/core/a/b/d;-><init>()V

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    array-length v3, p1

    if-ne v3, v1, :cond_2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-interface {v2, v3}, Lcom/alipay/android/phone/mrpc/core/a/b/c;->b(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/android/phone/mrpc/core/a/b/c;->a(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "SerializerFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SerializerFactory ex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/android/phone/inside/log/api/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;Lcom/alipay/android/phone/mrpc/core/s;Lcom/alipay/android/phone/mrpc/core/a/c/a;)Lcom/alipay/android/phone/mrpc/core/a/c;
    .locals 1

    invoke-virtual {p3}, Lcom/alipay/android/phone/mrpc/core/a/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/a/a/a;

    invoke-direct {v0, p1, p2}, Lcom/alipay/android/phone/mrpc/core/a/a/a;-><init>(Ljava/lang/reflect/Type;Lcom/alipay/android/phone/mrpc/core/s;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/android/phone/mrpc/core/a/b/a;

    invoke-direct {v0, p1, p2}, Lcom/alipay/android/phone/mrpc/core/a/b/a;-><init>(Ljava/lang/reflect/Type;Lcom/alipay/android/phone/mrpc/core/s;)V

    goto :goto_0
.end method

.method public a(ILjava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/android/phone/mrpc/core/q;Lcom/alipay/android/phone/mrpc/core/a/c/a;)Lcom/alipay/android/phone/mrpc/core/a/d;
    .locals 1

    invoke-direct {p0, p4, p3}, Lcom/alipay/android/phone/mrpc/core/a/c/b;->a([Ljava/lang/Object;Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput-byte v0, p6, Lcom/alipay/android/phone/mrpc/core/a/c/a;->a:B

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/a/b/b;

    invoke-direct {v0, p1, p2, p4}, Lcom/alipay/android/phone/mrpc/core/a/b/b;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    iput-byte v0, p6, Lcom/alipay/android/phone/mrpc/core/a/c/a;->a:B

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/a/a/c;

    invoke-direct {v0, p1, p2, p4}, Lcom/alipay/android/phone/mrpc/core/a/a/c;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lcom/alipay/android/phone/mrpc/core/a/c/a;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/alipay/android/phone/mrpc/core/a/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "application/json"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/alipay/android/phone/mrpc/core/a/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "application/protobuf"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "application/x-www-form-urlencoded"

    goto :goto_0
.end method
