.class public final Lss/ss/gK/d;
.super Ljava/lang/Object;

# interfaces
.implements Lss/ss/gK/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lss/ss/gK/d$f;,
        Lss/ss/gK/d$c;,
        Lss/ss/gK/d$e;,
        Lss/ss/gK/d$a;,
        Lss/ss/gK/d$b;,
        Lss/ss/gK/d$d;
    }
.end annotation


# instance fields
.field private final a:Lss/ss/gK/r;

.field private final b:LgK/e;

.field private final c:LgK/d;

.field private d:Lss/ss/gK/g;

.field private e:I


# direct methods
.method public constructor <init>(Lss/ss/gK/r;LgK/e;LgK/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lss/ss/gK/d;->e:I

    iput-object p1, p0, Lss/ss/gK/d;->a:Lss/ss/gK/r;

    iput-object p2, p0, Lss/ss/gK/d;->b:LgK/e;

    iput-object p3, p0, Lss/ss/gK/d;->c:LgK/d;

    return-void
.end method

.method static synthetic a(Lss/ss/gK/d;I)I
    .locals 0

    iput p1, p0, Lss/ss/gK/d;->e:I

    return p1
.end method

.method static synthetic a(Lss/ss/gK/d;)LgK/d;
    .locals 1

    iget-object v0, p0, Lss/ss/gK/d;->c:LgK/d;

    return-object v0
.end method

.method private a(LgK/i;)V
    .locals 2

    invoke-virtual {p1}, LgK/i;->a()LgK/s;

    move-result-object v0

    sget-object v1, LgK/s;->b:LgK/s;

    invoke-virtual {p1, v1}, LgK/i;->a(LgK/s;)LgK/i;

    invoke-virtual {v0}, LgK/s;->f()LgK/s;

    invoke-virtual {v0}, LgK/s;->d_()LgK/s;

    return-void
.end method

.method static synthetic a(Lss/ss/gK/d;LgK/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lss/ss/gK/d;->a(LgK/i;)V

    return-void
.end method

.method static synthetic b(Lss/ss/gK/d;)LgK/e;
    .locals 1

    iget-object v0, p0, Lss/ss/gK/d;->b:LgK/e;

    return-object v0
.end method

.method private b(Lss/y;)LgK/r;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lss/ss/gK/g;->a(Lss/y;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lss/ss/gK/d;->b(J)LgK/r;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "chunked"

    const-string/jumbo v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lss/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lss/ss/gK/d;->d:Lss/ss/gK/g;

    invoke-virtual {p0, v0}, Lss/ss/gK/d;->b(Lss/ss/gK/g;)LgK/r;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lss/ss/gK/j;->a(Lss/y;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0, v1}, Lss/ss/gK/d;->b(J)LgK/r;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lss/ss/gK/d;->f()LgK/r;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lss/ss/gK/d;)I
    .locals 1

    iget v0, p0, Lss/ss/gK/d;->e:I

    return v0
.end method

.method static synthetic d(Lss/ss/gK/d;)Lss/ss/gK/r;
    .locals 1

    iget-object v0, p0, Lss/ss/gK/d;->a:Lss/ss/gK/r;

    return-object v0
.end method


# virtual methods
.method public a(J)LgK/q;
    .locals 3

    iget v0, p0, Lss/ss/gK/d;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lss/ss/gK/d;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lss/ss/gK/d;->e:I

    new-instance v0, Lss/ss/gK/d$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lss/ss/gK/d$d;-><init>(Lss/ss/gK/d;JLss/ss/gK/d$1;)V

    return-object v0
.end method

.method public a(Lss/w;J)LgK/q;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "chunked"

    const-string/jumbo v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lss/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lss/ss/gK/d;->e()LgK/q;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2, p3}, Lss/ss/gK/d;->a(J)LgK/q;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Lss/y$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lss/ss/gK/d;->c()Lss/y$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lss/y;)Lss/z;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lss/ss/gK/d;->b(Lss/y;)LgK/r;

    move-result-object v0

    new-instance v1, Lss/ss/gK/k;

    invoke-virtual {p1}, Lss/y;->e()Lss/p;

    move-result-object v2

    invoke-static {v0}, LgK/l;->a(LgK/r;)LgK/e;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lss/ss/gK/k;-><init>(Lss/p;LgK/e;)V

    return-object v1
.end method

.method public a(Lss/p;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lss/ss/gK/d;->e:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lss/ss/gK/d;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lss/ss/gK/d;->c:LgK/d;

    invoke-interface {v0, p2}, LgK/d;->b(Ljava/lang/String;)LgK/d;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-interface {v0, v1}, LgK/d;->b(Ljava/lang/String;)LgK/d;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lss/p;->a()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lss/ss/gK/d;->c:LgK/d;

    invoke-virtual {p1, v0}, Lss/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, LgK/d;->b(Ljava/lang/String;)LgK/d;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-interface {v2, v3}, LgK/d;->b(Ljava/lang/String;)LgK/d;

    move-result-object v2

    invoke-virtual {p1, v0}, Lss/p;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, LgK/d;->b(Ljava/lang/String;)LgK/d;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-interface {v2, v3}, LgK/d;->b(Ljava/lang/String;)LgK/d;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lss/ss/gK/d;->c:LgK/d;

    const-string/jumbo v1, "\r\n"

    invoke-interface {v0, v1}, LgK/d;->b(Ljava/lang/String;)LgK/d;

    const/4 v0, 0x1

    iput v0, p0, Lss/ss/gK/d;->e:I

    return-void
.end method

.method public a(Lss/ss/gK/g;)V
    .locals 0

    iput-object p1, p0, Lss/ss/gK/d;->d:Lss/ss/gK/g;

    return-void
.end method

.method public a(Lss/ss/gK/n;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lss/ss/gK/d;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lss/ss/gK/d;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lss/ss/gK/d;->e:I

    iget-object v0, p0, Lss/ss/gK/d;->c:LgK/d;

    invoke-virtual {p1, v0}, Lss/ss/gK/n;->a(LgK/q;)V

    return-void
.end method

.method public a(Lss/w;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/gK/d;->d:Lss/ss/gK/g;

    invoke-virtual {v0}, Lss/ss/gK/g;->b()V

    iget-object v0, p0, Lss/ss/gK/d;->d:Lss/ss/gK/g;

    invoke-virtual {v0}, Lss/ss/gK/g;->d()Lss/h;

    move-result-object v0

    invoke-interface {v0}, Lss/h;->a()Lss/aa;

    move-result-object v0

    invoke-virtual {v0}, Lss/aa;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    invoke-static {p1, v0}, Lss/ss/gK/m;->a(Lss/w;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lss/w;->c()Lss/p;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lss/ss/gK/d;->a(Lss/p;Ljava/lang/String;)V

    return-void
.end method

.method public b(J)LgK/r;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lss/ss/gK/d;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lss/ss/gK/d;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lss/ss/gK/d;->e:I

    new-instance v0, Lss/ss/gK/d$e;

    invoke-direct {v0, p0, p1, p2}, Lss/ss/gK/d$e;-><init>(Lss/ss/gK/d;J)V

    return-object v0
.end method

.method public b(Lss/ss/gK/g;)LgK/r;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lss/ss/gK/d;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lss/ss/gK/d;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lss/ss/gK/d;->e:I

    new-instance v0, Lss/ss/gK/d$c;

    invoke-direct {v0, p0, p1}, Lss/ss/gK/d$c;-><init>(Lss/ss/gK/d;Lss/ss/gK/g;)V

    return-object v0
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/gK/d;->c:LgK/d;

    invoke-interface {v0}, LgK/d;->flush()V

    return-void
.end method

.method public c()Lss/y$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lss/ss/gK/d;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lss/ss/gK/d;->e:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lss/ss/gK/d;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lss/ss/gK/d;->b:LgK/e;

    invoke-interface {v0}, LgK/e;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lss/ss/gK/q;->a(Ljava/lang/String;)Lss/ss/gK/q;

    move-result-object v0

    new-instance v1, Lss/y$a;

    invoke-direct {v1}, Lss/y$a;-><init>()V

    iget-object v2, v0, Lss/ss/gK/q;->a:Lss/u;

    invoke-virtual {v1, v2}, Lss/y$a;->a(Lss/u;)Lss/y$a;

    move-result-object v1

    iget v2, v0, Lss/ss/gK/q;->b:I

    invoke-virtual {v1, v2}, Lss/y$a;->a(I)Lss/y$a;

    move-result-object v1

    iget-object v2, v0, Lss/ss/gK/q;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lss/y$a;->a(Ljava/lang/String;)Lss/y$a;

    move-result-object v1

    invoke-virtual {p0}, Lss/ss/gK/d;->d()Lss/p;

    move-result-object v2

    invoke-virtual {v1, v2}, Lss/y$a;->a(Lss/p;)Lss/y$a;

    move-result-object v1

    iget v0, v0, Lss/ss/gK/q;->b:I

    const/16 v2, 0x64

    if-eq v0, v2, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Lss/ss/gK/d;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected end of stream on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lss/ss/gK/d;->a:Lss/ss/gK/r;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public d()Lss/p;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lss/p$a;

    invoke-direct {v0}, Lss/p$a;-><init>()V

    :goto_0
    iget-object v1, p0, Lss/ss/gK/d;->b:LgK/e;

    invoke-interface {v1}, LgK/e;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lss/ss/c;->b:Lss/ss/c;

    invoke-virtual {v2, v0, v1}, Lss/ss/c;->a(Lss/p$a;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lss/p$a;->a()Lss/p;

    move-result-object v0

    return-object v0
.end method

.method public e()LgK/q;
    .locals 3

    iget v0, p0, Lss/ss/gK/d;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lss/ss/gK/d;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lss/ss/gK/d;->e:I

    new-instance v0, Lss/ss/gK/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lss/ss/gK/d$b;-><init>(Lss/ss/gK/d;Lss/ss/gK/d$1;)V

    return-object v0
.end method

.method public f()LgK/r;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lss/ss/gK/d;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lss/ss/gK/d;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lss/ss/gK/d;->a:Lss/ss/gK/r;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lss/ss/gK/d;->e:I

    iget-object v0, p0, Lss/ss/gK/d;->a:Lss/ss/gK/r;

    invoke-virtual {v0}, Lss/ss/gK/r;->c()V

    new-instance v0, Lss/ss/gK/d$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lss/ss/gK/d$f;-><init>(Lss/ss/gK/d;Lss/ss/gK/d$1;)V

    return-object v0
.end method
