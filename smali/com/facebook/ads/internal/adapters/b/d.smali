.class public Lcom/facebook/ads/internal/adapters/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/adapters/b/d$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3ba6bcbd8943c62L


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private final d:Z

.field private final e:Z

.field private final f:Ljava/lang/String;

.field private final g:I

.field private final h:I

.field private final i:Lcom/facebook/ads/internal/adapters/b/n;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private j:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/facebook/ads/internal/adapters/b/d$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/facebook/ads/internal/adapters/b/d$a;->a(Lcom/facebook/ads/internal/adapters/b/d$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/b/d;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/facebook/ads/internal/adapters/b/d$a;->b(Lcom/facebook/ads/internal/adapters/b/d$a;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/adapters/b/d;->b:I

    invoke-static {p1}, Lcom/facebook/ads/internal/adapters/b/d$a;->c(Lcom/facebook/ads/internal/adapters/b/d$a;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/adapters/b/d;->c:I

    invoke-static {p1}, Lcom/facebook/ads/internal/adapters/b/d$a;->d(Lcom/facebook/ads/internal/adapters/b/d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/adapters/b/d;->d:Z

    invoke-static {p1}, Lcom/facebook/ads/internal/adapters/b/d$a;->e(Lcom/facebook/ads/internal/adapters/b/d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/adapters/b/d;->e:Z

    invoke-static {p1}, Lcom/facebook/ads/internal/adapters/b/d$a;->f(Lcom/facebook/ads/internal/adapters/b/d$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/b/d;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/facebook/ads/internal/adapters/b/d$a;->g(Lcom/facebook/ads/internal/adapters/b/d$a;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/adapters/b/d;->g:I

    invoke-static {p1}, Lcom/facebook/ads/internal/adapters/b/d$a;->h(Lcom/facebook/ads/internal/adapters/b/d$a;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/adapters/b/d;->h:I

    invoke-static {p1}, Lcom/facebook/ads/internal/adapters/b/d$a;->i(Lcom/facebook/ads/internal/adapters/b/d$a;)Lcom/facebook/ads/internal/adapters/b/n;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/b/d;->i:Lcom/facebook/ads/internal/adapters/b/n;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ads/internal/adapters/b/d$a;Lcom/facebook/ads/internal/adapters/b/d$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/adapters/b/d;-><init>(Lcom/facebook/ads/internal/adapters/b/d$a;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/b/d;->j:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/d;->j:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/adapters/b/d;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/adapters/b/d;->c:I

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/b/d;->d:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/b/d;->e:Z

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/adapters/b/d;->g:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/adapters/b/d;->h:I

    return v0
.end method

.method public j()Lcom/facebook/ads/internal/adapters/b/n;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/d;->i:Lcom/facebook/ads/internal/adapters/b/n;

    return-object v0
.end method
