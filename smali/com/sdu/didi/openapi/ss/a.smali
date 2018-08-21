.class public Lcom/sdu/didi/openapi/ss/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdu/didi/openapi/ss/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/sdu/didi/openapi/ss/a;


# instance fields
.field private b:Lss/t;


# direct methods
.method private constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lss/t$a;

    invoke-direct {v0}, Lss/t$a;-><init>()V

    new-instance v1, Lcom/sdu/didi/openapi/ss/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "didi.sdk"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sdu/didi/openapi/utils/Utils;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sdu/didi/openapi/ss/a$a;-><init>(Lcom/sdu/didi/openapi/ss/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lss/t$a;->a(Lss/r;)Lss/t$a;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Lss/t$a;->a(JLjava/util/concurrent/TimeUnit;)Lss/t$a;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Lss/t$a;->b(JLjava/util/concurrent/TimeUnit;)Lss/t$a;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Lss/t$a;->c(JLjava/util/concurrent/TimeUnit;)Lss/t$a;

    invoke-virtual {v0}, Lss/t$a;->a()Lss/t;

    move-result-object v0

    iput-object v0, p0, Lcom/sdu/didi/openapi/ss/a;->b:Lss/t;

    return-void
.end method

.method public static declared-synchronized a()Lcom/sdu/didi/openapi/ss/a;
    .locals 2

    const-class v1, Lcom/sdu/didi/openapi/ss/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sdu/didi/openapi/ss/a;->a:Lcom/sdu/didi/openapi/ss/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sdu/didi/openapi/ss/a;

    invoke-direct {v0}, Lcom/sdu/didi/openapi/ss/a;-><init>()V

    sput-object v0, Lcom/sdu/didi/openapi/ss/a;->a:Lcom/sdu/didi/openapi/ss/a;

    :cond_0
    sget-object v0, Lcom/sdu/didi/openapi/ss/a;->a:Lcom/sdu/didi/openapi/ss/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    new-instance v2, Lss/w$a;

    invoke-direct {v2}, Lss/w$a;-><init>()V

    invoke-static {p1}, Lss/q;->e(Ljava/lang/String;)Lss/q;

    move-result-object v0

    invoke-virtual {v0}, Lss/q;->m()Lss/q$a;

    move-result-object v3

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lss/q$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/q$a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string/jumbo v0, ""

    :goto_1
    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Lss/q$a;->c()Lss/q;

    move-result-object v0

    invoke-virtual {v2, v0}, Lss/w$a;->a(Lss/q;)Lss/w$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/w$a;->a()Lss/w;

    move-result-object v0

    iget-object v1, p0, Lcom/sdu/didi/openapi/ss/a;->b:Lss/t;

    invoke-virtual {v1, v0}, Lss/t;->a(Lss/w;)Lss/e;

    move-result-object v0

    invoke-interface {v0}, Lss/e;->a()Lss/y;

    move-result-object v0

    invoke-virtual {v0}, Lss/y;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lss/y;->f()Lss/z;

    move-result-object v0

    invoke-virtual {v0}, Lss/z;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string/jumbo v0, ""
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lss/w$a;

    invoke-direct {v0}, Lss/w$a;-><init>()V

    const-string/jumbo v1, "application/x-www-form-urlencoded"

    invoke-static {v1}, Lss/s;->a(Ljava/lang/String;)Lss/s;

    move-result-object v1

    invoke-static {p2}, Lcom/sdu/didi/openapi/utils/Utils;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lss/x;->a(Lss/s;Ljava/lang/String;)Lss/x;

    move-result-object v1

    invoke-virtual {v0, p1}, Lss/w$a;->a(Ljava/lang/String;)Lss/w$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lss/w$a;->a(Lss/x;)Lss/w$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/w$a;->a()Lss/w;

    move-result-object v0

    iget-object v1, p0, Lcom/sdu/didi/openapi/ss/a;->b:Lss/t;

    invoke-virtual {v1, v0}, Lss/t;->a(Lss/w;)Lss/e;

    move-result-object v0

    invoke-interface {v0}, Lss/e;->a()Lss/y;

    move-result-object v0

    invoke-virtual {v0}, Lss/y;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lss/y;->f()Lss/z;

    move-result-object v0

    invoke-virtual {v0}, Lss/z;->e()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string/jumbo v0, ""

    goto :goto_0
.end method
