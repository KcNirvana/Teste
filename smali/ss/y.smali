.class public final Lss/y;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lss/y$a;
    }
.end annotation


# instance fields
.field private final a:Lss/w;

.field private final b:Lss/u;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Lss/o;

.field private final f:Lss/p;

.field private final g:Lss/z;

.field private h:Lss/y;

.field private i:Lss/y;

.field private final j:Lss/y;

.field private volatile k:Lss/d;


# direct methods
.method private constructor <init>(Lss/y$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lss/y$a;->a(Lss/y$a;)Lss/w;

    move-result-object v0

    iput-object v0, p0, Lss/y;->a:Lss/w;

    invoke-static {p1}, Lss/y$a;->b(Lss/y$a;)Lss/u;

    move-result-object v0

    iput-object v0, p0, Lss/y;->b:Lss/u;

    invoke-static {p1}, Lss/y$a;->c(Lss/y$a;)I

    move-result v0

    iput v0, p0, Lss/y;->c:I

    invoke-static {p1}, Lss/y$a;->d(Lss/y$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lss/y;->d:Ljava/lang/String;

    invoke-static {p1}, Lss/y$a;->e(Lss/y$a;)Lss/o;

    move-result-object v0

    iput-object v0, p0, Lss/y;->e:Lss/o;

    invoke-static {p1}, Lss/y$a;->f(Lss/y$a;)Lss/p$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/p$a;->a()Lss/p;

    move-result-object v0

    iput-object v0, p0, Lss/y;->f:Lss/p;

    invoke-static {p1}, Lss/y$a;->g(Lss/y$a;)Lss/z;

    move-result-object v0

    iput-object v0, p0, Lss/y;->g:Lss/z;

    invoke-static {p1}, Lss/y$a;->h(Lss/y$a;)Lss/y;

    move-result-object v0

    iput-object v0, p0, Lss/y;->h:Lss/y;

    invoke-static {p1}, Lss/y$a;->i(Lss/y$a;)Lss/y;

    move-result-object v0

    iput-object v0, p0, Lss/y;->i:Lss/y;

    invoke-static {p1}, Lss/y$a;->j(Lss/y$a;)Lss/y;

    move-result-object v0

    iput-object v0, p0, Lss/y;->j:Lss/y;

    return-void
.end method

.method synthetic constructor <init>(Lss/y$a;Lss/y$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lss/y;-><init>(Lss/y$a;)V

    return-void
.end method

.method static synthetic a(Lss/y;)Lss/w;
    .locals 1

    iget-object v0, p0, Lss/y;->a:Lss/w;

    return-object v0
.end method

.method static synthetic b(Lss/y;)Lss/u;
    .locals 1

    iget-object v0, p0, Lss/y;->b:Lss/u;

    return-object v0
.end method

.method static synthetic c(Lss/y;)I
    .locals 1

    iget v0, p0, Lss/y;->c:I

    return v0
.end method

.method static synthetic d(Lss/y;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lss/y;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lss/y;)Lss/o;
    .locals 1

    iget-object v0, p0, Lss/y;->e:Lss/o;

    return-object v0
.end method

.method static synthetic f(Lss/y;)Lss/p;
    .locals 1

    iget-object v0, p0, Lss/y;->f:Lss/p;

    return-object v0
.end method

.method static synthetic g(Lss/y;)Lss/z;
    .locals 1

    iget-object v0, p0, Lss/y;->g:Lss/z;

    return-object v0
.end method

.method static synthetic h(Lss/y;)Lss/y;
    .locals 1

    iget-object v0, p0, Lss/y;->h:Lss/y;

    return-object v0
.end method

.method static synthetic i(Lss/y;)Lss/y;
    .locals 1

    iget-object v0, p0, Lss/y;->i:Lss/y;

    return-object v0
.end method

.method static synthetic j(Lss/y;)Lss/y;
    .locals 1

    iget-object v0, p0, Lss/y;->j:Lss/y;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lss/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lss/y;->f:Lss/p;

    invoke-virtual {v0, p1}, Lss/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p2, v0

    :cond_0
    return-object p2
.end method

.method public a()Lss/w;
    .locals 1

    iget-object v0, p0, Lss/y;->a:Lss/w;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lss/y;->c:I

    return v0
.end method

.method public c()Z
    .locals 2

    iget v0, p0, Lss/y;->c:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lss/y;->c:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lss/o;
    .locals 1

    iget-object v0, p0, Lss/y;->e:Lss/o;

    return-object v0
.end method

.method public e()Lss/p;
    .locals 1

    iget-object v0, p0, Lss/y;->f:Lss/p;

    return-object v0
.end method

.method public f()Lss/z;
    .locals 1

    iget-object v0, p0, Lss/y;->g:Lss/z;

    return-object v0
.end method

.method public g()Lss/y$a;
    .locals 2

    new-instance v0, Lss/y$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lss/y$a;-><init>(Lss/y;Lss/y$1;)V

    return-object v0
.end method

.method public h()Lss/d;
    .locals 1

    iget-object v0, p0, Lss/y;->k:Lss/d;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lss/y;->f:Lss/p;

    invoke-static {v0}, Lss/d;->a(Lss/p;)Lss/d;

    move-result-object v0

    iput-object v0, p0, Lss/y;->k:Lss/d;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lss/y;->b:Lss/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lss/y;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lss/y;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lss/y;->a:Lss/w;

    invoke-virtual {v1}, Lss/w;->a()Lss/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
