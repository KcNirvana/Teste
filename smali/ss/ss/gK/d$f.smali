.class Lss/ss/gK/d$f;
.super Lss/ss/gK/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ss/gK/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic d:Lss/ss/gK/d;

.field private e:Z


# direct methods
.method private constructor <init>(Lss/ss/gK/d;)V
    .locals 1

    iput-object p1, p0, Lss/ss/gK/d$f;->d:Lss/ss/gK/d;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lss/ss/gK/d$a;-><init>(Lss/ss/gK/d;Lss/ss/gK/d$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lss/ss/gK/d;Lss/ss/gK/d$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lss/ss/gK/d$f;-><init>(Lss/ss/gK/d;)V

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

    const/4 v5, 0x1

    const-wide/16 v0, -0x1

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v2, p0, Lss/ss/gK/d$f;->b:Z

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v2, p0, Lss/ss/gK/d$f;->e:Z

    if-eqz v2, :cond_2

    :goto_0
    return-wide v0

    :cond_2
    iget-object v2, p0, Lss/ss/gK/d$f;->d:Lss/ss/gK/d;

    invoke-static {v2}, Lss/ss/gK/d;->b(Lss/ss/gK/d;)LgK/e;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, LgK/e;->a(LgK/c;J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_3

    iput-boolean v5, p0, Lss/ss/gK/d$f;->e:Z

    invoke-virtual {p0, v5}, Lss/ss/gK/d$f;->a(Z)V

    goto :goto_0

    :cond_3
    move-wide v0, v2

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lss/ss/gK/d$f;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lss/ss/gK/d$f;->e:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lss/ss/gK/d$f;->a(Z)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lss/ss/gK/d$f;->b:Z

    goto :goto_0
.end method
