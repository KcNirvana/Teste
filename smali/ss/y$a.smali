.class public Lss/y$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lss/w;

.field private b:Lss/u;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lss/o;

.field private f:Lss/p$a;

.field private g:Lss/z;

.field private h:Lss/y;

.field private i:Lss/y;

.field private j:Lss/y;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lss/y$a;->c:I

    new-instance v0, Lss/p$a;

    invoke-direct {v0}, Lss/p$a;-><init>()V

    iput-object v0, p0, Lss/y$a;->f:Lss/p$a;

    return-void
.end method

.method private constructor <init>(Lss/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lss/y$a;->c:I

    invoke-static {p1}, Lss/y;->a(Lss/y;)Lss/w;

    move-result-object v0

    iput-object v0, p0, Lss/y$a;->a:Lss/w;

    invoke-static {p1}, Lss/y;->b(Lss/y;)Lss/u;

    move-result-object v0

    iput-object v0, p0, Lss/y$a;->b:Lss/u;

    invoke-static {p1}, Lss/y;->c(Lss/y;)I

    move-result v0

    iput v0, p0, Lss/y$a;->c:I

    invoke-static {p1}, Lss/y;->d(Lss/y;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lss/y$a;->d:Ljava/lang/String;

    invoke-static {p1}, Lss/y;->e(Lss/y;)Lss/o;

    move-result-object v0

    iput-object v0, p0, Lss/y$a;->e:Lss/o;

    invoke-static {p1}, Lss/y;->f(Lss/y;)Lss/p;

    move-result-object v0

    invoke-virtual {v0}, Lss/p;->b()Lss/p$a;

    move-result-object v0

    iput-object v0, p0, Lss/y$a;->f:Lss/p$a;

    invoke-static {p1}, Lss/y;->g(Lss/y;)Lss/z;

    move-result-object v0

    iput-object v0, p0, Lss/y$a;->g:Lss/z;

    invoke-static {p1}, Lss/y;->h(Lss/y;)Lss/y;

    move-result-object v0

    iput-object v0, p0, Lss/y$a;->h:Lss/y;

    invoke-static {p1}, Lss/y;->i(Lss/y;)Lss/y;

    move-result-object v0

    iput-object v0, p0, Lss/y$a;->i:Lss/y;

    invoke-static {p1}, Lss/y;->j(Lss/y;)Lss/y;

    move-result-object v0

    iput-object v0, p0, Lss/y$a;->j:Lss/y;

    return-void
.end method

.method synthetic constructor <init>(Lss/y;Lss/y$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lss/y$a;-><init>(Lss/y;)V

    return-void
.end method

.method static synthetic a(Lss/y$a;)Lss/w;
    .locals 1

    iget-object v0, p0, Lss/y$a;->a:Lss/w;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lss/y;)V
    .locals 3

    invoke-static {p2}, Lss/y;->g(Lss/y;)Lss/z;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".body != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Lss/y;->h(Lss/y;)Lss/y;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".networkResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p2}, Lss/y;->i(Lss/y;)Lss/y;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".cacheResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p2}, Lss/y;->j(Lss/y;)Lss/y;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".priorResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method static synthetic b(Lss/y$a;)Lss/u;
    .locals 1

    iget-object v0, p0, Lss/y$a;->b:Lss/u;

    return-object v0
.end method

.method static synthetic c(Lss/y$a;)I
    .locals 1

    iget v0, p0, Lss/y$a;->c:I

    return v0
.end method

.method static synthetic d(Lss/y$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lss/y$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method private d(Lss/y;)V
    .locals 2

    invoke-static {p1}, Lss/y;->g(Lss/y;)Lss/z;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "priorResponse.body != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static synthetic e(Lss/y$a;)Lss/o;
    .locals 1

    iget-object v0, p0, Lss/y$a;->e:Lss/o;

    return-object v0
.end method

.method static synthetic f(Lss/y$a;)Lss/p$a;
    .locals 1

    iget-object v0, p0, Lss/y$a;->f:Lss/p$a;

    return-object v0
.end method

.method static synthetic g(Lss/y$a;)Lss/z;
    .locals 1

    iget-object v0, p0, Lss/y$a;->g:Lss/z;

    return-object v0
.end method

.method static synthetic h(Lss/y$a;)Lss/y;
    .locals 1

    iget-object v0, p0, Lss/y$a;->h:Lss/y;

    return-object v0
.end method

.method static synthetic i(Lss/y$a;)Lss/y;
    .locals 1

    iget-object v0, p0, Lss/y$a;->i:Lss/y;

    return-object v0
.end method

.method static synthetic j(Lss/y$a;)Lss/y;
    .locals 1

    iget-object v0, p0, Lss/y$a;->j:Lss/y;

    return-object v0
.end method


# virtual methods
.method public a(I)Lss/y$a;
    .locals 0

    iput p1, p0, Lss/y$a;->c:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lss/y$a;
    .locals 0

    iput-object p1, p0, Lss/y$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lss/y$a;
    .locals 1

    iget-object v0, p0, Lss/y$a;->f:Lss/p$a;

    invoke-virtual {v0, p1, p2}, Lss/p$a;->c(Ljava/lang/String;Ljava/lang/String;)Lss/p$a;

    return-object p0
.end method

.method public a(Lss/o;)Lss/y$a;
    .locals 0

    iput-object p1, p0, Lss/y$a;->e:Lss/o;

    return-object p0
.end method

.method public a(Lss/p;)Lss/y$a;
    .locals 1

    invoke-virtual {p1}, Lss/p;->b()Lss/p$a;

    move-result-object v0

    iput-object v0, p0, Lss/y$a;->f:Lss/p$a;

    return-object p0
.end method

.method public a(Lss/u;)Lss/y$a;
    .locals 0

    iput-object p1, p0, Lss/y$a;->b:Lss/u;

    return-object p0
.end method

.method public a(Lss/w;)Lss/y$a;
    .locals 0

    iput-object p1, p0, Lss/y$a;->a:Lss/w;

    return-object p0
.end method

.method public a(Lss/y;)Lss/y$a;
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "networkResponse"

    invoke-direct {p0, v0, p1}, Lss/y$a;->a(Ljava/lang/String;Lss/y;)V

    :cond_0
    iput-object p1, p0, Lss/y$a;->h:Lss/y;

    return-object p0
.end method

.method public a(Lss/z;)Lss/y$a;
    .locals 0

    iput-object p1, p0, Lss/y$a;->g:Lss/z;

    return-object p0
.end method

.method public a()Lss/y;
    .locals 3

    iget-object v0, p0, Lss/y$a;->a:Lss/w;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lss/y$a;->b:Lss/u;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lss/y$a;->c:I

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lss/y$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lss/y;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lss/y;-><init>(Lss/y$a;Lss/y$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lss/y$a;
    .locals 1

    iget-object v0, p0, Lss/y$a;->f:Lss/p$a;

    invoke-virtual {v0, p1, p2}, Lss/p$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/p$a;

    return-object p0
.end method

.method public b(Lss/y;)Lss/y$a;
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "cacheResponse"

    invoke-direct {p0, v0, p1}, Lss/y$a;->a(Ljava/lang/String;Lss/y;)V

    :cond_0
    iput-object p1, p0, Lss/y$a;->i:Lss/y;

    return-object p0
.end method

.method public c(Lss/y;)Lss/y$a;
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lss/y$a;->d(Lss/y;)V

    :cond_0
    iput-object p1, p0, Lss/y$a;->j:Lss/y;

    return-object p0
.end method
