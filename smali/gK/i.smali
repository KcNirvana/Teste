.class public LgK/i;
.super LgK/s;


# instance fields
.field private a:LgK/s;


# direct methods
.method public constructor <init>(LgK/s;)V
    .locals 2

    invoke-direct {p0}, LgK/s;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, LgK/i;->a:LgK/s;

    return-void
.end method


# virtual methods
.method public final a(LgK/s;)LgK/i;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, LgK/i;->a:LgK/s;

    return-object p0
.end method

.method public final a()LgK/s;
    .locals 1

    iget-object v0, p0, LgK/i;->a:LgK/s;

    return-object v0
.end method

.method public a(J)LgK/s;
    .locals 1

    iget-object v0, p0, LgK/i;->a:LgK/s;

    invoke-virtual {v0, p1, p2}, LgK/s;->a(J)LgK/s;

    move-result-object v0

    return-object v0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)LgK/s;
    .locals 1

    iget-object v0, p0, LgK/i;->a:LgK/s;

    invoke-virtual {v0, p1, p2, p3}, LgK/s;->a(JLjava/util/concurrent/TimeUnit;)LgK/s;

    move-result-object v0

    return-object v0
.end method

.method public b_()J
    .locals 2

    iget-object v0, p0, LgK/i;->a:LgK/s;

    invoke-virtual {v0}, LgK/s;->b_()J

    move-result-wide v0

    return-wide v0
.end method

.method public c_()Z
    .locals 1

    iget-object v0, p0, LgK/i;->a:LgK/s;

    invoke-virtual {v0}, LgK/s;->c_()Z

    move-result v0

    return v0
.end method

.method public d()J
    .locals 2

    iget-object v0, p0, LgK/i;->a:LgK/s;

    invoke-virtual {v0}, LgK/s;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public d_()LgK/s;
    .locals 1

    iget-object v0, p0, LgK/i;->a:LgK/s;

    invoke-virtual {v0}, LgK/s;->d_()LgK/s;

    move-result-object v0

    return-object v0
.end method

.method public f()LgK/s;
    .locals 1

    iget-object v0, p0, LgK/i;->a:LgK/s;

    invoke-virtual {v0}, LgK/s;->f()LgK/s;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LgK/i;->a:LgK/s;

    invoke-virtual {v0}, LgK/s;->g()V

    return-void
.end method
