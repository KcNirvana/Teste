.class final Lcom/a/a/ah;
.super Lcom/a/a/ai;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/ah$1;,
        Lcom/a/a/ah$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/ai",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/ac;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/ac",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/a/a/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/u",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/a/a/k;

.field private final d:Lcom/a/a/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/c/a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/a/a/ak;

.field private f:Lcom/a/a/ai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/ai",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/a/a/ac;Lcom/a/a/u;Lcom/a/a/k;Lcom/a/a/c/a;Lcom/a/a/ak;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/ac",
            "<TT;>;",
            "Lcom/a/a/u",
            "<TT;>;",
            "Lcom/a/a/k;",
            "Lcom/a/a/c/a",
            "<TT;>;",
            "Lcom/a/a/ak;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/a/a/ai;-><init>()V

    iput-object p1, p0, Lcom/a/a/ah;->a:Lcom/a/a/ac;

    iput-object p2, p0, Lcom/a/a/ah;->b:Lcom/a/a/u;

    iput-object p3, p0, Lcom/a/a/ah;->c:Lcom/a/a/k;

    iput-object p4, p0, Lcom/a/a/ah;->d:Lcom/a/a/c/a;

    iput-object p5, p0, Lcom/a/a/ah;->e:Lcom/a/a/ak;

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/ac;Lcom/a/a/u;Lcom/a/a/k;Lcom/a/a/c/a;Lcom/a/a/ak;Lcom/a/a/ah$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/a/a/ah;-><init>(Lcom/a/a/ac;Lcom/a/a/u;Lcom/a/a/k;Lcom/a/a/c/a;Lcom/a/a/ak;)V

    return-void
.end method

.method private a()Lcom/a/a/ai;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/ai",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/ah;->f:Lcom/a/a/ai;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/ah;->c:Lcom/a/a/k;

    iget-object v1, p0, Lcom/a/a/ah;->e:Lcom/a/a/ak;

    iget-object v2, p0, Lcom/a/a/ah;->d:Lcom/a/a/c/a;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/k;->a(Lcom/a/a/ak;Lcom/a/a/c/a;)Lcom/a/a/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/ah;->f:Lcom/a/a/ai;

    goto :goto_0
.end method

.method public static a(Lcom/a/a/c/a;Ljava/lang/Object;)Lcom/a/a/ak;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c/a",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/a/a/ak;"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v0, Lcom/a/a/ah$a;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/a/a/ah$a;-><init>(Ljava/lang/Object;Lcom/a/a/c/a;ZLjava/lang/Class;Lcom/a/a/ah$1;)V

    return-object v0
.end method

.method public static b(Lcom/a/a/c/a;Ljava/lang/Object;)Lcom/a/a/ak;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c/a",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/a/a/ak;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    new-instance v0, Lcom/a/a/ah$a;

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/a/a/ah$a;-><init>(Ljava/lang/Object;Lcom/a/a/c/a;ZLjava/lang/Class;Lcom/a/a/ah$1;)V

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public read(Lcom/a/a/d/a;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/ah;->b:Lcom/a/a/u;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/a/a/ah;->a()Lcom/a/a/ai;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/a/ai;->read(Lcom/a/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/a/a/b/z;->a(Lcom/a/a/d/a;)Lcom/a/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/v;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/a/a/ah;->b:Lcom/a/a/u;

    iget-object v2, p0, Lcom/a/a/ah;->d:Lcom/a/a/c/a;

    invoke-virtual {v2}, Lcom/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/ah;->c:Lcom/a/a/k;

    iget-object v3, v3, Lcom/a/a/k;->a:Lcom/a/a/t;

    invoke-interface {v1, v0, v2, v3}, Lcom/a/a/u;->deserialize(Lcom/a/a/v;Ljava/lang/reflect/Type;Lcom/a/a/t;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public write(Lcom/a/a/d/d;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/d;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/ah;->a:Lcom/a/a/ac;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/a/a/ah;->a()Lcom/a/a/ai;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/a/a/ai;->write(Lcom/a/a/d/d;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/a/a/d/d;->f()Lcom/a/a/d/d;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/a/a/ah;->a:Lcom/a/a/ac;

    iget-object v1, p0, Lcom/a/a/ah;->d:Lcom/a/a/c/a;

    invoke-virtual {v1}, Lcom/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/ah;->c:Lcom/a/a/k;

    iget-object v2, v2, Lcom/a/a/k;->b:Lcom/a/a/ab;

    invoke-interface {v0, p2, v1, v2}, Lcom/a/a/ac;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/a/a/ab;)Lcom/a/a/v;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/a/a/b/z;->a(Lcom/a/a/v;Lcom/a/a/d/d;)V

    goto :goto_0
.end method
