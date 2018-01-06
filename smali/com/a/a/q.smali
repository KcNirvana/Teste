.class public final Lcom/a/a/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/a/a/b/p;

.field private b:Lcom/a/a/ae;

.field private c:Lcom/a/a/j;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/a/a/r",
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

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/ak;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/a/a/b/p;->a:Lcom/a/a/b/p;

    iput-object v0, p0, Lcom/a/a/q;->a:Lcom/a/a/b/p;

    sget-object v0, Lcom/a/a/ae;->a:Lcom/a/a/ae;

    iput-object v0, p0, Lcom/a/a/q;->b:Lcom/a/a/ae;

    sget-object v0, Lcom/a/a/d;->a:Lcom/a/a/d;

    iput-object v0, p0, Lcom/a/a/q;->c:Lcom/a/a/j;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/a/a/q;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/q;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/q;->f:Ljava/util/List;

    iput v1, p0, Lcom/a/a/q;->i:I

    iput v1, p0, Lcom/a/a/q;->j:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/q;->m:Z

    return-void
.end method

.method private a(Ljava/lang/String;IILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/a/a/ak;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x2

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/a/a/a;

    invoke-direct {v0, p1}, Lcom/a/a/a;-><init>(Ljava/lang/String;)V

    :goto_0
    const-class v1, Ljava/util/Date;

    invoke-static {v1}, Lcom/a/a/c/a;->b(Ljava/lang/Class;)Lcom/a/a/c/a;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/a/a/ah;->a(Lcom/a/a/c/a;Ljava/lang/Object;)Lcom/a/a/ak;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/sql/Timestamp;

    invoke-static {v1}, Lcom/a/a/c/a;->b(Ljava/lang/Class;)Lcom/a/a/c/a;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/a/a/ah;->a(Lcom/a/a/c/a;Ljava/lang/Object;)Lcom/a/a/ak;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/sql/Date;

    invoke-static {v1}, Lcom/a/a/c/a;->b(Ljava/lang/Class;)Lcom/a/a/c/a;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/a/a/ah;->a(Lcom/a/a/c/a;Ljava/lang/Object;)Lcom/a/a/ak;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    if-eq p2, v2, :cond_0

    if-eq p3, v2, :cond_0

    new-instance v0, Lcom/a/a/a;

    invoke-direct {v0, p2, p3}, Lcom/a/a/a;-><init>(II)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/a/a/q;
    .locals 1

    iget-object v0, p0, Lcom/a/a/q;->a:Lcom/a/a/b/p;

    invoke-virtual {v0}, Lcom/a/a/b/p;->b()Lcom/a/a/b/p;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/q;->a:Lcom/a/a/b/p;

    return-object p0
.end method

.method public a(D)Lcom/a/a/q;
    .locals 1

    iget-object v0, p0, Lcom/a/a/q;->a:Lcom/a/a/b/p;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/b/p;->a(D)Lcom/a/a/b/p;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/q;->a:Lcom/a/a/b/p;

    return-object p0
.end method

.method public a(Lcom/a/a/ak;)Lcom/a/a/q;
    .locals 1

    iget-object v0, p0, Lcom/a/a/q;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/a/a/q;
    .locals 2

    instance-of v0, p2, Lcom/a/a/ac;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/a/a/u;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/a/a/r;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/a/a/ai;

    if-eqz v0, :cond_5

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/a/a/b/a;->a(Z)V

    instance-of v0, p2, Lcom/a/a/r;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/a/a/q;->d:Ljava/util/Map;

    move-object v0, p2

    check-cast v0, Lcom/a/a/r;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    instance-of v0, p2, Lcom/a/a/ac;

    if-nez v0, :cond_2

    instance-of v0, p2, Lcom/a/a/u;

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {p1}, Lcom/a/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/a/a/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/q;->e:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/a/a/ah;->b(Lcom/a/a/c/a;Ljava/lang/Object;)Lcom/a/a/ak;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    instance-of v0, p2, Lcom/a/a/ai;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/a/a/q;->e:Ljava/util/List;

    invoke-static {p1}, Lcom/a/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/a/a/c/a;

    move-result-object v1

    check-cast p2, Lcom/a/a/ai;

    invoke-static {v1, p2}, Lcom/a/a/b/a/t;->a(Lcom/a/a/c/a;Lcom/a/a/ai;)Lcom/a/a/ak;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object p0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/a/a/k;
    .locals 12

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/a/a/q;->e:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v11}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v0, p0, Lcom/a/a/q;->f:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/a/a/q;->h:Ljava/lang/String;

    iget v1, p0, Lcom/a/a/q;->i:I

    iget v2, p0, Lcom/a/a/q;->j:I

    invoke-direct {p0, v0, v1, v2, v11}, Lcom/a/a/q;->a(Ljava/lang/String;IILjava/util/List;)V

    new-instance v0, Lcom/a/a/k;

    iget-object v1, p0, Lcom/a/a/q;->a:Lcom/a/a/b/p;

    iget-object v2, p0, Lcom/a/a/q;->c:Lcom/a/a/j;

    iget-object v3, p0, Lcom/a/a/q;->d:Ljava/util/Map;

    iget-boolean v4, p0, Lcom/a/a/q;->g:Z

    iget-boolean v5, p0, Lcom/a/a/q;->k:Z

    iget-boolean v6, p0, Lcom/a/a/q;->o:Z

    iget-boolean v7, p0, Lcom/a/a/q;->m:Z

    iget-boolean v8, p0, Lcom/a/a/q;->n:Z

    iget-boolean v9, p0, Lcom/a/a/q;->l:Z

    iget-object v10, p0, Lcom/a/a/q;->b:Lcom/a/a/ae;

    invoke-direct/range {v0 .. v11}, Lcom/a/a/k;-><init>(Lcom/a/a/b/p;Lcom/a/a/j;Ljava/util/Map;ZZZZZZLcom/a/a/ae;Ljava/util/List;)V

    return-object v0
.end method
