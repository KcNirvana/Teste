.class public Lcom/alipay/android/phone/mrpc/core/y;
.super Ljava/lang/Object;
.source "RpcInvoker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/mrpc/core/y$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static f:Z


# instance fields
.field private c:B

.field private d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private e:Lcom/alipay/android/phone/mrpc/core/u;

.field private g:Lcom/alipay/android/phone/mrpc/core/a/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/mrpc/core/y;->a:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/mrpc/core/y;->b:Ljava/lang/ThreadLocal;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/phone/mrpc/core/y;->f:Z

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/phone/mrpc/core/u;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/alipay/android/phone/mrpc/core/y;->c:B

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/y;->e:Lcom/alipay/android/phone/mrpc/core/u;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/y;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/a/c/b;

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/y;->e:Lcom/alipay/android/phone/mrpc/core/u;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/mrpc/core/a/c/b;-><init>(Lcom/alipay/android/phone/mrpc/core/u;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/y;->g:Lcom/alipay/android/phone/mrpc/core/a/c/b;

    return-void
.end method

.method private a(Ljava/lang/String;[BLjava/lang/String;Lcom/alipay/android/phone/mrpc/core/q;)Lcom/alipay/android/phone/mrpc/core/c/g$a;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "Operation-Type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "Request-Data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p2, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "Ts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/y;->e:Lcom/alipay/android/phone/mrpc/core/u;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/u;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/mrpc/core/c/d;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "RpcInvoker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sign content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/y;->e:Lcom/alipay/android/phone/mrpc/core/u;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/u;->b()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v0}, Lcom/alipay/android/phone/mrpc/core/c/g;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Lcom/alipay/android/phone/mrpc/core/c/g$a;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;ILcom/alipay/android/phone/mrpc/core/q;Lcom/alipay/android/phone/mrpc/core/a/c/a;)Lcom/alipay/android/phone/mrpc/core/s;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mrpc/core/RpcException;
        }
    .end annotation

    move-object/from16 v0, p5

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/mrpc/core/y;->a(Ljava/lang/reflect/Method;Lcom/alipay/android/phone/mrpc/core/q;)V

    invoke-direct/range {p0 .. p6}, Lcom/alipay/android/phone/mrpc/core/y;->b(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;ILcom/alipay/android/phone/mrpc/core/q;Lcom/alipay/android/phone/mrpc/core/a/c/a;)Lcom/alipay/android/phone/mrpc/core/a/d;

    move-result-object v10

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "RpcInvoker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "operationType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",serializerClass="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/android/phone/mrpc/core/y;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alipay/android/phone/mrpc/core/y;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v10, v1}, Lcom/alipay/android/phone/mrpc/core/a/d;->a(Ljava/lang/Object;)V

    :cond_0
    invoke-interface {v10}, Lcom/alipay/android/phone/mrpc/core/a/d;->a()[B

    move-result-object v6

    new-instance v1, Lcom/alipay/android/phone/mrpc/core/i;

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/y;->e:Lcom/alipay/android/phone/mrpc/core/u;

    invoke-virtual {v2}, Lcom/alipay/android/phone/mrpc/core/u;->a()Lcom/alipay/android/phone/mrpc/core/g;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/y;->g:Lcom/alipay/android/phone/mrpc/core/a/c/b;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/alipay/android/phone/mrpc/core/a/c/b;->a(Lcom/alipay/android/phone/mrpc/core/a/c/a;)Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/y;->e:Lcom/alipay/android/phone/mrpc/core/u;

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/u;->b()Landroid/content/Context;

    move-result-object v8

    move-object v3, p1

    move/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/alipay/android/phone/mrpc/core/i;-><init>(Lcom/alipay/android/phone/mrpc/core/g;Ljava/lang/reflect/Method;ILjava/lang/String;[BLjava/lang/String;Landroid/content/Context;Lcom/alipay/android/phone/mrpc/core/q;)V

    move-object v7, p0

    move-object v8, p1

    move-object v9, v10

    move-object v10, v1

    move-object/from16 v11, p3

    move-object v12, v6

    move-object/from16 v13, p5

    invoke-direct/range {v7 .. v13}, Lcom/alipay/android/phone/mrpc/core/y;->a(Ljava/lang/reflect/Method;Lcom/alipay/android/phone/mrpc/core/a/d;Lcom/alipay/android/phone/mrpc/core/t;Ljava/lang/String;[BLcom/alipay/android/phone/mrpc/core/q;)V

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/i;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/mrpc/core/s;

    sget-object v2, Lcom/alipay/android/phone/mrpc/core/y;->b:Ljava/lang/ThreadLocal;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v1
.end method

.method private a(Ljava/lang/reflect/Method;Lcom/alipay/android/phone/mrpc/core/s;Lcom/alipay/android/phone/mrpc/core/a/c/a;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/y;->g:Lcom/alipay/android/phone/mrpc/core/a/c/b;

    invoke-virtual {v1, v0, p2, p3}, Lcom/alipay/android/phone/mrpc/core/a/c/b;->a(Ljava/lang/reflect/Type;Lcom/alipay/android/phone/mrpc/core/s;Lcom/alipay/android/phone/mrpc/core/a/c/a;)Lcom/alipay/android/phone/mrpc/core/a/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/phone/mrpc/core/a/c;->a()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/alipay/android/phone/mrpc/core/y;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method private static a(Lcom/alipay/android/phone/mrpc/core/RpcException;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    invoke-static {p0}, Lcom/alipay/android/phone/mrpc/core/y;->a(Lcom/alipay/android/phone/mrpc/core/RpcException;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "API"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ERR_CODE"

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/RpcException;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ERR_MSG"

    invoke-static {p0}, Lcom/alipay/android/phone/mrpc/core/c/d;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "RpcInvoker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "perfLog ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "RpcInvoker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "errorStr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getExceptionLogger()Lcom/alipay/android/phone/inside/log/api/ex/a;

    move-result-object v0

    const-string/jumbo v1, "RPC_ERR"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/ex/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;Lcom/alipay/android/phone/mrpc/core/q;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/alipay/android/phone/mrpc/core/q;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mrpc/core/RpcException;
        }
    .end annotation

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/ab;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/phone/mrpc/core/ab;-><init>(Lcom/alipay/android/phone/mrpc/core/y;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    invoke-direct {p0, p5, v0}, Lcom/alipay/android/phone/mrpc/core/y;->a([Ljava/lang/annotation/Annotation;Lcom/alipay/android/phone/mrpc/core/y$a;)Z

    return-void
.end method

.method private a(Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;Lcom/alipay/android/phone/mrpc/core/RpcException;Lcom/alipay/android/phone/mrpc/core/q;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[B",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/alipay/android/phone/mrpc/core/RpcException;",
            "Lcom/alipay/android/phone/mrpc/core/q;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mrpc/core/RpcException;
        }
    .end annotation

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/aa;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/phone/mrpc/core/aa;-><init>(Lcom/alipay/android/phone/mrpc/core/y;Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/android/phone/mrpc/core/RpcException;)V

    invoke-direct {p0, p6, v0}, Lcom/alipay/android/phone/mrpc/core/y;->a([Ljava/lang/annotation/Annotation;Lcom/alipay/android/phone/mrpc/core/y$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    throw p7

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;Lcom/alipay/android/phone/mrpc/core/q;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[B",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/alipay/android/phone/mrpc/core/q;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mrpc/core/RpcException;
        }
    .end annotation

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/z;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/phone/mrpc/core/z;-><init>(Lcom/alipay/android/phone/mrpc/core/y;Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    invoke-direct {p0, p6, v0}, Lcom/alipay/android/phone/mrpc/core/y;->a([Ljava/lang/annotation/Annotation;Lcom/alipay/android/phone/mrpc/core/y$a;)Z

    return-void
.end method

.method private a(Ljava/lang/reflect/Method;Lcom/alipay/android/phone/mrpc/core/a/d;Lcom/alipay/android/phone/mrpc/core/t;Ljava/lang/String;[BLcom/alipay/android/phone/mrpc/core/q;)V
    .locals 2

    instance-of v0, p3, Lcom/alipay/android/phone/mrpc/core/i;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p3, Lcom/alipay/android/phone/mrpc/core/i;

    instance-of v0, p2, Lcom/alipay/android/phone/mrpc/core/a/a/c;

    if-eqz v0, :cond_3

    check-cast p2, Lcom/alipay/android/phone/mrpc/core/a/a/c;

    invoke-virtual {p2}, Lcom/alipay/android/phone/mrpc/core/a/a/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/alipay/android/phone/mrpc/core/i;->c(Ljava/lang/String;)V

    const-string/jumbo v0, "application/json"

    invoke-virtual {p3, v0}, Lcom/alipay/android/phone/mrpc/core/i;->b(Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/alipay/android/phone/mrpc/core/c/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/alipay/android/phone/mrpc/core/i;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/android/phone/mrpc/core/y;->a(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p4, p5, v0, p6}, Lcom/alipay/android/phone/mrpc/core/y;->a(Ljava/lang/String;[BLjava/lang/String;Lcom/alipay/android/phone/mrpc/core/q;)Lcom/alipay/android/phone/mrpc/core/c/g$a;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/alipay/android/phone/mrpc/core/i;->a(Lcom/alipay/android/phone/mrpc/core/c/g$a;)V

    goto :goto_0

    :cond_3
    instance-of v0, p2, Lcom/alipay/android/phone/mrpc/core/a/b/b;

    if-eqz v0, :cond_2

    check-cast p2, Lcom/alipay/android/phone/mrpc/core/a/b/b;

    const-string/jumbo v0, "application/protobuf"

    invoke-virtual {p3, v0}, Lcom/alipay/android/phone/mrpc/core/i;->b(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/alipay/android/phone/mrpc/core/a/b/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/alipay/android/phone/mrpc/core/i;->c(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Ljava/lang/reflect/Method;Lcom/alipay/android/phone/mrpc/core/q;)V
    .locals 5

    :try_start_0
    const-class v0, Lcom/alipay/mobile/framework/service/annotation/OperationType;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/annotation/OperationType;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-class v1, Lcom/alipay/mobile/framework/service/annotation/CheckLogin;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/annotation/CheckLogin;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/alipay/android/phone/mrpc/core/q;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/y;->a()Lcom/alipay/android/phone/mrpc/core/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/phone/mrpc/core/u;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/phone/mrpc/core/h;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "RpcInvoker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CheckLogin_prejudge: cookie is empty  API=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/alipay/mobile/framework/service/annotation/OperationType;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/RpcException;

    const/16 v1, 0x7d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "\u767b\u5f55\u8d85\u65f6\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55:\u767b\u5f55\u8d85\u65f6\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/mrpc/core/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "RpcInvoker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkLogin ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string/jumbo v2, "ALIPAYJSESSIONID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "RpcInvoker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CheckLogin_prejudge: cookie not contains ALIPAYJSESSIONID!  API=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/alipay/mobile/framework/service/annotation/OperationType;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/RpcException;

    const/16 v1, 0x7d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "\u767b\u5f55\u8d85\u65f6\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55:\u767b\u5f55\u8d85\u65f6\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/mrpc/core/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private a(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 6

    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "RpcInvoker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ThreadId=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "] methodName=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "] returnObj=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    instance-of v0, p2, Lcom/squareup/wire/Message;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "pbObj"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    invoke-static {p2}, Lcom/alipay/b/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "RpcInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ThreadId=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] methodName=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] returnObj=[ is null ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "RpcInvoker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "printReturnObjLog ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static a(Lcom/alipay/android/phone/mrpc/core/RpcException;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/RpcException;->getCode()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/RpcException;->getCode()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/RpcException;->getCode()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/RpcException;->getCode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/RpcException;->getCode()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/RpcException;->isServerError()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/reflect/Method;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/alipay/android/phone/mrpc/core/y;->f:Z

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    const-class v0, Lcom/alipay/mobile/framework/service/annotation/SignCheck;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/annotation/SignCheck;

    if-nez v0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/alipay/mobile/framework/service/annotation/SignCheck;->value()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "no"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private a([Ljava/lang/annotation/Annotation;Lcom/alipay/android/phone/mrpc/core/y$a;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mrpc/core/RpcException;
        }
    .end annotation

    const/4 v1, 0x1

    :try_start_0
    array-length v2, p1

    const/4 v0, 0x0

    move v6, v0

    move v0, v1

    move v1, v6

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, p1, v1

    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/android/phone/mrpc/core/y;->e:Lcom/alipay/android/phone/mrpc/core/u;

    invoke-virtual {v5, v4}, Lcom/alipay/android/phone/mrpc/core/u;->b(Ljava/lang/Class;)Lcom/alipay/android/phone/mrpc/core/v;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p2, v4, v3}, Lcom/alipay/android/phone/mrpc/core/y$a;->a(Lcom/alipay/android/phone/mrpc/core/v;Ljava/lang/annotation/Annotation;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    return v0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/alipay/android/phone/mrpc/core/RpcException;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/alipay/android/phone/mrpc/core/RpcException;

    throw v0

    :cond_3
    new-instance v1, Lcom/alipay/android/phone/mrpc/core/RpcException;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alipay/android/phone/mrpc/core/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private b(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;ILcom/alipay/android/phone/mrpc/core/q;Lcom/alipay/android/phone/mrpc/core/a/c/a;)Lcom/alipay/android/phone/mrpc/core/a/d;
    .locals 7

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/y;->g:Lcom/alipay/android/phone/mrpc/core/a/c/b;

    move v1, p4

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/phone/mrpc/core/a/c/b;->a(ILjava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/android/phone/mrpc/core/q;Lcom/alipay/android/phone/mrpc/core/a/c/a;)Lcom/alipay/android/phone/mrpc/core/a/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/mrpc/core/y;->a:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/mrpc/core/y;->b:Ljava/lang/ThreadLocal;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/alipay/android/phone/mrpc/core/u;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/y;->e:Lcom/alipay/android/phone/mrpc/core/u;

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/android/phone/mrpc/core/q;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "Lcom/alipay/android/phone/mrpc/core/q;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mrpc/core/RpcException;
        }
    .end annotation

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "RpcInvoker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ThreadId=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]  invoke. object=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]  methodName=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/mrpc/core/c/i;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalThreadStateException;

    const-string/jumbo v3, "can\'t call rpc in main thread."

    invoke-direct {v2, v3}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sget-object v2, Lcom/alipay/android/phone/mrpc/core/y;->a:Ljava/lang/ThreadLocal;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v2, Lcom/alipay/android/phone/mrpc/core/y;->b:Ljava/lang/ThreadLocal;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/phone/mrpc/core/y;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v10

    const/4 v9, 0x0

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/alipay/android/phone/mrpc/core/y;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;Lcom/alipay/android/phone/mrpc/core/q;)V

    move-object/from16 v0, p0

    iget-byte v2, v0, Lcom/alipay/android/phone/mrpc/core/y;->c:B

    if-nez v2, :cond_4

    new-instance v8, Lcom/alipay/android/phone/mrpc/core/a/c/a;

    invoke-direct {v8}, Lcom/alipay/android/phone/mrpc/core/a/c/a;-><init>()V

    invoke-static/range {p3 .. p4}, Lcom/alipay/android/phone/mrpc/core/c/f;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move v6, v10

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/alipay/android/phone/mrpc/core/y;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;ILcom/alipay/android/phone/mrpc/core/q;Lcom/alipay/android/phone/mrpc/core/a/c/a;)Lcom/alipay/android/phone/mrpc/core/s;
    :try_end_0
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v3, v8}, Lcom/alipay/android/phone/mrpc/core/y;->a(Ljava/lang/reflect/Method;Lcom/alipay/android/phone/mrpc/core/s;Lcom/alipay/android/phone/mrpc/core/a/c/a;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v14

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v6

    const-string/jumbo v7, "RpcInvoker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ThreadId=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] methodName=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] invokeTiming=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v7, v4}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v2

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/s;->b()[B

    move-result-object v4

    :goto_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/alipay/android/phone/mrpc/core/y;->a(Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;Lcom/alipay/android/phone/mrpc/core/q;)V

    sget-object v2, Lcom/alipay/android/phone/mrpc/core/y;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/alipay/android/phone/mrpc/core/y;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/mrpc/core/y;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    return-object v2

    :catch_0
    move-exception v2

    move-object v12, v9

    move-object v9, v2

    :goto_4
    :try_start_2
    invoke-static/range {p3 .. p4}, Lcom/alipay/android/phone/mrpc/core/c/f;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/alipay/android/phone/mrpc/core/y;->a(Lcom/alipay/android/phone/mrpc/core/RpcException;Ljava/lang/String;)V

    invoke-static/range {p3 .. p4}, Lcom/alipay/android/phone/mrpc/core/c/f;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/alipay/android/phone/mrpc/core/RpcException;->setOperationType(Ljava/lang/String;)V

    if-eqz v12, :cond_1

    invoke-virtual {v12}, Lcom/alipay/android/phone/mrpc/core/s;->b()[B

    move-result-object v4

    :goto_5
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    invoke-direct/range {v2 .. v10}, Lcom/alipay/android/phone/mrpc/core/y;->a(Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;Lcom/alipay/android/phone/mrpc/core/RpcException;Lcom/alipay/android/phone/mrpc/core/q;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v14

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v4

    const-string/jumbo v5, "RpcInvoker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ThreadId=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] methodName=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] invokeTiming=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v11

    move-object v3, v12

    goto/16 :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_5

    :catchall_0
    move-exception v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v14

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v3

    const-string/jumbo v6, "RpcInvoker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ThreadId=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] methodName=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] invokeTiming=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v6, v4}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_2

    :catch_1
    move-exception v9

    move-object v12, v3

    goto/16 :goto_4

    :cond_3
    move-object v2, v10

    goto/16 :goto_3

    :cond_4
    move-object v2, v11

    move-object v3, v9

    goto/16 :goto_0
.end method
