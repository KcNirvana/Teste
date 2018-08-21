.class public Lcom/alipay/android/phone/mrpc/core/u;
.super Ljava/lang/Object;
.source "RpcFactory.java"


# static fields
.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/alipay/android/phone/mrpc/core/v;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/alipay/android/phone/mrpc/core/g;

.field private b:Lcom/alipay/android/phone/mrpc/core/y;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/alipay/android/phone/mrpc/core/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/alipay/android/phone/mrpc/core/u;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/phone/mrpc/core/g;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/u;->a:Lcom/alipay/android/phone/mrpc/core/g;

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/y;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mrpc/core/y;-><init>(Lcom/alipay/android/phone/mrpc/core/u;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/u;->b:Lcom/alipay/android/phone/mrpc/core/y;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/u;->d:Ljava/util/Map;

    return-void
.end method

.method public static final b(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/alipay/android/phone/mrpc/core/v;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/alipay/android/phone/mrpc/core/u;->e:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lcom/alipay/android/phone/mrpc/core/g;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/u;->a:Lcom/alipay/android/phone/mrpc/core/g;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lcom/alipay/android/phone/mrpc/core/x;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " class is not a proxy class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mrpc/core/w;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/w;->b()Lcom/alipay/android/phone/mrpc/core/x;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lcom/alipay/android/phone/mrpc/core/w;

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/u;->a:Lcom/alipay/android/phone/mrpc/core/g;

    iget-object v4, p0, Lcom/alipay/android/phone/mrpc/core/u;->b:Lcom/alipay/android/phone/mrpc/core/y;

    invoke-direct {v2, v3, p1, v4}, Lcom/alipay/android/phone/mrpc/core/w;-><init>(Lcom/alipay/android/phone/mrpc/core/g;Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/y;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/u;->c:Landroid/content/Context;

    return-void
.end method

.method public a(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/alipay/android/phone/mrpc/core/v;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/u;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/alipay/android/phone/mrpc/core/u;->b(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/v;)V

    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/u;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/u;->a:Lcom/alipay/android/phone/mrpc/core/g;

    invoke-interface {v0}, Lcom/alipay/android/phone/mrpc/core/g;->c()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/u;->c:Landroid/content/Context;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/u;->c:Landroid/content/Context;

    return-object v0
.end method

.method public b(Ljava/lang/Class;)Lcom/alipay/android/phone/mrpc/core/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/alipay/android/phone/mrpc/core/v;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/u;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mrpc/core/v;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/mrpc/core/u;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mrpc/core/v;

    goto :goto_0
.end method
