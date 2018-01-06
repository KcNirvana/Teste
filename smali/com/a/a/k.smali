.class public final Lcom/a/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/k$a;
    }
.end annotation


# instance fields
.field final a:Lcom/a/a/t;

.field final b:Lcom/a/a/ab;

.field private final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/a/a/c/a",
            "<*>;",
            "Lcom/a/a/k$a",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/a/a/c/a",
            "<*>;",
            "Lcom/a/a/ai",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/ak;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/a/a/b/c;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Z


# direct methods
.method public constructor <init>()V
    .locals 12

    const/4 v4, 0x0

    sget-object v1, Lcom/a/a/b/p;->a:Lcom/a/a/b/p;

    sget-object v2, Lcom/a/a/d;->a:Lcom/a/a/d;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v7, 0x1

    sget-object v10, Lcom/a/a/ae;->a:Lcom/a/a/ae;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    invoke-direct/range {v0 .. v11}, Lcom/a/a/k;-><init>(Lcom/a/a/b/p;Lcom/a/a/j;Ljava/util/Map;ZZZZZZLcom/a/a/ae;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcom/a/a/b/p;Lcom/a/a/j;Ljava/util/Map;ZZZZZZLcom/a/a/ae;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/p;",
            "Lcom/a/a/j;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/a/a/r",
            "<*>;>;ZZZZZZ",
            "Lcom/a/a/ae;",
            "Ljava/util/List",
            "<",
            "Lcom/a/a/ak;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/a/a/k;->c:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/k;->d:Ljava/util/Map;

    new-instance v0, Lcom/a/a/l;

    invoke-direct {v0, p0}, Lcom/a/a/l;-><init>(Lcom/a/a/k;)V

    iput-object v0, p0, Lcom/a/a/k;->a:Lcom/a/a/t;

    new-instance v0, Lcom/a/a/m;

    invoke-direct {v0, p0}, Lcom/a/a/m;-><init>(Lcom/a/a/k;)V

    iput-object v0, p0, Lcom/a/a/k;->b:Lcom/a/a/ab;

    new-instance v0, Lcom/a/a/b/c;

    invoke-direct {v0, p3}, Lcom/a/a/b/c;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/a/a/k;->f:Lcom/a/a/b/c;

    iput-boolean p4, p0, Lcom/a/a/k;->g:Z

    iput-boolean p6, p0, Lcom/a/a/k;->i:Z

    iput-boolean p7, p0, Lcom/a/a/k;->h:Z

    iput-boolean p8, p0, Lcom/a/a/k;->j:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/a/a/b/a/t;->Q:Lcom/a/a/ak;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/a/a/b/a/k;->a:Lcom/a/a/ak;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/a/a/b/a/t;->x:Lcom/a/a/ak;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/a/a/b/a/t;->m:Lcom/a/a/ak;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/a/a/b/a/t;->g:Lcom/a/a/ak;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/a/a/b/a/t;->i:Lcom/a/a/ak;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/a/a/b/a/t;->k:Lcom/a/a/ak;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    invoke-direct {p0, p10}, Lcom/a/a/k;->a(Lcom/a/a/ae;)Lcom/a/a/ai;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/a/a/b/a/t;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/ai;)Lcom/a/a/ak;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-direct {p0, p9}, Lcom/a/a/k;->a(Z)Lcom/a/a/ai;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/a/a/b/a/t;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/ai;)Lcom/a/a/ak;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-direct {p0, p9}, Lcom/a/a/k;->b(Z)Lcom/a/a/ai;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/a/a/b/a/t;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/ai;)Lcom/a/a/ak;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/a/a/b/a/t;->r:Lcom/a/a/ak;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/a/a/b/a/t;->t:Lcom/a/a/ak;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/a/a/b/a/t;->z:Lcom/a/a/ak;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/a/a/b/a/t;->B:Lcom/a/a/ak;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/a/a/b/a/t;->v:Lcom/a/a/ai;

    invoke-static {v1, v2}, Lcom/a/a/b/a/t;->a(Ljava/lang/Class;Lcom/a/a/ai;)Lcom/a/a/ak;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/a/a/b/a/t;->w:Lcom/a/a/ai;

    invoke-static {v1, v2}, Lcom/a/a/b/a/t;->a(Ljava/lang/Class;Lcom/a/a/ai;)Lcom/a/a/ak;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/a/a/b/a/t;->D:Lcom/a/a/ak;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/a/a/b/a/t;->F:Lcom/a/a/ak;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/a/a/b/a/t;->J:Lcom/a/a/ak;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/a/a/b/a/t;->O:Lcom/a/a/ak;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/a/a/b/a/t;->H:Lcom/a/a/ak;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/a/a/b/a/t;->d:Lcom/a/a/ak;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/a/a/b/a/d;->a:Lcom/a/a/ak;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/a/a/b/a/t;->M:Lcom/a/a/ak;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/a/a/b/a/q;->a:Lcom/a/a/ak;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/a/a/b/a/o;->a:Lcom/a/a/ak;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/a/a/b/a/t;->K:Lcom/a/a/ak;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/a/a/b/a/a;->a:Lcom/a/a/ak;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/a/a/b/a/t;->R:Lcom/a/a/ak;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/a/a/b/a/t;->b:Lcom/a/a/ak;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/a/a/b/a/c;

    iget-object v2, p0, Lcom/a/a/k;->f:Lcom/a/a/b/c;

    invoke-direct {v1, v2}, Lcom/a/a/b/a/c;-><init>(Lcom/a/a/b/c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/a/a/b/a/j;

    iget-object v2, p0, Lcom/a/a/k;->f:Lcom/a/a/b/c;

    invoke-direct {v1, v2, p5}, Lcom/a/a/b/a/j;-><init>(Lcom/a/a/b/c;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/a/a/b/a/m;

    iget-object v2, p0, Lcom/a/a/k;->f:Lcom/a/a/b/c;

    invoke-direct {v1, v2, p2, p1}, Lcom/a/a/b/a/m;-><init>(Lcom/a/a/b/c;Lcom/a/a/j;Lcom/a/a/b/p;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/k;->e:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/a/a/ae;)Lcom/a/a/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/ae;",
            ")",
            "Lcom/a/a/ai",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/a/a/ae;->a:Lcom/a/a/ae;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/a/a/b/a/t;->n:Lcom/a/a/ai;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/a/a/p;

    invoke-direct {v0, p0}, Lcom/a/a/p;-><init>(Lcom/a/a/k;)V

    goto :goto_0
.end method

.method private a(Z)Lcom/a/a/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/a/a/ai",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/a/a/b/a/t;->p:Lcom/a/a/ai;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/a/a/n;

    invoke-direct {v0, p0}, Lcom/a/a/n;-><init>(Lcom/a/a/k;)V

    goto :goto_0
.end method

.method private a(Ljava/io/Writer;)Lcom/a/a/d/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/a/a/k;->i:Z

    if-eqz v0, :cond_0

    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/a/a/d/d;

    invoke-direct {v0, p1}, Lcom/a/a/d/d;-><init>(Ljava/io/Writer;)V

    iget-boolean v1, p0, Lcom/a/a/k;->j:Z

    if-eqz v1, :cond_1

    const-string v1, "  "

    invoke-virtual {v0, v1}, Lcom/a/a/d/d;->c(Ljava/lang/String;)V

    :cond_1
    iget-boolean v1, p0, Lcom/a/a/k;->g:Z

    invoke-virtual {v0, v1}, Lcom/a/a/d/d;->d(Z)V

    return-object v0
.end method

.method private a(D)V
    .locals 3

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid double value as per JSON specification. To override this"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/a/a/k;D)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/a/a/k;->a(D)V

    return-void
.end method

.method private static a(Ljava/lang/Object;Lcom/a/a/d/a;)V
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/a/a/d/a;->f()Lcom/a/a/d/c;

    move-result-object v0

    sget-object v1, Lcom/a/a/d/c;->j:Lcom/a/a/d/c;

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/a/a/w;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lcom/a/a/w;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/a/a/d/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/a/a/ad;

    invoke-direct {v1, v0}, Lcom/a/a/ad;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/a/a/w;

    invoke-direct {v1, v0}, Lcom/a/a/w;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-void
.end method

.method private b(Z)Lcom/a/a/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/a/a/ai",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/a/a/b/a/t;->o:Lcom/a/a/ai;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/a/a/o;

    invoke-direct {v0, p0}, Lcom/a/a/o;-><init>(Lcom/a/a/k;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/a/a/ak;Lcom/a/a/c/a;)Lcom/a/a/ai;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/ak;",
            "Lcom/a/a/c/a",
            "<TT;>;)",
            "Lcom/a/a/ai",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/a/a/k;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/ak;

    if-nez v1, :cond_1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {v0, p0, p2}, Lcom/a/a/ak;->create(Lcom/a/a/k;Lcom/a/a/c/a;)Lcom/a/a/ai;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GSON cannot serialize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/a/a/c/a;)Lcom/a/a/ai;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/c/a",
            "<TT;>;)",
            "Lcom/a/a/ai",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/k;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/ai;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/a/a/k;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/a/a/k;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    move-object v2, v1

    move v1, v0

    :goto_1
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/k$a;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v3, Lcom/a/a/k$a;

    invoke-direct {v3}, Lcom/a/a/k$a;-><init>()V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/a/a/k;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/ak;

    invoke-interface {v0, p0, p1}, Lcom/a/a/ak;->create(Lcom/a/a/k;Lcom/a/a/c/a;)Lcom/a/a/ai;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v3, v0}, Lcom/a/a/k$a;->a(Lcom/a/a/ai;)V

    iget-object v3, p0, Lcom/a/a/k;->d:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/a/a/k;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/a/a/k;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_4
    throw v0

    :cond_5
    move-object v2, v0

    goto :goto_1
.end method

.method public a(Ljava/lang/Class;)Lcom/a/a/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/a/a/ai",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/a/a/c/a;->b(Ljava/lang/Class;)Lcom/a/a/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/k;->a(Lcom/a/a/c/a;)Lcom/a/a/ai;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/a/a/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/d/a;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/w;,
            Lcom/a/a/ad;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/a/a/d/a;->p()Z

    move-result v2

    invoke-virtual {p1, v1}, Lcom/a/a/d/a;->a(Z)V

    :try_start_0
    invoke-virtual {p1}, Lcom/a/a/d/a;->f()Lcom/a/a/d/c;

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/a/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/a/a/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/k;->a(Lcom/a/a/c/a;)Lcom/a/a/ai;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/a/ai;->read(Lcom/a/a/d/a;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {p1, v2}, Lcom/a/a/d/a;->a(Z)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v2}, Lcom/a/a/d/a;->a(Z)V

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Lcom/a/a/ad;

    invoke-direct {v1, v0}, Lcom/a/a/ad;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v2}, Lcom/a/a/d/a;->a(Z)V

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/a/a/ad;

    invoke-direct {v1, v0}, Lcom/a/a/ad;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/a/a/ad;

    invoke-direct {v1, v0}, Lcom/a/a/ad;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/w;,
            Lcom/a/a/ad;
        }
    .end annotation

    new-instance v0, Lcom/a/a/d/a;

    invoke-direct {v0, p1}, Lcom/a/a/d/a;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0, p2}, Lcom/a/a/k;->a(Lcom/a/a/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/a/a/k;->a(Ljava/lang/Object;Lcom/a/a/d/a;)V

    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/ad;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/a/a/k;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Lcom/a/a/b/y;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/ad;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/a/a/k;->a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/a/a/v;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/a/a/k;->a(Lcom/a/a/v;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Lcom/a/a/x;->a:Lcom/a/a/x;

    invoke-virtual {p0, v0}, Lcom/a/a/k;->a(Lcom/a/a/v;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/a/a/k;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/a/a/k;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/a/a/v;Lcom/a/a/d/d;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/w;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/a/a/d/d;->g()Z

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/a/a/d/d;->b(Z)V

    invoke-virtual {p2}, Lcom/a/a/d/d;->h()Z

    move-result v2

    iget-boolean v0, p0, Lcom/a/a/k;->h:Z

    invoke-virtual {p2, v0}, Lcom/a/a/d/d;->c(Z)V

    invoke-virtual {p2}, Lcom/a/a/d/d;->i()Z

    move-result v3

    iget-boolean v0, p0, Lcom/a/a/k;->g:Z

    invoke-virtual {p2, v0}, Lcom/a/a/d/d;->d(Z)V

    :try_start_0
    invoke-static {p1, p2}, Lcom/a/a/b/z;->a(Lcom/a/a/v;Lcom/a/a/d/d;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, v1}, Lcom/a/a/d/d;->b(Z)V

    invoke-virtual {p2, v2}, Lcom/a/a/d/d;->c(Z)V

    invoke-virtual {p2, v3}, Lcom/a/a/d/d;->d(Z)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v4, Lcom/a/a/w;

    invoke-direct {v4, v0}, Lcom/a/a/w;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p2, v1}, Lcom/a/a/d/d;->b(Z)V

    invoke-virtual {p2, v2}, Lcom/a/a/d/d;->c(Z)V

    invoke-virtual {p2, v3}, Lcom/a/a/d/d;->d(Z)V

    throw v0
.end method

.method public a(Lcom/a/a/v;Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/w;
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcom/a/a/b/z;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/k;->a(Ljava/io/Writer;)Lcom/a/a/d/d;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/a/a/k;->a(Lcom/a/a/v;Lcom/a/a/d/d;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/a/a/d/d;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/w;
        }
    .end annotation

    invoke-static {p2}, Lcom/a/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/a/a/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/k;->a(Lcom/a/a/c/a;)Lcom/a/a/ai;

    move-result-object v0

    invoke-virtual {p3}, Lcom/a/a/d/d;->g()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lcom/a/a/d/d;->b(Z)V

    invoke-virtual {p3}, Lcom/a/a/d/d;->h()Z

    move-result v2

    iget-boolean v3, p0, Lcom/a/a/k;->h:Z

    invoke-virtual {p3, v3}, Lcom/a/a/d/d;->c(Z)V

    invoke-virtual {p3}, Lcom/a/a/d/d;->i()Z

    move-result v3

    iget-boolean v4, p0, Lcom/a/a/k;->g:Z

    invoke-virtual {p3, v4}, Lcom/a/a/d/d;->d(Z)V

    :try_start_0
    invoke-virtual {v0, p3, p1}, Lcom/a/a/ai;->write(Lcom/a/a/d/d;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, v1}, Lcom/a/a/d/d;->b(Z)V

    invoke-virtual {p3, v2}, Lcom/a/a/d/d;->c(Z)V

    invoke-virtual {p3, v3}, Lcom/a/a/d/d;->d(Z)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v4, Lcom/a/a/w;

    invoke-direct {v4, v0}, Lcom/a/a/w;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p3, v1}, Lcom/a/a/d/d;->b(Z)V

    invoke-virtual {p3, v2}, Lcom/a/a/d/d;->c(Z)V

    invoke-virtual {p3, v3}, Lcom/a/a/d/d;->d(Z)V

    throw v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/w;
        }
    .end annotation

    :try_start_0
    invoke-static {p3}, Lcom/a/a/b/z;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/k;->a(Ljava/io/Writer;)Lcom/a/a/d/d;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/a/a/k;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/a/a/d/d;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/a/a/w;

    invoke-direct {v1, v0}, Lcom/a/a/w;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/a/a/k;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/k;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/k;->f:Lcom/a/a/b/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
