.class public final Lcom/google/ads/interactivemedia/v3/internal/ga;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/internal/gz;

.field private b:Lcom/google/ads/interactivemedia/v3/internal/go;

.field private c:Lcom/google/ads/interactivemedia/v3/internal/fy;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/ads/interactivemedia/v3/internal/gb<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/gq;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/gq;",
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

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/gz;->a:Lcom/google/ads/interactivemedia/v3/internal/gz;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->a:Lcom/google/ads/interactivemedia/v3/internal/gz;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/go;->a:Lcom/google/ads/interactivemedia/v3/internal/go;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->b:Lcom/google/ads/interactivemedia/v3/internal/go;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/fx;->a:Lcom/google/ads/interactivemedia/v3/internal/fx;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->c:Lcom/google/ads/interactivemedia/v3/internal/fy;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->f:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->g:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->i:I

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->j:I

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->k:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->l:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->m:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->n:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->o:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->p:Z

    return-void
.end method

.method private a(Ljava/lang/String;IILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/gq;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/fu;

    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/fu;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    if-eq p3, p1, :cond_1

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/fu;

    invoke-direct {p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/fu;-><init>(II)V

    :goto_0
    const-class p2, Ljava/util/Date;

    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/hw;->b(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/hw;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/hs;->a(Lcom/google/ads/interactivemedia/v3/internal/hw;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/gq;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p2, Ljava/sql/Timestamp;

    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/hw;->b(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/hw;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/hs;->a(Lcom/google/ads/interactivemedia/v3/internal/hw;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/gq;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p2, Ljava/sql/Date;

    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/hw;->b(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/hw;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/hs;->a(Lcom/google/ads/interactivemedia/v3/internal/hw;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/gq;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Lcom/google/ads/interactivemedia/v3/internal/fz;
    .locals 14

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->e:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v12}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->f:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->h:Ljava/lang/String;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->i:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->j:I

    invoke-direct {p0, v0, v1, v2, v12}, Lcom/google/ads/interactivemedia/v3/internal/ga;->a(Ljava/lang/String;IILjava/util/List;)V

    new-instance v13, Lcom/google/ads/interactivemedia/v3/internal/fz;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->a:Lcom/google/ads/interactivemedia/v3/internal/gz;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->c:Lcom/google/ads/interactivemedia/v3/internal/fy;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->d:Ljava/util/Map;

    iget-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->g:Z

    iget-boolean v5, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->k:Z

    iget-boolean v6, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->o:Z

    iget-boolean v7, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->m:Z

    iget-boolean v8, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->n:Z

    iget-boolean v9, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->p:Z

    iget-boolean v10, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->l:Z

    iget-object v11, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->b:Lcom/google/ads/interactivemedia/v3/internal/go;

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/google/ads/interactivemedia/v3/internal/fz;-><init>(Lcom/google/ads/interactivemedia/v3/internal/gz;Lcom/google/ads/interactivemedia/v3/internal/fy;Ljava/util/Map;ZZZZZZZLcom/google/ads/interactivemedia/v3/internal/go;Ljava/util/List;)V

    return-object v13
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/fv;)Lcom/google/ads/interactivemedia/v3/internal/ga;
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->a:Lcom/google/ads/interactivemedia/v3/internal/gz;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/gz;->a(Lcom/google/ads/interactivemedia/v3/internal/fv;ZZ)Lcom/google/ads/interactivemedia/v3/internal/gz;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->a:Lcom/google/ads/interactivemedia/v3/internal/gz;

    return-object p0
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/gq;)Lcom/google/ads/interactivemedia/v3/internal/ga;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/ga;
    .locals 3

    instance-of v0, p2, Lcom/google/ads/interactivemedia/v3/internal/gm;

    if-nez v0, :cond_1

    instance-of v1, p2, Lcom/google/ads/interactivemedia/v3/internal/ge;

    if-nez v1, :cond_1

    instance-of v1, p2, Lcom/google/ads/interactivemedia/v3/internal/gb;

    if-nez v1, :cond_1

    instance-of v1, p2, Lcom/google/ads/interactivemedia/v3/internal/gp;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/gw;->a(Z)V

    instance-of v1, p2, Lcom/google/ads/interactivemedia/v3/internal/gb;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->d:Ljava/util/Map;

    move-object v2, p2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/gb;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez v0, :cond_3

    instance-of v0, p2, Lcom/google/ads/interactivemedia/v3/internal/ge;

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/hw;->a(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/internal/hw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->e:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/hs;->b(Lcom/google/ads/interactivemedia/v3/internal/hw;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/gq;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    instance-of v0, p2, Lcom/google/ads/interactivemedia/v3/internal/gp;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ga;->e:Ljava/util/List;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/hw;->a(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/internal/hw;

    move-result-object p1

    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/gp;

    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/hu;->a(Lcom/google/ads/interactivemedia/v3/internal/hw;Lcom/google/ads/interactivemedia/v3/internal/gp;)Lcom/google/ads/interactivemedia/v3/internal/gq;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object p0
.end method
