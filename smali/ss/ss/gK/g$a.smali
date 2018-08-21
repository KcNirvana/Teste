.class Lss/ss/gK/g$a;
.super Ljava/lang/Object;

# interfaces
.implements Lss/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ss/gK/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lss/ss/gK/g;

.field private final b:I

.field private final c:Lss/w;

.field private final d:Lss/h;

.field private e:I


# direct methods
.method constructor <init>(Lss/ss/gK/g;ILss/w;Lss/h;)V
    .locals 0

    iput-object p1, p0, Lss/ss/gK/g$a;->a:Lss/ss/gK/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lss/ss/gK/g$a;->b:I

    iput-object p3, p0, Lss/ss/gK/g$a;->c:Lss/w;

    iput-object p4, p0, Lss/ss/gK/g$a;->d:Lss/h;

    return-void
.end method


# virtual methods
.method public a()Lss/w;
    .locals 1

    iget-object v0, p0, Lss/ss/gK/g$a;->c:Lss/w;

    return-object v0
.end method

.method public a(Lss/w;)Lss/y;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    iget v0, p0, Lss/ss/gK/g$a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lss/ss/gK/g$a;->e:I

    iget v0, p0, Lss/ss/gK/g$a;->b:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lss/ss/gK/g$a;->a:Lss/ss/gK/g;

    iget-object v0, v0, Lss/ss/gK/g;->a:Lss/t;

    invoke-virtual {v0}, Lss/t;->w()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lss/ss/gK/g$a;->b:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss/r;

    invoke-virtual {p0}, Lss/ss/gK/g$a;->b()Lss/h;

    move-result-object v1

    invoke-interface {v1}, Lss/h;->a()Lss/aa;

    move-result-object v1

    invoke-virtual {v1}, Lss/aa;->a()Lss/a;

    move-result-object v1

    invoke-virtual {p1}, Lss/w;->a()Lss/q;

    move-result-object v2

    invoke-virtual {v2}, Lss/q;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lss/a;->a()Lss/q;

    move-result-object v3

    invoke-virtual {v3}, Lss/q;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lss/w;->a()Lss/q;

    move-result-object v2

    invoke-virtual {v2}, Lss/q;->g()I

    move-result v2

    invoke-virtual {v1}, Lss/a;->a()Lss/q;

    move-result-object v1

    invoke-virtual {v1}, Lss/q;->g()I

    move-result v1

    if-eq v2, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "network interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " must retain the same host and port"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget v1, p0, Lss/ss/gK/g$a;->e:I

    if-le v1, v4, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "network interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " must call proceed() exactly once"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget v0, p0, Lss/ss/gK/g$a;->b:I

    iget-object v1, p0, Lss/ss/gK/g$a;->a:Lss/ss/gK/g;

    iget-object v1, v1, Lss/ss/gK/g;->a:Lss/t;

    invoke-virtual {v1}, Lss/t;->w()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    new-instance v2, Lss/ss/gK/g$a;

    iget-object v0, p0, Lss/ss/gK/g$a;->a:Lss/ss/gK/g;

    iget v1, p0, Lss/ss/gK/g$a;->b:I

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lss/ss/gK/g$a;->d:Lss/h;

    invoke-direct {v2, v0, v1, p1, v3}, Lss/ss/gK/g$a;-><init>(Lss/ss/gK/g;ILss/w;Lss/h;)V

    iget-object v0, p0, Lss/ss/gK/g$a;->a:Lss/ss/gK/g;

    iget-object v0, v0, Lss/ss/gK/g;->a:Lss/t;

    invoke-virtual {v0}, Lss/t;->w()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lss/ss/gK/g$a;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss/r;

    invoke-interface {v0, v2}, Lss/r;->a(Lss/r$a;)Lss/y;

    move-result-object v1

    iget v2, v2, Lss/ss/gK/g$a;->e:I

    if-eq v2, v4, :cond_3

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "network interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " must call proceed() exactly once"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "network interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " returned null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move-object v0, v1

    :cond_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lss/ss/gK/g$a;->a:Lss/ss/gK/g;

    invoke-static {v0}, Lss/ss/gK/g;->a(Lss/ss/gK/g;)Lss/ss/gK/i;

    move-result-object v0

    invoke-interface {v0, p1}, Lss/ss/gK/i;->a(Lss/w;)V

    iget-object v0, p0, Lss/ss/gK/g$a;->a:Lss/ss/gK/g;

    invoke-static {v0, p1}, Lss/ss/gK/g;->a(Lss/ss/gK/g;Lss/w;)Lss/w;

    iget-object v0, p0, Lss/ss/gK/g$a;->a:Lss/ss/gK/g;

    invoke-virtual {v0, p1}, Lss/ss/gK/g;->a(Lss/w;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lss/w;->d()Lss/x;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lss/ss/gK/g$a;->a:Lss/ss/gK/g;

    invoke-static {v0}, Lss/ss/gK/g;->a(Lss/ss/gK/g;)Lss/ss/gK/i;

    move-result-object v0

    invoke-virtual {p1}, Lss/w;->d()Lss/x;

    move-result-object v1

    invoke-virtual {v1}, Lss/x;->b()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Lss/ss/gK/i;->a(Lss/w;J)LgK/q;

    move-result-object v0

    invoke-static {v0}, LgK/l;->a(LgK/q;)LgK/d;

    move-result-object v0

    invoke-virtual {p1}, Lss/w;->d()Lss/x;

    move-result-object v1

    invoke-virtual {v1, v0}, Lss/x;->a(LgK/d;)V

    invoke-interface {v0}, LgK/d;->close()V

    :cond_7
    iget-object v0, p0, Lss/ss/gK/g$a;->a:Lss/ss/gK/g;

    invoke-static {v0}, Lss/ss/gK/g;->b(Lss/ss/gK/g;)Lss/y;

    move-result-object v0

    invoke-virtual {v0}, Lss/y;->b()I

    move-result v1

    const/16 v2, 0xcc

    if-eq v1, v2, :cond_8

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_5

    :cond_8
    invoke-virtual {v0}, Lss/y;->f()Lss/z;

    move-result-object v2

    invoke-virtual {v2}, Lss/z;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HTTP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " had non-zero Content-Length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lss/y;->f()Lss/z;

    move-result-object v0

    invoke-virtual {v0}, Lss/z;->b()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public b()Lss/h;
    .locals 1

    iget-object v0, p0, Lss/ss/gK/g$a;->d:Lss/h;

    return-object v0
.end method
