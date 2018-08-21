.class Lss/ss/gK/g$2;
.super Ljava/lang/Object;

# interfaces
.implements LgK/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lss/ss/gK/g;->a(Lss/ss/gK/a;Lss/y;)Lss/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:LgK/e;

.field final synthetic c:Lss/ss/gK/a;

.field final synthetic d:LgK/d;

.field final synthetic e:Lss/ss/gK/g;


# direct methods
.method constructor <init>(Lss/ss/gK/g;LgK/e;Lss/ss/gK/a;LgK/d;)V
    .locals 0

    iput-object p1, p0, Lss/ss/gK/g$2;->e:Lss/ss/gK/g;

    iput-object p2, p0, Lss/ss/gK/g$2;->b:LgK/e;

    iput-object p3, p0, Lss/ss/gK/g$2;->c:Lss/ss/gK/a;

    iput-object p4, p0, Lss/ss/gK/g$2;->d:LgK/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LgK/c;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    const/4 v3, 0x1

    :try_start_0
    iget-object v2, p0, Lss/ss/gK/g$2;->b:LgK/e;

    invoke-interface {v2, p1, p2, p3}, LgK/e;->a(LgK/c;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    cmp-long v2, v4, v0

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lss/ss/gK/g$2;->a:Z

    if-nez v2, :cond_0

    iput-boolean v3, p0, Lss/ss/gK/g$2;->a:Z

    iget-object v2, p0, Lss/ss/gK/g$2;->d:LgK/d;

    invoke-interface {v2}, LgK/d;->close()V

    :cond_0
    move-wide v4, v0

    :goto_0
    return-wide v4

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lss/ss/gK/g$2;->a:Z

    if-nez v1, :cond_1

    iput-boolean v3, p0, Lss/ss/gK/g$2;->a:Z

    iget-object v1, p0, Lss/ss/gK/g$2;->c:Lss/ss/gK/a;

    invoke-interface {v1}, Lss/ss/gK/a;->b()V

    :cond_1
    throw v0

    :cond_2
    iget-object v0, p0, Lss/ss/gK/g$2;->d:LgK/d;

    invoke-interface {v0}, LgK/d;->c()LgK/c;

    move-result-object v1

    invoke-virtual {p1}, LgK/c;->b()J

    move-result-wide v2

    sub-long/2addr v2, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, LgK/c;->a(LgK/c;JJ)LgK/c;

    iget-object v0, p0, Lss/ss/gK/g$2;->d:LgK/d;

    invoke-interface {v0}, LgK/d;->t()LgK/d;

    goto :goto_0
.end method

.method public a()LgK/s;
    .locals 1

    iget-object v0, p0, Lss/ss/gK/g$2;->b:LgK/e;

    invoke-interface {v0}, LgK/e;->a()LgK/s;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lss/ss/gK/g$2;->a:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lss/ss/i;->a(LgK/r;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lss/ss/gK/g$2;->a:Z

    iget-object v0, p0, Lss/ss/gK/g$2;->c:Lss/ss/gK/a;

    invoke-interface {v0}, Lss/ss/gK/a;->b()V

    :cond_0
    iget-object v0, p0, Lss/ss/gK/g$2;->b:LgK/e;

    invoke-interface {v0}, LgK/e;->close()V

    return-void
.end method
