.class public Lcom/facebook/ads/internal/adapters/b/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/facebook/ads/internal/adapters/b/m;

.field private final c:Lcom/facebook/ads/internal/adapters/b/e;

.field private final d:Lcom/facebook/ads/internal/adapters/b/i;

.field private final e:Lcom/facebook/ads/internal/adapters/b/b;

.field private final f:Lcom/facebook/ads/internal/adapters/b/d;

.field private final g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/adapters/b/m;Lcom/facebook/ads/internal/adapters/b/e;Lcom/facebook/ads/internal/adapters/b/i;Lcom/facebook/ads/internal/adapters/b/b;Lcom/facebook/ads/internal/adapters/b/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/b/o;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/b/o;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/internal/adapters/b/o;->b:Lcom/facebook/ads/internal/adapters/b/m;

    iput-object p4, p0, Lcom/facebook/ads/internal/adapters/b/o;->c:Lcom/facebook/ads/internal/adapters/b/e;

    iput-object p5, p0, Lcom/facebook/ads/internal/adapters/b/o;->d:Lcom/facebook/ads/internal/adapters/b/i;

    iput-object p6, p0, Lcom/facebook/ads/internal/adapters/b/o;->e:Lcom/facebook/ads/internal/adapters/b/b;

    iput-object p7, p0, Lcom/facebook/ads/internal/adapters/b/o;->f:Lcom/facebook/ads/internal/adapters/b/d;

    return-void
.end method

.method public static a(Lcom/facebook/ads/internal/adapters/b/k;)Lcom/facebook/ads/internal/adapters/b/o;
    .locals 10

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/b/k;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/adapters/b/l;

    new-instance v9, Lcom/facebook/ads/internal/adapters/b/o;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/b/k;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/b/k;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/b/k;->a()Lcom/facebook/ads/internal/adapters/b/m;

    move-result-object v4

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/l;->a()Lcom/facebook/ads/internal/adapters/b/e;

    move-result-object v5

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/l;->b()Lcom/facebook/ads/internal/adapters/b/i;

    move-result-object v6

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/b/k;->b()Lcom/facebook/ads/internal/adapters/b/b;

    move-result-object v7

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/l;->c()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object v8

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/internal/adapters/b/o;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/adapters/b/m;Lcom/facebook/ads/internal/adapters/b/e;Lcom/facebook/ads/internal/adapters/b/i;Lcom/facebook/ads/internal/adapters/b/b;Lcom/facebook/ads/internal/adapters/b/d;)V

    return-object v9
.end method

.method public static a(Lcom/facebook/ads/internal/adapters/b/q;)Lcom/facebook/ads/internal/adapters/b/o;
    .locals 9

    new-instance v8, Lcom/facebook/ads/internal/adapters/b/o;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/b/q;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/b/q;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/b/q;->f()Lcom/facebook/ads/internal/adapters/b/m;

    move-result-object v3

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/b/q;->g()Lcom/facebook/ads/internal/adapters/b/e;

    move-result-object v4

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/b/q;->h()Lcom/facebook/ads/internal/adapters/b/i;

    move-result-object v5

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/b/q;->i()Lcom/facebook/ads/internal/adapters/b/b;

    move-result-object v6

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/b/q;->j()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/internal/adapters/b/o;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/adapters/b/m;Lcom/facebook/ads/internal/adapters/b/e;Lcom/facebook/ads/internal/adapters/b/i;Lcom/facebook/ads/internal/adapters/b/b;Lcom/facebook/ads/internal/adapters/b/d;)V

    return-object v8
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/o;->g:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/facebook/ads/internal/adapters/b/m;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/o;->b:Lcom/facebook/ads/internal/adapters/b/m;

    return-object v0
.end method

.method public c()Lcom/facebook/ads/internal/adapters/b/e;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/o;->c:Lcom/facebook/ads/internal/adapters/b/e;

    return-object v0
.end method

.method public d()Lcom/facebook/ads/internal/adapters/b/i;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/o;->d:Lcom/facebook/ads/internal/adapters/b/i;

    return-object v0
.end method

.method public e()Lcom/facebook/ads/internal/adapters/b/b;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/o;->e:Lcom/facebook/ads/internal/adapters/b/b;

    return-object v0
.end method

.method public f()Lcom/facebook/ads/internal/adapters/b/d;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/o;->f:Lcom/facebook/ads/internal/adapters/b/d;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/o;->a:Ljava/lang/String;

    return-object v0
.end method
