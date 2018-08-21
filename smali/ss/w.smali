.class public final Lss/w;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lss/w$a;
    }
.end annotation


# instance fields
.field private final a:Lss/q;

.field private final b:Ljava/lang/String;

.field private final c:Lss/p;

.field private final d:Lss/x;

.field private final e:Ljava/lang/Object;

.field private volatile f:Lss/d;


# direct methods
.method private constructor <init>(Lss/w$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lss/w$a;->a(Lss/w$a;)Lss/q;

    move-result-object v0

    iput-object v0, p0, Lss/w;->a:Lss/q;

    invoke-static {p1}, Lss/w$a;->b(Lss/w$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lss/w;->b:Ljava/lang/String;

    invoke-static {p1}, Lss/w$a;->c(Lss/w$a;)Lss/p$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/p$a;->a()Lss/p;

    move-result-object v0

    iput-object v0, p0, Lss/w;->c:Lss/p;

    invoke-static {p1}, Lss/w$a;->d(Lss/w$a;)Lss/x;

    move-result-object v0

    iput-object v0, p0, Lss/w;->d:Lss/x;

    invoke-static {p1}, Lss/w$a;->e(Lss/w$a;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lss/w$a;->e(Lss/w$a;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lss/w;->e:Ljava/lang/Object;

    return-void

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lss/w$a;Lss/w$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lss/w;-><init>(Lss/w$a;)V

    return-void
.end method

.method static synthetic a(Lss/w;)Lss/q;
    .locals 1

    iget-object v0, p0, Lss/w;->a:Lss/q;

    return-object v0
.end method

.method static synthetic b(Lss/w;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lss/w;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lss/w;)Lss/x;
    .locals 1

    iget-object v0, p0, Lss/w;->d:Lss/x;

    return-object v0
.end method

.method static synthetic d(Lss/w;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lss/w;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lss/w;)Lss/p;
    .locals 1

    iget-object v0, p0, Lss/w;->c:Lss/p;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lss/w;->c:Lss/p;

    invoke-virtual {v0, p1}, Lss/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Lss/q;
    .locals 1

    iget-object v0, p0, Lss/w;->a:Lss/q;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lss/w;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lss/p;
    .locals 1

    iget-object v0, p0, Lss/w;->c:Lss/p;

    return-object v0
.end method

.method public d()Lss/x;
    .locals 1

    iget-object v0, p0, Lss/w;->d:Lss/x;

    return-object v0
.end method

.method public e()Lss/w$a;
    .locals 2

    new-instance v0, Lss/w$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lss/w$a;-><init>(Lss/w;Lss/w$1;)V

    return-object v0
.end method

.method public f()Lss/d;
    .locals 1

    iget-object v0, p0, Lss/w;->f:Lss/d;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lss/w;->c:Lss/p;

    invoke-static {v0}, Lss/d;->a(Lss/p;)Lss/d;

    move-result-object v0

    iput-object v0, p0, Lss/w;->f:Lss/d;

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lss/w;->a:Lss/q;

    invoke-virtual {v0}, Lss/q;->c()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lss/w;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lss/w;->a:Lss/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lss/w;->e:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lss/w;->e:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
