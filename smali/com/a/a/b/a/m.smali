.class public final Lcom/a/a/b/a/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/ak;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/b/a/m$a;,
        Lcom/a/a/b/a/m$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/b/c;

.field private final b:Lcom/a/a/j;

.field private final c:Lcom/a/a/b/p;


# direct methods
.method public constructor <init>(Lcom/a/a/b/c;Lcom/a/a/j;Lcom/a/a/b/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/b/a/m;->a:Lcom/a/a/b/c;

    iput-object p2, p0, Lcom/a/a/b/a/m;->b:Lcom/a/a/j;

    iput-object p3, p0, Lcom/a/a/b/a/m;->c:Lcom/a/a/b/p;

    return-void
.end method

.method private a(Lcom/a/a/k;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/a/a/c/a;ZZ)Lcom/a/a/b/a/m$b;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/k;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Lcom/a/a/c/a",
            "<*>;ZZ)",
            "Lcom/a/a/b/a/m$b;"
        }
    .end annotation

    invoke-virtual {p4}, Lcom/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/b/y;->a(Ljava/lang/reflect/Type;)Z

    move-result v8

    new-instance v0, Lcom/a/a/b/a/n;

    move-object v1, p0

    move-object v2, p3

    move v3, p5

    move v4, p6

    move-object v5, p1

    move-object v6, p4

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/a/a/b/a/n;-><init>(Lcom/a/a/b/a/m;Ljava/lang/String;ZZLcom/a/a/k;Lcom/a/a/c/a;Ljava/lang/reflect/Field;Z)V

    return-object v0
.end method

.method private a(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/a/a/a/b;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/b/a/m;->b:Lcom/a/a/j;

    invoke-interface {v0, p1}, Lcom/a/a/j;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/a/a/k;Lcom/a/a/c/a;Ljava/lang/Class;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/k;",
            "Lcom/a/a/c/a",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/a/a/b/a/m$b;",
            ">;"
        }
    .end annotation

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v9

    :goto_1
    const-class v0, Ljava/lang/Object;

    if-eq p3, v0, :cond_4

    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    array-length v11, v10

    const/4 v0, 0x0

    move v8, v0

    :goto_2
    if-ge v8, v11, :cond_3

    aget-object v2, v10, v8

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/a/a/b/a/m;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v5

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/a/a/b/a/m;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v6

    if-nez v5, :cond_2

    if-nez v6, :cond_2

    :cond_1
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p2}, Lcom/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/a/a/b/a/m;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/a/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/a/a/c/a;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/a/a/b/a/m;->a(Lcom/a/a/k;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/a/a/c/a;ZZ)Lcom/a/a/b/a/m$b;

    move-result-object v0

    iget-object v1, v0, Lcom/a/a/b/a/m$b;->g:Ljava/lang/String;

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/a/m$b;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " declares multiple JSON fields named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/a/a/b/a/m$b;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {p2}, Lcom/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/a/a/c/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object p3

    goto :goto_1

    :cond_4
    move-object v0, v7

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Field;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/a/a/b/a/m;->c:Lcom/a/a/b/p;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/a/a/b/p;->a(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/b/a/m;->c:Lcom/a/a/b/p;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/b/p;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public create(Lcom/a/a/k;Lcom/a/a/c/a;)Lcom/a/a/ai;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/k;",
            "Lcom/a/a/c/a",
            "<TT;>;)",
            "Lcom/a/a/ai",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object v2

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/a/a/b/a/m;->a:Lcom/a/a/b/c;

    invoke-virtual {v1, p2}, Lcom/a/a/b/c;->a(Lcom/a/a/c/a;)Lcom/a/a/b/x;

    move-result-object v3

    new-instance v1, Lcom/a/a/b/a/m$a;

    invoke-direct {p0, p1, p2, v2}, Lcom/a/a/b/a/m;->a(Lcom/a/a/k;Lcom/a/a/c/a;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v3, v2, v0}, Lcom/a/a/b/a/m$a;-><init>(Lcom/a/a/b/x;Ljava/util/Map;Lcom/a/a/b/a/n;)V

    move-object v0, v1

    goto :goto_0
.end method
