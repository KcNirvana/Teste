.class abstract Lss/ss/gK/d$a;
.super Ljava/lang/Object;

# interfaces
.implements LgK/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ss/gK/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field protected final a:LgK/i;

.field protected b:Z

.field final synthetic c:Lss/ss/gK/d;


# direct methods
.method private constructor <init>(Lss/ss/gK/d;)V
    .locals 2

    iput-object p1, p0, Lss/ss/gK/d$a;->c:Lss/ss/gK/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LgK/i;

    iget-object v1, p0, Lss/ss/gK/d$a;->c:Lss/ss/gK/d;

    invoke-static {v1}, Lss/ss/gK/d;->b(Lss/ss/gK/d;)LgK/e;

    move-result-object v1

    invoke-interface {v1}, LgK/e;->a()LgK/s;

    move-result-object v1

    invoke-direct {v0, v1}, LgK/i;-><init>(LgK/s;)V

    iput-object v0, p0, Lss/ss/gK/d$a;->a:LgK/i;

    return-void
.end method

.method synthetic constructor <init>(Lss/ss/gK/d;Lss/ss/gK/d$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lss/ss/gK/d$a;-><init>(Lss/ss/gK/d;)V

    return-void
.end method


# virtual methods
.method public a()LgK/s;
    .locals 1

    iget-object v0, p0, Lss/ss/gK/d$a;->a:LgK/i;

    return-object v0
.end method

.method protected final a(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x6

    iget-object v0, p0, Lss/ss/gK/d$a;->c:Lss/ss/gK/d;

    invoke-static {v0}, Lss/ss/gK/d;->c(Lss/ss/gK/d;)I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lss/ss/gK/d$a;->c:Lss/ss/gK/d;

    invoke-static {v0}, Lss/ss/gK/d;->c(Lss/ss/gK/d;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lss/ss/gK/d$a;->c:Lss/ss/gK/d;

    invoke-static {v2}, Lss/ss/gK/d;->c(Lss/ss/gK/d;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lss/ss/gK/d$a;->c:Lss/ss/gK/d;

    iget-object v1, p0, Lss/ss/gK/d$a;->a:LgK/i;

    invoke-static {v0, v1}, Lss/ss/gK/d;->a(Lss/ss/gK/d;LgK/i;)V

    iget-object v0, p0, Lss/ss/gK/d$a;->c:Lss/ss/gK/d;

    invoke-static {v0, v2}, Lss/ss/gK/d;->a(Lss/ss/gK/d;I)I

    iget-object v0, p0, Lss/ss/gK/d$a;->c:Lss/ss/gK/d;

    invoke-static {v0}, Lss/ss/gK/d;->d(Lss/ss/gK/d;)Lss/ss/gK/r;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lss/ss/gK/d$a;->c:Lss/ss/gK/d;

    invoke-static {v0}, Lss/ss/gK/d;->d(Lss/ss/gK/d;)Lss/ss/gK/r;

    move-result-object v1

    if-nez p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lss/ss/gK/d$a;->c:Lss/ss/gK/d;

    invoke-virtual {v1, v0, v2}, Lss/ss/gK/r;->a(ZLss/ss/gK/i;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
