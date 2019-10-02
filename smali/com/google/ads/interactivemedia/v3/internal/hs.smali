.class public final Lcom/google/ads/interactivemedia/v3/internal/hs;
.super Lcom/google/ads/interactivemedia/v3/internal/gp;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/internal/hs$a;,
        Lcom/google/ads/interactivemedia/v3/internal/hs$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/ads/interactivemedia/v3/internal/gp<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/gm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/gm<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/ge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/ge<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/fz;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/hw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/hw<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/gq;

.field private final f:Lcom/google/ads/interactivemedia/v3/internal/hs$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/hs$a;"
        }
    .end annotation
.end field

.field private g:Lcom/google/ads/interactivemedia/v3/internal/gp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/gp<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/gm;Lcom/google/ads/interactivemedia/v3/internal/ge;Lcom/google/ads/interactivemedia/v3/internal/fz;Lcom/google/ads/interactivemedia/v3/internal/hw;Lcom/google/ads/interactivemedia/v3/internal/gq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/gm<",
            "TT;>;",
            "Lcom/google/ads/interactivemedia/v3/internal/ge<",
            "TT;>;",
            "Lcom/google/ads/interactivemedia/v3/internal/fz;",
            "Lcom/google/ads/interactivemedia/v3/internal/hw<",
            "TT;>;",
            "Lcom/google/ads/interactivemedia/v3/internal/gq;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gp;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/hs$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/hs$a;-><init>(Lcom/google/ads/interactivemedia/v3/internal/hs;Lcom/google/ads/interactivemedia/v3/internal/hs$1;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/hs;->f:Lcom/google/ads/interactivemedia/v3/internal/hs$a;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/hs;->a:Lcom/google/ads/interactivemedia/v3/internal/gm;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/hs;->b:Lcom/google/ads/interactivemedia/v3/internal/ge;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/hs;->c:Lcom/google/ads/interactivemedia/v3/internal/fz;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/hs;->d:Lcom/google/ads/interactivemedia/v3/internal/hw;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/hs;->e:Lcom/google/ads/interactivemedia/v3/internal/gq;

    return-void
.end method

.method private a()Lcom/google/ads/interactivemedia/v3/internal/gp;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/ads/interactivemedia/v3/internal/gp<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/hs;->g:Lcom/google/ads/interactivemedia/v3/internal/gp;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/hs;->c:Lcom/google/ads/interactivemedia/v3/internal/fz;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/hs;->e:Lcom/google/ads/interactivemedia/v3/internal/gq;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/hs;->d:Lcom/google/ads/interactivemedia/v3/internal/hw;

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/fz;->a(Lcom/google/ads/interactivemedia/v3/internal/gq;Lcom/google/ads/interactivemedia/v3/internal/hw;)Lcom/google/ads/interactivemedia/v3/internal/gp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/hs;->g:Lcom/google/ads/interactivemedia/v3/internal/gp;

    :goto_0
    return-object v0
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/internal/hw;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/gq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/hw<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/ads/interactivemedia/v3/internal/gq;"
        }
    .end annotation

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/hs$b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/hs$b;-><init>(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/hw;ZLjava/lang/Class;)V

    return-object v0
.end method

.method public static b(Lcom/google/ads/interactivemedia/v3/internal/hw;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/gq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/hw<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/ads/interactivemedia/v3/internal/gq;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/hw;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/hw;->a()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/hs$b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/hs$b;-><init>(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/hw;ZLjava/lang/Class;)V

    return-object v1
.end method


# virtual methods
.method public read(Lcom/google/ads/interactivemedia/v3/internal/hx;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/hx;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/hs;->b:Lcom/google/ads/interactivemedia/v3/internal/ge;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/hs;->a()Lcom/google/ads/interactivemedia/v3/internal/gp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/gp;->read(Lcom/google/ads/interactivemedia/v3/internal/hx;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/hf;->a(Lcom/google/ads/interactivemedia/v3/internal/hx;)Lcom/google/ads/interactivemedia/v3/internal/gf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/gf;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/hs;->b:Lcom/google/ads/interactivemedia/v3/internal/ge;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/hs;->d:Lcom/google/ads/interactivemedia/v3/internal/hw;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/hw;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/hs;->f:Lcom/google/ads/interactivemedia/v3/internal/hs$a;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ge;->b(Lcom/google/ads/interactivemedia/v3/internal/gf;Ljava/lang/reflect/Type;Lcom/google/ads/interactivemedia/v3/internal/gd;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/gj; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/gj;

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/gj;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    throw p1
.end method

.method public write(Lcom/google/ads/interactivemedia/v3/internal/hz;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/hz;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/hs;->a:Lcom/google/ads/interactivemedia/v3/internal/gm;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/hs;->a()Lcom/google/ads/interactivemedia/v3/internal/gp;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/gp;->write(Lcom/google/ads/interactivemedia/v3/internal/hz;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/hz;->f()Lcom/google/ads/interactivemedia/v3/internal/hz;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/hs;->a:Lcom/google/ads/interactivemedia/v3/internal/gm;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/hs;->d:Lcom/google/ads/interactivemedia/v3/internal/hw;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/hw;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/hs;->f:Lcom/google/ads/interactivemedia/v3/internal/hs$a;

    invoke-interface {v0, p2, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/gm;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/ads/interactivemedia/v3/internal/gl;)Lcom/google/ads/interactivemedia/v3/internal/gf;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/hf;->a(Lcom/google/ads/interactivemedia/v3/internal/gf;Lcom/google/ads/interactivemedia/v3/internal/hz;)V

    return-void
.end method
