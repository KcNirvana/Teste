.class public final Lss/ss/gK/e;
.super Ljava/lang/Object;

# interfaces
.implements Lss/ss/gK/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lss/ss/gK/e$a;
    }
.end annotation


# static fields
.field private static final a:LgK/f;

.field private static final b:LgK/f;

.field private static final c:LgK/f;

.field private static final d:LgK/f;

.field private static final e:LgK/f;

.field private static final f:LgK/f;

.field private static final g:LgK/f;

.field private static final h:LgK/f;

.field private static final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LgK/f;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LgK/f;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LgK/f;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LgK/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m:Lss/ss/gK/r;

.field private final n:Lss/ss/ss/d;

.field private o:Lss/ss/gK/g;

.field private p:Lss/ss/ss/e;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "connection"

    invoke-static {v0}, LgK/f;->a(Ljava/lang/String;)LgK/f;

    move-result-object v0

    sput-object v0, Lss/ss/gK/e;->a:LgK/f;

    const-string/jumbo v0, "host"

    invoke-static {v0}, LgK/f;->a(Ljava/lang/String;)LgK/f;

    move-result-object v0

    sput-object v0, Lss/ss/gK/e;->b:LgK/f;

    const-string/jumbo v0, "keep-alive"

    invoke-static {v0}, LgK/f;->a(Ljava/lang/String;)LgK/f;

    move-result-object v0

    sput-object v0, Lss/ss/gK/e;->c:LgK/f;

    const-string/jumbo v0, "proxy-connection"

    invoke-static {v0}, LgK/f;->a(Ljava/lang/String;)LgK/f;

    move-result-object v0

    sput-object v0, Lss/ss/gK/e;->d:LgK/f;

    const-string/jumbo v0, "transfer-encoding"

    invoke-static {v0}, LgK/f;->a(Ljava/lang/String;)LgK/f;

    move-result-object v0

    sput-object v0, Lss/ss/gK/e;->e:LgK/f;

    const-string/jumbo v0, "te"

    invoke-static {v0}, LgK/f;->a(Ljava/lang/String;)LgK/f;

    move-result-object v0

    sput-object v0, Lss/ss/gK/e;->f:LgK/f;

    const-string/jumbo v0, "encoding"

    invoke-static {v0}, LgK/f;->a(Ljava/lang/String;)LgK/f;

    move-result-object v0

    sput-object v0, Lss/ss/gK/e;->g:LgK/f;

    const-string/jumbo v0, "upgrade"

    invoke-static {v0}, LgK/f;->a(Ljava/lang/String;)LgK/f;

    move-result-object v0

    sput-object v0, Lss/ss/gK/e;->h:LgK/f;

    const/16 v0, 0xb

    new-array v0, v0, [LgK/f;

    sget-object v1, Lss/ss/gK/e;->a:LgK/f;

    aput-object v1, v0, v3

    sget-object v1, Lss/ss/gK/e;->b:LgK/f;

    aput-object v1, v0, v4

    sget-object v1, Lss/ss/gK/e;->c:LgK/f;

    aput-object v1, v0, v5

    sget-object v1, Lss/ss/gK/e;->d:LgK/f;

    aput-object v1, v0, v6

    sget-object v1, Lss/ss/gK/e;->e:LgK/f;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lss/ss/ss/f;->b:LgK/f;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lss/ss/ss/f;->c:LgK/f;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lss/ss/ss/f;->d:LgK/f;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lss/ss/ss/f;->e:LgK/f;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lss/ss/ss/f;->f:LgK/f;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lss/ss/ss/f;->g:LgK/f;

    aput-object v2, v0, v1

    invoke-static {v0}, Lss/ss/i;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lss/ss/gK/e;->i:Ljava/util/List;

    const/4 v0, 0x5

    new-array v0, v0, [LgK/f;

    sget-object v1, Lss/ss/gK/e;->a:LgK/f;

    aput-object v1, v0, v3

    sget-object v1, Lss/ss/gK/e;->b:LgK/f;

    aput-object v1, v0, v4

    sget-object v1, Lss/ss/gK/e;->c:LgK/f;

    aput-object v1, v0, v5

    sget-object v1, Lss/ss/gK/e;->d:LgK/f;

    aput-object v1, v0, v6

    sget-object v1, Lss/ss/gK/e;->e:LgK/f;

    aput-object v1, v0, v7

    invoke-static {v0}, Lss/ss/i;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lss/ss/gK/e;->j:Ljava/util/List;

    const/16 v0, 0xe

    new-array v0, v0, [LgK/f;

    sget-object v1, Lss/ss/gK/e;->a:LgK/f;

    aput-object v1, v0, v3

    sget-object v1, Lss/ss/gK/e;->b:LgK/f;

    aput-object v1, v0, v4

    sget-object v1, Lss/ss/gK/e;->c:LgK/f;

    aput-object v1, v0, v5

    sget-object v1, Lss/ss/gK/e;->d:LgK/f;

    aput-object v1, v0, v6

    sget-object v1, Lss/ss/gK/e;->f:LgK/f;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lss/ss/gK/e;->e:LgK/f;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lss/ss/gK/e;->g:LgK/f;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lss/ss/gK/e;->h:LgK/f;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lss/ss/ss/f;->b:LgK/f;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lss/ss/ss/f;->c:LgK/f;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lss/ss/ss/f;->d:LgK/f;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lss/ss/ss/f;->e:LgK/f;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lss/ss/ss/f;->f:LgK/f;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lss/ss/ss/f;->g:LgK/f;

    aput-object v2, v0, v1

    invoke-static {v0}, Lss/ss/i;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lss/ss/gK/e;->k:Ljava/util/List;

    const/16 v0, 0x8

    new-array v0, v0, [LgK/f;

    sget-object v1, Lss/ss/gK/e;->a:LgK/f;

    aput-object v1, v0, v3

    sget-object v1, Lss/ss/gK/e;->b:LgK/f;

    aput-object v1, v0, v4

    sget-object v1, Lss/ss/gK/e;->c:LgK/f;

    aput-object v1, v0, v5

    sget-object v1, Lss/ss/gK/e;->d:LgK/f;

    aput-object v1, v0, v6

    sget-object v1, Lss/ss/gK/e;->f:LgK/f;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lss/ss/gK/e;->e:LgK/f;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lss/ss/gK/e;->g:LgK/f;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lss/ss/gK/e;->h:LgK/f;

    aput-object v2, v0, v1

    invoke-static {v0}, Lss/ss/i;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lss/ss/gK/e;->l:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lss/ss/gK/r;Lss/ss/ss/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lss/ss/gK/e;->m:Lss/ss/gK/r;

    iput-object p2, p0, Lss/ss/gK/e;->n:Lss/ss/ss/d;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lss/ss/gK/e;)Lss/ss/gK/r;
    .locals 1

    iget-object v0, p0, Lss/ss/gK/e;->m:Lss/ss/gK/r;

    return-object v0
.end method

.method public static a(Ljava/util/List;)Lss/y$a;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/f;",
            ">;)",
            "Lss/y$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string/jumbo v1, "HTTP/1.1"

    new-instance v6, Lss/p$a;

    invoke-direct {v6}, Lss/p$a;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    move v5, v3

    :goto_0
    if-ge v5, v7, :cond_5

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss/ss/ss/f;

    iget-object v8, v0, Lss/ss/ss/f;->h:LgK/f;

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss/ss/ss/f;

    iget-object v0, v0, Lss/ss/ss/f;->i:LgK/f;

    invoke-virtual {v0}, LgK/f;->a()Ljava/lang/String;

    move-result-object v9

    move-object v0, v1

    move v1, v3

    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    invoke-virtual {v9, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v10, -0x1

    if-ne v4, v10, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    :cond_0
    invoke-virtual {v9, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v10, Lss/ss/ss/f;->a:LgK/f;

    invoke-virtual {v8, v10}, LgK/f;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v11, v2

    move-object v2, v1

    move v1, v11

    goto :goto_1

    :cond_1
    sget-object v10, Lss/ss/ss/f;->g:LgK/f;

    invoke-virtual {v8, v10}, LgK/f;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    :cond_2
    sget-object v10, Lss/ss/gK/e;->j:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v8}, LgK/f;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10, v1}, Lss/p$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/p$a;

    :cond_3
    move-object v1, v2

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v1, v0

    goto :goto_0

    :cond_5
    if-nez v2, :cond_6

    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "Expected \':status\' header not present"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lss/ss/gK/q;->a(Ljava/lang/String;)Lss/ss/gK/q;

    move-result-object v0

    new-instance v1, Lss/y$a;

    invoke-direct {v1}, Lss/y$a;-><init>()V

    sget-object v2, Lss/u;->c:Lss/u;

    invoke-virtual {v1, v2}, Lss/y$a;->a(Lss/u;)Lss/y$a;

    move-result-object v1

    iget v2, v0, Lss/ss/gK/q;->b:I

    invoke-virtual {v1, v2}, Lss/y$a;->a(I)Lss/y$a;

    move-result-object v1

    iget-object v0, v0, Lss/ss/gK/q;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lss/y$a;->a(Ljava/lang/String;)Lss/y$a;

    move-result-object v0

    invoke-virtual {v6}, Lss/p$a;->a()Lss/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lss/y$a;->a(Lss/p;)Lss/y$a;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lss/w;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lss/w;",
            ")",
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/f;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lss/w;->c()Lss/p;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lss/p;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lss/ss/ss/f;

    sget-object v1, Lss/ss/ss/f;->b:LgK/f;

    invoke-virtual {p0}, Lss/w;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lss/ss/ss/f;-><init>(LgK/f;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lss/ss/ss/f;

    sget-object v1, Lss/ss/ss/f;->c:LgK/f;

    invoke-virtual {p0}, Lss/w;->a()Lss/q;

    move-result-object v3

    invoke-static {v3}, Lss/ss/gK/m;->a(Lss/q;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lss/ss/ss/f;-><init>(LgK/f;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lss/ss/ss/f;

    sget-object v1, Lss/ss/ss/f;->g:LgK/f;

    const-string/jumbo v3, "HTTP/1.1"

    invoke-direct {v0, v1, v3}, Lss/ss/ss/f;-><init>(LgK/f;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lss/ss/ss/f;

    sget-object v1, Lss/ss/ss/f;->f:LgK/f;

    invoke-virtual {p0}, Lss/w;->a()Lss/q;

    move-result-object v3

    invoke-static {v3, v2}, Lss/ss/i;->a(Lss/q;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lss/ss/ss/f;-><init>(LgK/f;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lss/ss/ss/f;

    sget-object v1, Lss/ss/ss/f;->d:LgK/f;

    invoke-virtual {p0}, Lss/w;->a()Lss/q;

    move-result-object v3

    invoke-virtual {v3}, Lss/q;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lss/ss/ss/f;-><init>(LgK/f;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v4}, Lss/p;->a()I

    move-result v7

    move v3, v2

    :goto_0
    if-ge v3, v7, :cond_4

    invoke-virtual {v4, v3}, Lss/p;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LgK/f;->a(Ljava/lang/String;)LgK/f;

    move-result-object v8

    sget-object v0, Lss/ss/gK/e;->i:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v3}, Lss/p;->b(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lss/ss/ss/f;

    invoke-direct {v0, v8, v9}, Lss/ss/ss/f;-><init>(LgK/f;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss/ss/ss/f;

    iget-object v0, v0, Lss/ss/ss/f;->h:LgK/f;

    invoke-virtual {v0, v8}, LgK/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss/ss/ss/f;

    iget-object v0, v0, Lss/ss/ss/f;->i:LgK/f;

    invoke-virtual {v0}, LgK/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lss/ss/gK/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v9, Lss/ss/ss/f;

    invoke-direct {v9, v8, v0}, Lss/ss/ss/f;-><init>(LgK/f;Ljava/lang/String;)V

    invoke-interface {v5, v1, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    return-object v5
.end method

.method public static b(Ljava/util/List;)Lss/y$a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/f;",
            ">;)",
            "Lss/y$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v3, Lss/p$a;

    invoke-direct {v3}, Lss/p$a;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss/ss/ss/f;

    iget-object v5, v0, Lss/ss/ss/f;->h:LgK/f;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss/ss/ss/f;

    iget-object v0, v0, Lss/ss/ss/f;->i:LgK/f;

    invoke-virtual {v0}, LgK/f;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lss/ss/ss/f;->a:LgK/f;

    invoke-virtual {v5, v6}, LgK/f;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v6, Lss/ss/gK/e;->l:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, LgK/f;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Lss/p$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/p$a;

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "Expected \':status\' header not present"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HTTP/1.1 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lss/ss/gK/q;->a(Ljava/lang/String;)Lss/ss/gK/q;

    move-result-object v0

    new-instance v1, Lss/y$a;

    invoke-direct {v1}, Lss/y$a;-><init>()V

    sget-object v2, Lss/u;->d:Lss/u;

    invoke-virtual {v1, v2}, Lss/y$a;->a(Lss/u;)Lss/y$a;

    move-result-object v1

    iget v2, v0, Lss/ss/gK/q;->b:I

    invoke-virtual {v1, v2}, Lss/y$a;->a(I)Lss/y$a;

    move-result-object v1

    iget-object v0, v0, Lss/ss/gK/q;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lss/y$a;->a(Ljava/lang/String;)Lss/y$a;

    move-result-object v0

    invoke-virtual {v3}, Lss/p$a;->a()Lss/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lss/y$a;->a(Lss/p;)Lss/y$a;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lss/w;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lss/w;",
            ")",
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/f;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lss/w;->c()Lss/p;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lss/p;->a()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Lss/ss/ss/f;

    sget-object v4, Lss/ss/ss/f;->b:LgK/f;

    invoke-virtual {p0}, Lss/w;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lss/ss/ss/f;-><init>(LgK/f;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lss/ss/ss/f;

    sget-object v4, Lss/ss/ss/f;->c:LgK/f;

    invoke-virtual {p0}, Lss/w;->a()Lss/q;

    move-result-object v5

    invoke-static {v5}, Lss/ss/gK/m;->a(Lss/q;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lss/ss/ss/f;-><init>(LgK/f;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lss/ss/ss/f;

    sget-object v4, Lss/ss/ss/f;->e:LgK/f;

    invoke-virtual {p0}, Lss/w;->a()Lss/q;

    move-result-object v5

    invoke-static {v5, v0}, Lss/ss/i;->a(Lss/q;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lss/ss/ss/f;-><init>(LgK/f;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lss/ss/ss/f;

    sget-object v4, Lss/ss/ss/f;->d:LgK/f;

    invoke-virtual {p0}, Lss/w;->a()Lss/q;

    move-result-object v5

    invoke-virtual {v5}, Lss/q;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lss/ss/ss/f;-><init>(LgK/f;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lss/p;->a()I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_1

    invoke-virtual {v1, v0}, Lss/p;->a(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LgK/f;->a(Ljava/lang/String;)LgK/f;

    move-result-object v4

    sget-object v5, Lss/ss/gK/e;->k:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Lss/ss/ss/f;

    invoke-virtual {v1, v0}, Lss/p;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lss/ss/ss/f;-><init>(LgK/f;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public a(Lss/w;J)LgK/q;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/gK/e;->p:Lss/ss/ss/e;

    invoke-virtual {v0}, Lss/ss/ss/e;->h()LgK/q;

    move-result-object v0

    return-object v0
.end method

.method public a()Lss/y$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/gK/e;->n:Lss/ss/ss/d;

    invoke-virtual {v0}, Lss/ss/ss/d;->a()Lss/u;

    move-result-object v0

    sget-object v1, Lss/u;->d:Lss/u;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lss/ss/gK/e;->p:Lss/ss/ss/e;

    invoke-virtual {v0}, Lss/ss/ss/e;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lss/ss/gK/e;->b(Ljava/util/List;)Lss/y$a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lss/ss/gK/e;->p:Lss/ss/ss/e;

    invoke-virtual {v0}, Lss/ss/ss/e;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lss/ss/gK/e;->a(Ljava/util/List;)Lss/y$a;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lss/y;)Lss/z;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lss/ss/gK/e$a;

    iget-object v1, p0, Lss/ss/gK/e;->p:Lss/ss/ss/e;

    invoke-virtual {v1}, Lss/ss/ss/e;->g()LgK/r;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lss/ss/gK/e$a;-><init>(Lss/ss/gK/e;LgK/r;)V

    new-instance v1, Lss/ss/gK/k;

    invoke-virtual {p1}, Lss/y;->e()Lss/p;

    move-result-object v2

    invoke-static {v0}, LgK/l;->a(LgK/r;)LgK/e;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lss/ss/gK/k;-><init>(Lss/p;LgK/e;)V

    return-object v1
.end method

.method public a(Lss/ss/gK/g;)V
    .locals 0

    iput-object p1, p0, Lss/ss/gK/e;->o:Lss/ss/gK/g;

    return-void
.end method

.method public a(Lss/ss/gK/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/gK/e;->p:Lss/ss/ss/e;

    invoke-virtual {v0}, Lss/ss/ss/e;->h()LgK/q;

    move-result-object v0

    invoke-virtual {p1, v0}, Lss/ss/gK/n;->a(LgK/q;)V

    return-void
.end method

.method public a(Lss/w;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/gK/e;->p:Lss/ss/ss/e;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lss/ss/gK/e;->o:Lss/ss/gK/g;

    invoke-virtual {v0}, Lss/ss/gK/g;->b()V

    iget-object v0, p0, Lss/ss/gK/e;->o:Lss/ss/gK/g;

    invoke-virtual {v0, p1}, Lss/ss/gK/g;->a(Lss/w;)Z

    move-result v1

    iget-object v0, p0, Lss/ss/gK/e;->n:Lss/ss/ss/d;

    invoke-virtual {v0}, Lss/ss/ss/d;->a()Lss/u;

    move-result-object v0

    sget-object v2, Lss/u;->d:Lss/u;

    if-ne v0, v2, :cond_1

    invoke-static {p1}, Lss/ss/gK/e;->c(Lss/w;)Ljava/util/List;

    move-result-object v0

    :goto_1
    const/4 v2, 0x1

    iget-object v3, p0, Lss/ss/gK/e;->n:Lss/ss/ss/d;

    invoke-virtual {v3, v0, v1, v2}, Lss/ss/ss/d;->a(Ljava/util/List;ZZ)Lss/ss/ss/e;

    move-result-object v0

    iput-object v0, p0, Lss/ss/gK/e;->p:Lss/ss/ss/e;

    iget-object v0, p0, Lss/ss/gK/e;->p:Lss/ss/ss/e;

    invoke-virtual {v0}, Lss/ss/ss/e;->e()LgK/s;

    move-result-object v0

    iget-object v1, p0, Lss/ss/gK/e;->o:Lss/ss/gK/g;

    iget-object v1, v1, Lss/ss/gK/g;->a:Lss/t;

    invoke-virtual {v1}, Lss/t;->b()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, LgK/s;->a(JLjava/util/concurrent/TimeUnit;)LgK/s;

    iget-object v0, p0, Lss/ss/gK/e;->p:Lss/ss/ss/e;

    invoke-virtual {v0}, Lss/ss/ss/e;->f()LgK/s;

    move-result-object v0

    iget-object v1, p0, Lss/ss/gK/e;->o:Lss/ss/gK/g;

    iget-object v1, v1, Lss/ss/gK/g;->a:Lss/t;

    invoke-virtual {v1}, Lss/t;->c()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, LgK/s;->a(JLjava/util/concurrent/TimeUnit;)LgK/s;

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lss/ss/gK/e;->b(Lss/w;)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/gK/e;->p:Lss/ss/ss/e;

    invoke-virtual {v0}, Lss/ss/ss/e;->h()LgK/q;

    move-result-object v0

    invoke-interface {v0}, LgK/q;->close()V

    return-void
.end method
