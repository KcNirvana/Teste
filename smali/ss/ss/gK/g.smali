.class public final Lss/ss/gK/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lss/ss/gK/g$a;
    }
.end annotation


# static fields
.field private static final e:Lss/z;


# instance fields
.field final a:Lss/t;

.field public final b:Lss/ss/gK/r;

.field c:J

.field public final d:Z

.field private final f:Lss/y;

.field private g:Lss/ss/gK/i;

.field private h:Z

.field private final i:Lss/w;

.field private j:Lss/w;

.field private k:Lss/y;

.field private l:Lss/y;

.field private m:LgK/q;

.field private n:LgK/d;

.field private final o:Z

.field private final p:Z

.field private q:Lss/ss/gK/a;

.field private r:Lss/ss/gK/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lss/ss/gK/g$1;

    invoke-direct {v0}, Lss/ss/gK/g$1;-><init>()V

    sput-object v0, Lss/ss/gK/g;->e:Lss/z;

    return-void
.end method

.method public constructor <init>(Lss/t;Lss/w;ZZZLss/ss/gK/r;Lss/ss/gK/n;Lss/y;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lss/ss/gK/g;->c:J

    iput-object p1, p0, Lss/ss/gK/g;->a:Lss/t;

    iput-object p2, p0, Lss/ss/gK/g;->i:Lss/w;

    iput-boolean p3, p0, Lss/ss/gK/g;->d:Z

    iput-boolean p4, p0, Lss/ss/gK/g;->o:Z

    iput-boolean p5, p0, Lss/ss/gK/g;->p:Z

    if-eqz p6, :cond_0

    :goto_0
    iput-object p6, p0, Lss/ss/gK/g;->b:Lss/ss/gK/r;

    iput-object p7, p0, Lss/ss/gK/g;->m:LgK/q;

    iput-object p8, p0, Lss/ss/gK/g;->f:Lss/y;

    return-void

    :cond_0
    new-instance p6, Lss/ss/gK/r;

    invoke-virtual {p1}, Lss/t;->o()Lss/i;

    move-result-object v0

    invoke-static {p1, p2}, Lss/ss/gK/g;->a(Lss/t;Lss/w;)Lss/a;

    move-result-object v1

    invoke-direct {p6, v0, v1}, Lss/ss/gK/r;-><init>(Lss/i;Lss/a;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lss/k;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    if-lez v1, :cond_0

    const-string/jumbo v0, "; "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss/k;

    invoke-virtual {v0}, Lss/k;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lss/k;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lss/t;Lss/w;)Lss/a;
    .locals 13

    const/4 v7, 0x0

    invoke-virtual {p1}, Lss/w;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lss/t;->j()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-virtual {p0}, Lss/t;->k()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v6

    invoke-virtual {p0}, Lss/t;->l()Lss/f;

    move-result-object v7

    :goto_0
    new-instance v0, Lss/a;

    invoke-virtual {p1}, Lss/w;->a()Lss/q;

    move-result-object v1

    invoke-virtual {v1}, Lss/q;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lss/w;->a()Lss/q;

    move-result-object v2

    invoke-virtual {v2}, Lss/q;->g()I

    move-result v2

    invoke-virtual {p0}, Lss/t;->h()Lss/n;

    move-result-object v3

    invoke-virtual {p0}, Lss/t;->i()Ljavax/net/SocketFactory;

    move-result-object v4

    invoke-virtual {p0}, Lss/t;->n()Lss/b;

    move-result-object v8

    invoke-virtual {p0}, Lss/t;->d()Ljava/net/Proxy;

    move-result-object v9

    invoke-virtual {p0}, Lss/t;->t()Ljava/util/List;

    move-result-object v10

    invoke-virtual {p0}, Lss/t;->u()Ljava/util/List;

    move-result-object v11

    invoke-virtual {p0}, Lss/t;->e()Ljava/net/ProxySelector;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lss/a;-><init>(Ljava/lang/String;ILss/n;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lss/f;Lss/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v0

    :cond_0
    move-object v6, v7

    move-object v5, v7

    goto :goto_0
.end method

.method private static a(Lss/p;Lss/p;)Lss/p;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v2, Lss/p$a;

    invoke-direct {v2}, Lss/p$a;-><init>()V

    invoke-virtual {p0}, Lss/p;->a()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    invoke-virtual {p0, v1}, Lss/p;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1}, Lss/p;->b(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Warning"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v4}, Lss/ss/gK/j;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1, v4}, Lss/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    :cond_2
    invoke-virtual {v2, v4, v5}, Lss/p$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/p$a;

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lss/p;->a()I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_6

    invoke-virtual {p1, v0}, Lss/p;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Content-Length"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    invoke-static {v3}, Lss/ss/gK/j;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1, v0}, Lss/p;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lss/p$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/p$a;

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Lss/p$a;->a()Lss/p;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lss/ss/gK/g;)Lss/ss/gK/i;
    .locals 1

    iget-object v0, p0, Lss/ss/gK/g;->g:Lss/ss/gK/i;

    return-object v0
.end method

.method static synthetic a(Lss/ss/gK/g;Lss/w;)Lss/w;
    .locals 0

    iput-object p1, p0, Lss/ss/gK/g;->j:Lss/w;

    return-object p1
.end method

.method private a(Lss/ss/gK/a;Lss/y;)Lss/y;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    invoke-interface {p1}, Lss/ss/gK/a;->a()LgK/q;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lss/y;->f()Lss/z;

    move-result-object v1

    invoke-virtual {v1}, Lss/z;->c()LgK/e;

    move-result-object v1

    invoke-static {v0}, LgK/l;->a(LgK/q;)LgK/d;

    move-result-object v0

    new-instance v2, Lss/ss/gK/g$2;

    invoke-direct {v2, p0, v1, p1, v0}, Lss/ss/gK/g$2;-><init>(Lss/ss/gK/g;LgK/e;Lss/ss/gK/a;LgK/d;)V

    invoke-virtual {p2}, Lss/y;->g()Lss/y$a;

    move-result-object v0

    new-instance v1, Lss/ss/gK/k;

    invoke-virtual {p2}, Lss/y;->e()Lss/p;

    move-result-object v3

    invoke-static {v2}, LgK/l;->a(LgK/r;)LgK/e;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lss/ss/gK/k;-><init>(Lss/p;LgK/e;)V

    invoke-virtual {v0, v1}, Lss/y$a;->a(Lss/z;)Lss/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/y$a;->a()Lss/y;

    move-result-object p2

    goto :goto_0
.end method

.method public static a(Lss/y;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lss/y;->a()Lss/w;

    move-result-object v2

    invoke-virtual {v2}, Lss/w;->b()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lss/y;->b()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_3

    :cond_2
    const/16 v3, 0xcc

    if-eq v2, v3, :cond_3

    const/16 v3, 0x130

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lss/ss/gK/j;->a(Lss/y;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    const-string/jumbo v2, "chunked"

    const-string/jumbo v3, "Transfer-Encoding"

    invoke-virtual {p0, v3}, Lss/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private static a(Lss/y;Lss/y;)Z
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p1}, Lss/y;->b()I

    move-result v1

    const/16 v2, 0x130

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lss/y;->e()Lss/p;

    move-result-object v1

    const-string/jumbo v2, "Last-Modified"

    invoke-virtual {v1, v2}, Lss/p;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lss/y;->e()Lss/p;

    move-result-object v2

    const-string/jumbo v3, "Last-Modified"

    invoke-virtual {v2, v3}, Lss/p;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lss/w;)Lss/w;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lss/w;->e()Lss/w$a;

    move-result-object v0

    const-string/jumbo v1, "Host"

    invoke-virtual {p1, v1}, Lss/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "Host"

    invoke-virtual {p1}, Lss/w;->a()Lss/q;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lss/ss/i;->a(Lss/q;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lss/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/w$a;

    :cond_0
    const-string/jumbo v1, "Connection"

    invoke-virtual {p1, v1}, Lss/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "Connection"

    const-string/jumbo v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lss/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/w$a;

    :cond_1
    const-string/jumbo v1, "Accept-Encoding"

    invoke-virtual {p1, v1}, Lss/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lss/ss/gK/g;->h:Z

    const-string/jumbo v1, "Accept-Encoding"

    const-string/jumbo v2, "gzip"

    invoke-virtual {v0, v1, v2}, Lss/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/w$a;

    :cond_2
    iget-object v1, p0, Lss/ss/gK/g;->a:Lss/t;

    invoke-virtual {v1}, Lss/t;->f()Lss/l;

    move-result-object v1

    invoke-virtual {p1}, Lss/w;->a()Lss/q;

    move-result-object v2

    invoke-interface {v1, v2}, Lss/l;->a(Lss/q;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "Cookie"

    invoke-direct {p0, v1}, Lss/ss/gK/g;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lss/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/w$a;

    :cond_3
    const-string/jumbo v1, "User-Agent"

    invoke-virtual {p1, v1}, Lss/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "User-Agent"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lss/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/w$a;

    :cond_4
    invoke-virtual {v0}, Lss/w$a;->a()Lss/w;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lss/ss/gK/g;)Lss/y;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lss/ss/gK/g;->l()Lss/y;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lss/y;)Lss/y;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lss/y;->f()Lss/z;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lss/y;->g()Lss/y$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lss/y$a;->a(Lss/z;)Lss/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/y$a;->a()Lss/y;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private c(Lss/y;)Lss/y;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lss/ss/gK/g;->h:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "gzip"

    iget-object v1, p0, Lss/ss/gK/g;->l:Lss/y;

    const-string/jumbo v2, "Content-Encoding"

    invoke-virtual {v1, v2}, Lss/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p1}, Lss/y;->f()Lss/z;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, LgK/j;

    invoke-virtual {p1}, Lss/y;->f()Lss/z;

    move-result-object v1

    invoke-virtual {v1}, Lss/z;->c()LgK/e;

    move-result-object v1

    invoke-direct {v0, v1}, LgK/j;-><init>(LgK/r;)V

    invoke-virtual {p1}, Lss/y;->e()Lss/p;

    move-result-object v1

    invoke-virtual {v1}, Lss/p;->b()Lss/p$a;

    move-result-object v1

    const-string/jumbo v2, "Content-Encoding"

    invoke-virtual {v1, v2}, Lss/p$a;->b(Ljava/lang/String;)Lss/p$a;

    move-result-object v1

    const-string/jumbo v2, "Content-Length"

    invoke-virtual {v1, v2}, Lss/p$a;->b(Ljava/lang/String;)Lss/p$a;

    move-result-object v1

    invoke-virtual {v1}, Lss/p$a;->a()Lss/p;

    move-result-object v1

    invoke-virtual {p1}, Lss/y;->g()Lss/y$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lss/y$a;->a(Lss/p;)Lss/y$a;

    move-result-object v2

    new-instance v3, Lss/ss/gK/k;

    invoke-static {v0}, LgK/l;->a(LgK/r;)LgK/e;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lss/ss/gK/k;-><init>(Lss/p;LgK/e;)V

    invoke-virtual {v2, v3}, Lss/y$a;->a(Lss/z;)Lss/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/y$a;->a()Lss/y;

    move-result-object p1

    goto :goto_0
.end method

.method private i()Z
    .locals 1

    iget-boolean v0, p0, Lss/ss/gK/g;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lss/ss/gK/g;->j:Lss/w;

    invoke-virtual {p0, v0}, Lss/ss/gK/g;->a(Lss/w;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lss/ss/gK/g;->m:LgK/q;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()Lss/ss/gK/i;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lss/ss/gK/o;,
            Lss/ss/gK/l;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/gK/g;->j:Lss/w;

    invoke-virtual {v0}, Lss/w;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v5, 0x1

    :goto_0
    iget-object v0, p0, Lss/ss/gK/g;->b:Lss/ss/gK/r;

    iget-object v1, p0, Lss/ss/gK/g;->a:Lss/t;

    invoke-virtual {v1}, Lss/t;->a()I

    move-result v1

    iget-object v2, p0, Lss/ss/gK/g;->a:Lss/t;

    invoke-virtual {v2}, Lss/t;->b()I

    move-result v2

    iget-object v3, p0, Lss/ss/gK/g;->a:Lss/t;

    invoke-virtual {v3}, Lss/t;->c()I

    move-result v3

    iget-object v4, p0, Lss/ss/gK/g;->a:Lss/t;

    invoke-virtual {v4}, Lss/t;->r()Z

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lss/ss/gK/r;->a(IIIZZ)Lss/ss/gK/i;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private k()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lss/ss/c;->b:Lss/ss/c;

    iget-object v1, p0, Lss/ss/gK/g;->a:Lss/t;

    invoke-virtual {v0, v1}, Lss/ss/c;->a(Lss/t;)Lss/ss/d;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lss/ss/gK/g;->l:Lss/y;

    iget-object v2, p0, Lss/ss/gK/g;->j:Lss/w;

    invoke-static {v1, v2}, Lss/ss/gK/b;->a(Lss/y;Lss/w;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lss/ss/gK/g;->j:Lss/w;

    invoke-virtual {v1}, Lss/w;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lss/ss/gK/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lss/ss/gK/g;->j:Lss/w;

    invoke-interface {v0, v1}, Lss/ss/d;->b(Lss/w;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lss/ss/gK/g;->l:Lss/y;

    invoke-static {v1}, Lss/ss/gK/g;->b(Lss/y;)Lss/y;

    move-result-object v1

    invoke-interface {v0, v1}, Lss/ss/d;->a(Lss/y;)Lss/ss/gK/a;

    move-result-object v0

    iput-object v0, p0, Lss/ss/gK/g;->q:Lss/ss/gK/a;

    goto :goto_0
.end method

.method private l()Lss/y;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/gK/g;->g:Lss/ss/gK/i;

    invoke-interface {v0}, Lss/ss/gK/i;->b()V

    iget-object v0, p0, Lss/ss/gK/g;->g:Lss/ss/gK/i;

    invoke-interface {v0}, Lss/ss/gK/i;->a()Lss/y$a;

    move-result-object v0

    iget-object v1, p0, Lss/ss/gK/g;->j:Lss/w;

    invoke-virtual {v0, v1}, Lss/y$a;->a(Lss/w;)Lss/y$a;

    move-result-object v0

    iget-object v1, p0, Lss/ss/gK/g;->b:Lss/ss/gK/r;

    invoke-virtual {v1}, Lss/ss/gK/r;->a()Lss/ss/pK/b;

    move-result-object v1

    invoke-virtual {v1}, Lss/ss/pK/b;->c()Lss/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lss/y$a;->a(Lss/o;)Lss/y$a;

    move-result-object v0

    sget-object v1, Lss/ss/gK/j;->b:Ljava/lang/String;

    iget-wide v2, p0, Lss/ss/gK/g;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lss/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/y$a;

    move-result-object v0

    sget-object v1, Lss/ss/gK/j;->c:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lss/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/y$a;->a()Lss/y;

    move-result-object v0

    iget-boolean v1, p0, Lss/ss/gK/g;->p:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lss/y;->g()Lss/y$a;

    move-result-object v1

    iget-object v2, p0, Lss/ss/gK/g;->g:Lss/ss/gK/i;

    invoke-interface {v2, v0}, Lss/ss/gK/i;->a(Lss/y;)Lss/z;

    move-result-object v0

    invoke-virtual {v1, v0}, Lss/y$a;->a(Lss/z;)Lss/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/y$a;->a()Lss/y;

    move-result-object v0

    :cond_0
    const-string/jumbo v1, "close"

    invoke-virtual {v0}, Lss/y;->a()Lss/w;

    move-result-object v2

    const-string/jumbo v3, "Connection"

    invoke-virtual {v2, v3}, Lss/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "close"

    const-string/jumbo v2, "Connection"

    invoke-virtual {v0, v2}, Lss/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lss/ss/gK/g;->b:Lss/ss/gK/r;

    invoke-virtual {v1}, Lss/ss/gK/r;->c()V

    :cond_2
    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/IOException;LgK/q;)Lss/ss/gK/g;
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Lss/ss/gK/g;->b:Lss/ss/gK/r;

    invoke-virtual {v1, p1, p2}, Lss/ss/gK/r;->a(Ljava/io/IOException;LgK/q;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lss/ss/gK/g;->a:Lss/t;

    invoke-virtual {v1}, Lss/t;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lss/ss/gK/g;->f()Lss/ss/gK/r;

    move-result-object v6

    new-instance v0, Lss/ss/gK/g;

    iget-object v1, p0, Lss/ss/gK/g;->a:Lss/t;

    iget-object v2, p0, Lss/ss/gK/g;->i:Lss/w;

    iget-boolean v3, p0, Lss/ss/gK/g;->d:Z

    iget-boolean v4, p0, Lss/ss/gK/g;->o:Z

    iget-boolean v5, p0, Lss/ss/gK/g;->p:Z

    move-object v7, p2

    check-cast v7, Lss/ss/gK/n;

    iget-object v8, p0, Lss/ss/gK/g;->f:Lss/y;

    invoke-direct/range {v0 .. v8}, Lss/ss/gK/g;-><init>(Lss/t;Lss/w;ZZZLss/ss/gK/r;Lss/ss/gK/n;Lss/y;)V

    goto :goto_0
.end method

.method public a()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lss/ss/gK/l;,
            Lss/ss/gK/o;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/gK/g;->r:Lss/ss/gK/b;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lss/ss/gK/g;->g:Lss/ss/gK/i;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_2
    iget-object v0, p0, Lss/ss/gK/g;->i:Lss/w;

    invoke-direct {p0, v0}, Lss/ss/gK/g;->b(Lss/w;)Lss/w;

    move-result-object v1

    sget-object v0, Lss/ss/c;->b:Lss/ss/c;

    iget-object v2, p0, Lss/ss/gK/g;->a:Lss/t;

    invoke-virtual {v0, v2}, Lss/ss/c;->a(Lss/t;)Lss/ss/d;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2, v1}, Lss/ss/d;->a(Lss/w;)Lss/y;

    move-result-object v0

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v3, Lss/ss/gK/b$a;

    invoke-direct {v3, v4, v5, v1, v0}, Lss/ss/gK/b$a;-><init>(JLss/w;Lss/y;)V

    invoke-virtual {v3}, Lss/ss/gK/b$a;->a()Lss/ss/gK/b;

    move-result-object v3

    iput-object v3, p0, Lss/ss/gK/g;->r:Lss/ss/gK/b;

    iget-object v3, p0, Lss/ss/gK/g;->r:Lss/ss/gK/b;

    iget-object v3, v3, Lss/ss/gK/b;->a:Lss/w;

    iput-object v3, p0, Lss/ss/gK/g;->j:Lss/w;

    iget-object v3, p0, Lss/ss/gK/g;->r:Lss/ss/gK/b;

    iget-object v3, v3, Lss/ss/gK/b;->b:Lss/y;

    iput-object v3, p0, Lss/ss/gK/g;->k:Lss/y;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lss/ss/gK/g;->r:Lss/ss/gK/b;

    invoke-interface {v2, v3}, Lss/ss/d;->a(Lss/ss/gK/b;)V

    :cond_3
    if-eqz v0, :cond_4

    iget-object v2, p0, Lss/ss/gK/g;->k:Lss/y;

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lss/y;->f()Lss/z;

    move-result-object v2

    invoke-static {v2}, Lss/ss/i;->a(Ljava/io/Closeable;)V

    :cond_4
    iget-object v2, p0, Lss/ss/gK/g;->j:Lss/w;

    if-nez v2, :cond_6

    iget-object v2, p0, Lss/ss/gK/g;->k:Lss/y;

    if-nez v2, :cond_6

    new-instance v0, Lss/y$a;

    invoke-direct {v0}, Lss/y$a;-><init>()V

    iget-object v1, p0, Lss/ss/gK/g;->i:Lss/w;

    invoke-virtual {v0, v1}, Lss/y$a;->a(Lss/w;)Lss/y$a;

    move-result-object v0

    iget-object v1, p0, Lss/ss/gK/g;->f:Lss/y;

    invoke-static {v1}, Lss/ss/gK/g;->b(Lss/y;)Lss/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lss/y$a;->c(Lss/y;)Lss/y$a;

    move-result-object v0

    sget-object v1, Lss/u;->b:Lss/u;

    invoke-virtual {v0, v1}, Lss/y$a;->a(Lss/u;)Lss/y$a;

    move-result-object v0

    const/16 v1, 0x1f8

    invoke-virtual {v0, v1}, Lss/y$a;->a(I)Lss/y$a;

    move-result-object v0

    const-string/jumbo v1, "Unsatisfiable Request (only-if-cached)"

    invoke-virtual {v0, v1}, Lss/y$a;->a(Ljava/lang/String;)Lss/y$a;

    move-result-object v0

    sget-object v1, Lss/ss/gK/g;->e:Lss/z;

    invoke-virtual {v0, v1}, Lss/y$a;->a(Lss/z;)Lss/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/y$a;->a()Lss/y;

    move-result-object v0

    iput-object v0, p0, Lss/ss/gK/g;->l:Lss/y;

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lss/ss/gK/g;->j:Lss/w;

    if-nez v2, :cond_7

    iget-object v0, p0, Lss/ss/gK/g;->k:Lss/y;

    invoke-virtual {v0}, Lss/y;->g()Lss/y$a;

    move-result-object v0

    iget-object v1, p0, Lss/ss/gK/g;->i:Lss/w;

    invoke-virtual {v0, v1}, Lss/y$a;->a(Lss/w;)Lss/y$a;

    move-result-object v0

    iget-object v1, p0, Lss/ss/gK/g;->f:Lss/y;

    invoke-static {v1}, Lss/ss/gK/g;->b(Lss/y;)Lss/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lss/y$a;->c(Lss/y;)Lss/y$a;

    move-result-object v0

    iget-object v1, p0, Lss/ss/gK/g;->k:Lss/y;

    invoke-static {v1}, Lss/ss/gK/g;->b(Lss/y;)Lss/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lss/y$a;->b(Lss/y;)Lss/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/y$a;->a()Lss/y;

    move-result-object v0

    iput-object v0, p0, Lss/ss/gK/g;->l:Lss/y;

    iget-object v0, p0, Lss/ss/gK/g;->l:Lss/y;

    invoke-direct {p0, v0}, Lss/ss/gK/g;->c(Lss/y;)Lss/y;

    move-result-object v0

    iput-object v0, p0, Lss/ss/gK/g;->l:Lss/y;

    goto/16 :goto_0

    :cond_7
    :try_start_0
    invoke-direct {p0}, Lss/ss/gK/g;->j()Lss/ss/gK/i;

    move-result-object v2

    iput-object v2, p0, Lss/ss/gK/g;->g:Lss/ss/gK/i;

    iget-object v2, p0, Lss/ss/gK/g;->g:Lss/ss/gK/i;

    invoke-interface {v2, p0}, Lss/ss/gK/i;->a(Lss/ss/gK/g;)V

    invoke-direct {p0}, Lss/ss/gK/g;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lss/ss/gK/j;->a(Lss/w;)J

    move-result-wide v2

    iget-boolean v1, p0, Lss/ss/gK/g;->d:Z

    if-eqz v1, :cond_b

    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-lez v1, :cond_9

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lss/y;->f()Lss/z;

    move-result-object v0

    invoke-static {v0}, Lss/ss/i;->a(Ljava/io/Closeable;)V

    :cond_8
    throw v1

    :cond_9
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_a

    :try_start_1
    iget-object v1, p0, Lss/ss/gK/g;->g:Lss/ss/gK/i;

    iget-object v4, p0, Lss/ss/gK/g;->j:Lss/w;

    invoke-interface {v1, v4}, Lss/ss/gK/i;->a(Lss/w;)V

    new-instance v1, Lss/ss/gK/n;

    long-to-int v2, v2

    invoke-direct {v1, v2}, Lss/ss/gK/n;-><init>(I)V

    iput-object v1, p0, Lss/ss/gK/g;->m:LgK/q;

    goto/16 :goto_0

    :cond_a
    new-instance v1, Lss/ss/gK/n;

    invoke-direct {v1}, Lss/ss/gK/n;-><init>()V

    iput-object v1, p0, Lss/ss/gK/g;->m:LgK/q;

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lss/ss/gK/g;->g:Lss/ss/gK/i;

    iget-object v4, p0, Lss/ss/gK/g;->j:Lss/w;

    invoke-interface {v1, v4}, Lss/ss/gK/i;->a(Lss/w;)V

    iget-object v1, p0, Lss/ss/gK/g;->g:Lss/ss/gK/i;

    iget-object v4, p0, Lss/ss/gK/g;->j:Lss/w;

    invoke-interface {v1, v4, v2, v3}, Lss/ss/gK/i;->a(Lss/w;J)LgK/q;

    move-result-object v1

    iput-object v1, p0, Lss/ss/gK/g;->m:LgK/q;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public a(Lss/p;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/gK/g;->a:Lss/t;

    invoke-virtual {v0}, Lss/t;->f()Lss/l;

    move-result-object v0

    sget-object v1, Lss/l;->a:Lss/l;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lss/ss/gK/g;->i:Lss/w;

    invoke-virtual {v0}, Lss/w;->a()Lss/q;

    move-result-object v0

    invoke-static {v0, p1}, Lss/k;->a(Lss/q;Lss/p;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lss/ss/gK/g;->a:Lss/t;

    invoke-virtual {v1}, Lss/t;->f()Lss/l;

    move-result-object v1

    iget-object v2, p0, Lss/ss/gK/g;->i:Lss/w;

    invoke-virtual {v2}, Lss/w;->a()Lss/q;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lss/l;->a(Lss/q;Ljava/util/List;)V

    goto :goto_0
.end method

.method public a(Lss/q;)Z
    .locals 3

    iget-object v0, p0, Lss/ss/gK/g;->i:Lss/w;

    invoke-virtual {v0}, Lss/w;->a()Lss/q;

    move-result-object v0

    invoke-virtual {v0}, Lss/q;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lss/q;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lss/q;->g()I

    move-result v1

    invoke-virtual {p1}, Lss/q;->g()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lss/q;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lss/q;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lss/w;)Z
    .locals 1

    invoke-virtual {p1}, Lss/w;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lss/ss/gK/h;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 4

    iget-wide v0, p0, Lss/ss/gK/g;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lss/ss/gK/g;->c:J

    return-void
.end method

.method public c()Lss/y;
    .locals 1

    iget-object v0, p0, Lss/ss/gK/g;->l:Lss/y;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lss/ss/gK/g;->l:Lss/y;

    return-object v0
.end method

.method public d()Lss/h;
    .locals 1

    iget-object v0, p0, Lss/ss/gK/g;->b:Lss/ss/gK/r;

    invoke-virtual {v0}, Lss/ss/gK/r;->a()Lss/ss/pK/b;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/gK/g;->b:Lss/ss/gK/r;

    invoke-virtual {v0}, Lss/ss/gK/r;->b()V

    return-void
.end method

.method public f()Lss/ss/gK/r;
    .locals 2

    iget-object v0, p0, Lss/ss/gK/g;->n:LgK/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lss/ss/gK/g;->n:LgK/d;

    invoke-static {v0}, Lss/ss/i;->a(Ljava/io/Closeable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lss/ss/gK/g;->l:Lss/y;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lss/ss/gK/g;->l:Lss/y;

    invoke-virtual {v0}, Lss/y;->f()Lss/z;

    move-result-object v0

    invoke-static {v0}, Lss/ss/i;->a(Ljava/io/Closeable;)V

    :goto_1
    iget-object v0, p0, Lss/ss/gK/g;->b:Lss/ss/gK/r;

    return-object v0

    :cond_1
    iget-object v0, p0, Lss/ss/gK/g;->m:LgK/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lss/ss/gK/g;->m:LgK/q;

    invoke-static {v0}, Lss/ss/i;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lss/ss/gK/g;->b:Lss/ss/gK/r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lss/ss/gK/r;->a(Ljava/io/IOException;)V

    goto :goto_1
.end method

.method public g()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, -0x1

    iget-object v0, p0, Lss/ss/gK/g;->l:Lss/y;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lss/ss/gK/g;->j:Lss/w;

    if-nez v0, :cond_2

    iget-object v0, p0, Lss/ss/gK/g;->k:Lss/y;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "call sendRequest() first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lss/ss/gK/g;->j:Lss/w;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lss/ss/gK/g;->p:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lss/ss/gK/g;->g:Lss/ss/gK/i;

    iget-object v1, p0, Lss/ss/gK/g;->j:Lss/w;

    invoke-interface {v0, v1}, Lss/ss/gK/i;->a(Lss/w;)V

    invoke-direct {p0}, Lss/ss/gK/g;->l()Lss/y;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lss/y;->e()Lss/p;

    move-result-object v1

    invoke-virtual {p0, v1}, Lss/ss/gK/g;->a(Lss/p;)V

    iget-object v1, p0, Lss/ss/gK/g;->k:Lss/y;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lss/ss/gK/g;->k:Lss/y;

    invoke-static {v1, v0}, Lss/ss/gK/g;->a(Lss/y;Lss/y;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lss/ss/gK/g;->k:Lss/y;

    invoke-virtual {v1}, Lss/y;->g()Lss/y$a;

    move-result-object v1

    iget-object v2, p0, Lss/ss/gK/g;->i:Lss/w;

    invoke-virtual {v1, v2}, Lss/y$a;->a(Lss/w;)Lss/y$a;

    move-result-object v1

    iget-object v2, p0, Lss/ss/gK/g;->f:Lss/y;

    invoke-static {v2}, Lss/ss/gK/g;->b(Lss/y;)Lss/y;

    move-result-object v2

    invoke-virtual {v1, v2}, Lss/y$a;->c(Lss/y;)Lss/y$a;

    move-result-object v1

    iget-object v2, p0, Lss/ss/gK/g;->k:Lss/y;

    invoke-virtual {v2}, Lss/y;->e()Lss/p;

    move-result-object v2

    invoke-virtual {v0}, Lss/y;->e()Lss/p;

    move-result-object v3

    invoke-static {v2, v3}, Lss/ss/gK/g;->a(Lss/p;Lss/p;)Lss/p;

    move-result-object v2

    invoke-virtual {v1, v2}, Lss/y$a;->a(Lss/p;)Lss/y$a;

    move-result-object v1

    iget-object v2, p0, Lss/ss/gK/g;->k:Lss/y;

    invoke-static {v2}, Lss/ss/gK/g;->b(Lss/y;)Lss/y;

    move-result-object v2

    invoke-virtual {v1, v2}, Lss/y$a;->b(Lss/y;)Lss/y$a;

    move-result-object v1

    invoke-static {v0}, Lss/ss/gK/g;->b(Lss/y;)Lss/y;

    move-result-object v2

    invoke-virtual {v1, v2}, Lss/y$a;->a(Lss/y;)Lss/y$a;

    move-result-object v1

    invoke-virtual {v1}, Lss/y$a;->a()Lss/y;

    move-result-object v1

    iput-object v1, p0, Lss/ss/gK/g;->l:Lss/y;

    invoke-virtual {v0}, Lss/y;->f()Lss/z;

    move-result-object v0

    invoke-virtual {v0}, Lss/z;->close()V

    invoke-virtual {p0}, Lss/ss/gK/g;->e()V

    sget-object v0, Lss/ss/c;->b:Lss/ss/c;

    iget-object v1, p0, Lss/ss/gK/g;->a:Lss/t;

    invoke-virtual {v0, v1}, Lss/ss/c;->a(Lss/t;)Lss/ss/d;

    move-result-object v0

    invoke-interface {v0}, Lss/ss/d;->a()V

    iget-object v1, p0, Lss/ss/gK/g;->k:Lss/y;

    iget-object v2, p0, Lss/ss/gK/g;->l:Lss/y;

    invoke-static {v2}, Lss/ss/gK/g;->b(Lss/y;)Lss/y;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lss/ss/d;->a(Lss/y;Lss/y;)V

    iget-object v0, p0, Lss/ss/gK/g;->l:Lss/y;

    invoke-direct {p0, v0}, Lss/ss/gK/g;->c(Lss/y;)Lss/y;

    move-result-object v0

    iput-object v0, p0, Lss/ss/gK/g;->l:Lss/y;

    goto/16 :goto_0

    :cond_3
    iget-boolean v0, p0, Lss/ss/gK/g;->o:Z

    if-nez v0, :cond_4

    new-instance v0, Lss/ss/gK/g$a;

    const/4 v1, 0x0

    iget-object v2, p0, Lss/ss/gK/g;->j:Lss/w;

    iget-object v3, p0, Lss/ss/gK/g;->b:Lss/ss/gK/r;

    invoke-virtual {v3}, Lss/ss/gK/r;->a()Lss/ss/pK/b;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lss/ss/gK/g$a;-><init>(Lss/ss/gK/g;ILss/w;Lss/h;)V

    iget-object v1, p0, Lss/ss/gK/g;->j:Lss/w;

    invoke-virtual {v0, v1}, Lss/ss/gK/g$a;->a(Lss/w;)Lss/y;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lss/ss/gK/g;->n:LgK/d;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lss/ss/gK/g;->n:LgK/d;

    invoke-interface {v0}, LgK/d;->c()LgK/c;

    move-result-object v0

    invoke-virtual {v0}, LgK/c;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    iget-object v0, p0, Lss/ss/gK/g;->n:LgK/d;

    invoke-interface {v0}, LgK/d;->e()LgK/d;

    :cond_5
    iget-wide v0, p0, Lss/ss/gK/g;->c:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_7

    iget-object v0, p0, Lss/ss/gK/g;->j:Lss/w;

    invoke-static {v0}, Lss/ss/gK/j;->a(Lss/w;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_6

    iget-object v0, p0, Lss/ss/gK/g;->m:LgK/q;

    instance-of v0, v0, Lss/ss/gK/n;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lss/ss/gK/g;->m:LgK/q;

    check-cast v0, Lss/ss/gK/n;

    invoke-virtual {v0}, Lss/ss/gK/n;->b()J

    move-result-wide v0

    iget-object v2, p0, Lss/ss/gK/g;->j:Lss/w;

    invoke-virtual {v2}, Lss/w;->e()Lss/w$a;

    move-result-object v2

    const-string/jumbo v3, "Content-Length"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lss/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/w$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/w$a;->a()Lss/w;

    move-result-object v0

    iput-object v0, p0, Lss/ss/gK/g;->j:Lss/w;

    :cond_6
    iget-object v0, p0, Lss/ss/gK/g;->g:Lss/ss/gK/i;

    iget-object v1, p0, Lss/ss/gK/g;->j:Lss/w;

    invoke-interface {v0, v1}, Lss/ss/gK/i;->a(Lss/w;)V

    :cond_7
    iget-object v0, p0, Lss/ss/gK/g;->m:LgK/q;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lss/ss/gK/g;->n:LgK/d;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lss/ss/gK/g;->n:LgK/d;

    invoke-interface {v0}, LgK/d;->close()V

    :goto_2
    iget-object v0, p0, Lss/ss/gK/g;->m:LgK/q;

    instance-of v0, v0, Lss/ss/gK/n;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lss/ss/gK/g;->g:Lss/ss/gK/i;

    iget-object v0, p0, Lss/ss/gK/g;->m:LgK/q;

    check-cast v0, Lss/ss/gK/n;

    invoke-interface {v1, v0}, Lss/ss/gK/i;->a(Lss/ss/gK/n;)V

    :cond_8
    invoke-direct {p0}, Lss/ss/gK/g;->l()Lss/y;

    move-result-object v0

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lss/ss/gK/g;->m:LgK/q;

    invoke-interface {v0}, LgK/q;->close()V

    goto :goto_2

    :cond_a
    iget-object v1, p0, Lss/ss/gK/g;->k:Lss/y;

    invoke-virtual {v1}, Lss/y;->f()Lss/z;

    move-result-object v1

    invoke-static {v1}, Lss/ss/i;->a(Ljava/io/Closeable;)V

    :cond_b
    invoke-virtual {v0}, Lss/y;->g()Lss/y$a;

    move-result-object v1

    iget-object v2, p0, Lss/ss/gK/g;->i:Lss/w;

    invoke-virtual {v1, v2}, Lss/y$a;->a(Lss/w;)Lss/y$a;

    move-result-object v1

    iget-object v2, p0, Lss/ss/gK/g;->f:Lss/y;

    invoke-static {v2}, Lss/ss/gK/g;->b(Lss/y;)Lss/y;

    move-result-object v2

    invoke-virtual {v1, v2}, Lss/y$a;->c(Lss/y;)Lss/y$a;

    move-result-object v1

    iget-object v2, p0, Lss/ss/gK/g;->k:Lss/y;

    invoke-static {v2}, Lss/ss/gK/g;->b(Lss/y;)Lss/y;

    move-result-object v2

    invoke-virtual {v1, v2}, Lss/y$a;->b(Lss/y;)Lss/y$a;

    move-result-object v1

    invoke-static {v0}, Lss/ss/gK/g;->b(Lss/y;)Lss/y;

    move-result-object v0

    invoke-virtual {v1, v0}, Lss/y$a;->a(Lss/y;)Lss/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/y$a;->a()Lss/y;

    move-result-object v0

    iput-object v0, p0, Lss/ss/gK/g;->l:Lss/y;

    iget-object v0, p0, Lss/ss/gK/g;->l:Lss/y;

    invoke-static {v0}, Lss/ss/gK/g;->a(Lss/y;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lss/ss/gK/g;->k()V

    iget-object v0, p0, Lss/ss/gK/g;->q:Lss/ss/gK/a;

    iget-object v1, p0, Lss/ss/gK/g;->l:Lss/y;

    invoke-direct {p0, v0, v1}, Lss/ss/gK/g;->a(Lss/ss/gK/a;Lss/y;)Lss/y;

    move-result-object v0

    invoke-direct {p0, v0}, Lss/ss/gK/g;->c(Lss/y;)Lss/y;

    move-result-object v0

    iput-object v0, p0, Lss/ss/gK/g;->l:Lss/y;

    goto/16 :goto_0
.end method

.method public h()Lss/w;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lss/ss/gK/g;->l:Lss/y;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lss/ss/gK/g;->b:Lss/ss/gK/r;

    invoke-virtual {v0}, Lss/ss/gK/r;->a()Lss/ss/pK/b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lss/h;->a()Lss/aa;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lss/ss/gK/g;->l:Lss/y;

    invoke-virtual {v2}, Lss/y;->b()I

    move-result v2

    iget-object v3, p0, Lss/ss/gK/g;->i:Lss/w;

    invoke-virtual {v3}, Lss/w;->b()Ljava/lang/String;

    move-result-object v3

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    return-object v1

    :cond_2
    move-object v0, v1

    goto :goto_0

    :sswitch_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lss/aa;->b()Ljava/net/Proxy;

    move-result-object v1

    :goto_2
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_4

    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v1, p0, Lss/ss/gK/g;->a:Lss/t;

    invoke-virtual {v1}, Lss/t;->d()Ljava/net/Proxy;

    move-result-object v1

    goto :goto_2

    :cond_4
    :sswitch_1
    iget-object v1, p0, Lss/ss/gK/g;->a:Lss/t;

    invoke-virtual {v1}, Lss/t;->m()Lss/b;

    move-result-object v1

    iget-object v2, p0, Lss/ss/gK/g;->l:Lss/y;

    invoke-interface {v1, v0, v2}, Lss/b;->a(Lss/aa;Lss/y;)Lss/w;

    move-result-object v1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "GET"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "HEAD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_5
    :sswitch_3
    iget-object v0, p0, Lss/ss/gK/g;->a:Lss/t;

    invoke-virtual {v0}, Lss/t;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lss/ss/gK/g;->l:Lss/y;

    const-string/jumbo v2, "Location"

    invoke-virtual {v0, v2}, Lss/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lss/ss/gK/g;->i:Lss/w;

    invoke-virtual {v2}, Lss/w;->a()Lss/q;

    move-result-object v2

    invoke-virtual {v2, v0}, Lss/q;->c(Ljava/lang/String;)Lss/q;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lss/q;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lss/ss/gK/g;->i:Lss/w;

    invoke-virtual {v4}, Lss/w;->a()Lss/q;

    move-result-object v4

    invoke-virtual {v4}, Lss/q;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lss/ss/gK/g;->a:Lss/t;

    invoke-virtual {v2}, Lss/t;->p()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_6
    iget-object v2, p0, Lss/ss/gK/g;->i:Lss/w;

    invoke-virtual {v2}, Lss/w;->e()Lss/w$a;

    move-result-object v2

    invoke-static {v3}, Lss/ss/gK/h;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v3}, Lss/ss/gK/h;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string/jumbo v3, "GET"

    invoke-virtual {v2, v3, v1}, Lss/w$a;->a(Ljava/lang/String;Lss/x;)Lss/w$a;

    :goto_3
    const-string/jumbo v1, "Transfer-Encoding"

    invoke-virtual {v2, v1}, Lss/w$a;->b(Ljava/lang/String;)Lss/w$a;

    const-string/jumbo v1, "Content-Length"

    invoke-virtual {v2, v1}, Lss/w$a;->b(Ljava/lang/String;)Lss/w$a;

    const-string/jumbo v1, "Content-Type"

    invoke-virtual {v2, v1}, Lss/w$a;->b(Ljava/lang/String;)Lss/w$a;

    :cond_7
    invoke-virtual {p0, v0}, Lss/ss/gK/g;->a(Lss/q;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "Authorization"

    invoke-virtual {v2, v1}, Lss/w$a;->b(Ljava/lang/String;)Lss/w$a;

    :cond_8
    invoke-virtual {v2, v0}, Lss/w$a;->a(Lss/q;)Lss/w$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/w$a;->a()Lss/w;

    move-result-object v1

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v2, v3, v1}, Lss/w$a;->a(Ljava/lang/String;Lss/x;)Lss/w$a;

    goto :goto_3

    :sswitch_4
    iget-object v0, p0, Lss/ss/gK/g;->m:LgK/q;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lss/ss/gK/g;->m:LgK/q;

    instance-of v0, v0, Lss/ss/gK/n;

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_4
    iget-boolean v2, p0, Lss/ss/gK/g;->o:Z

    if-eqz v2, :cond_b

    if-eqz v0, :cond_1

    :cond_b
    iget-object v1, p0, Lss/ss/gK/g;->i:Lss/w;

    goto/16 :goto_1

    :cond_c
    const/4 v0, 0x0

    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_3
        0x12d -> :sswitch_3
        0x12e -> :sswitch_3
        0x12f -> :sswitch_3
        0x133 -> :sswitch_2
        0x134 -> :sswitch_2
        0x191 -> :sswitch_1
        0x197 -> :sswitch_0
        0x198 -> :sswitch_4
    .end sparse-switch
.end method
