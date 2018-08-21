.class public Lss/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lss/t$a;
    }
.end annotation


# static fields
.field private static final A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lss/j;",
            ">;"
        }
    .end annotation
.end field

.field private static final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lss/u;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lss/m;

.field final b:Ljava/net/Proxy;

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lss/u;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lss/j;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lss/r;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lss/r;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/net/ProxySelector;

.field final h:Lss/l;

.field final i:Lss/c;

.field final j:Lss/ss/d;

.field final k:Ljavax/net/SocketFactory;

.field final l:Ljavax/net/ssl/SSLSocketFactory;

.field final m:Lss/ss/gq/f;

.field final n:Ljavax/net/ssl/HostnameVerifier;

.field final o:Lss/f;

.field final p:Lss/b;

.field final q:Lss/b;

.field final r:Lss/i;

.field final s:Lss/n;

.field final t:Z

.field final u:Z

.field final v:Z

.field final w:I

.field final x:I

.field final y:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v5, [Lss/u;

    sget-object v1, Lss/u;->d:Lss/u;

    aput-object v1, v0, v2

    sget-object v1, Lss/u;->c:Lss/u;

    aput-object v1, v0, v3

    sget-object v1, Lss/u;->b:Lss/u;

    aput-object v1, v0, v4

    invoke-static {v0}, Lss/ss/i;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lss/t;->z:Ljava/util/List;

    new-array v0, v5, [Lss/j;

    sget-object v1, Lss/j;->a:Lss/j;

    aput-object v1, v0, v2

    sget-object v1, Lss/j;->b:Lss/j;

    aput-object v1, v0, v3

    sget-object v1, Lss/j;->c:Lss/j;

    aput-object v1, v0, v4

    invoke-static {v0}, Lss/ss/i;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lss/t;->A:Ljava/util/List;

    new-instance v0, Lss/t$1;

    invoke-direct {v0}, Lss/t$1;-><init>()V

    sput-object v0, Lss/ss/c;->b:Lss/ss/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lss/t$a;

    invoke-direct {v0}, Lss/t$a;-><init>()V

    invoke-direct {p0, v0}, Lss/t;-><init>(Lss/t$a;)V

    return-void
.end method

.method private constructor <init>(Lss/t$a;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lss/t$a;->a:Lss/m;

    iput-object v0, p0, Lss/t;->a:Lss/m;

    iget-object v0, p1, Lss/t$a;->b:Ljava/net/Proxy;

    iput-object v0, p0, Lss/t;->b:Ljava/net/Proxy;

    iget-object v0, p1, Lss/t$a;->c:Ljava/util/List;

    iput-object v0, p0, Lss/t;->c:Ljava/util/List;

    iget-object v0, p1, Lss/t$a;->d:Ljava/util/List;

    iput-object v0, p0, Lss/t;->d:Ljava/util/List;

    iget-object v0, p1, Lss/t$a;->e:Ljava/util/List;

    invoke-static {v0}, Lss/ss/i;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lss/t;->e:Ljava/util/List;

    iget-object v0, p1, Lss/t$a;->f:Ljava/util/List;

    invoke-static {v0}, Lss/ss/i;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lss/t;->f:Ljava/util/List;

    iget-object v0, p1, Lss/t$a;->g:Ljava/net/ProxySelector;

    iput-object v0, p0, Lss/t;->g:Ljava/net/ProxySelector;

    iget-object v0, p1, Lss/t$a;->h:Lss/l;

    iput-object v0, p0, Lss/t;->h:Lss/l;

    iget-object v0, p1, Lss/t$a;->i:Lss/c;

    iput-object v0, p0, Lss/t;->i:Lss/c;

    iget-object v0, p1, Lss/t$a;->j:Lss/ss/d;

    iput-object v0, p0, Lss/t;->j:Lss/ss/d;

    iget-object v0, p1, Lss/t$a;->k:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lss/t;->k:Ljavax/net/SocketFactory;

    iget-object v0, p0, Lss/t;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss/j;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lss/j;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lss/t$a;->l:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_3

    if-nez v1, :cond_4

    :cond_3
    iget-object v0, p1, Lss/t$a;->l:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lss/t;->l:Ljavax/net/ssl/SSLSocketFactory;

    :goto_2
    iget-object v0, p0, Lss/t;->l:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lss/t$a;->m:Lss/ss/gq/f;

    if-nez v0, :cond_6

    invoke-static {}, Lss/ss/g;->a()Lss/ss/g;

    move-result-object v0

    iget-object v1, p0, Lss/t;->l:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1}, Lss/ss/g;->a(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to extract the trust manager on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lss/ss/g;->a()Lss/ss/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", sslSocketFactory is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lss/t;->l:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :try_start_0
    const-string/jumbo v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lss/t;->l:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    invoke-static {}, Lss/ss/g;->a()Lss/ss/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lss/ss/g;->a(Ljavax/net/ssl/X509TrustManager;)Lss/ss/gq/f;

    move-result-object v0

    iput-object v0, p0, Lss/t;->m:Lss/ss/gq/f;

    iget-object v0, p1, Lss/t$a;->o:Lss/f;

    invoke-virtual {v0}, Lss/f;->a()Lss/f$a;

    move-result-object v0

    iget-object v1, p0, Lss/t;->m:Lss/ss/gq/f;

    invoke-virtual {v0, v1}, Lss/f$a;->a(Lss/ss/gq/f;)Lss/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/f$a;->a()Lss/f;

    move-result-object v0

    iput-object v0, p0, Lss/t;->o:Lss/f;

    :goto_3
    iget-object v0, p1, Lss/t$a;->n:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lss/t;->n:Ljavax/net/ssl/HostnameVerifier;

    iget-object v0, p1, Lss/t$a;->p:Lss/b;

    iput-object v0, p0, Lss/t;->p:Lss/b;

    iget-object v0, p1, Lss/t$a;->q:Lss/b;

    iput-object v0, p0, Lss/t;->q:Lss/b;

    iget-object v0, p1, Lss/t$a;->r:Lss/i;

    iput-object v0, p0, Lss/t;->r:Lss/i;

    iget-object v0, p1, Lss/t$a;->s:Lss/n;

    iput-object v0, p0, Lss/t;->s:Lss/n;

    iget-boolean v0, p1, Lss/t$a;->t:Z

    iput-boolean v0, p0, Lss/t;->t:Z

    iget-boolean v0, p1, Lss/t$a;->u:Z

    iput-boolean v0, p0, Lss/t;->u:Z

    iget-boolean v0, p1, Lss/t$a;->v:Z

    iput-boolean v0, p0, Lss/t;->v:Z

    iget v0, p1, Lss/t$a;->w:I

    iput v0, p0, Lss/t;->w:I

    iget v0, p1, Lss/t$a;->x:I

    iput v0, p0, Lss/t;->x:I

    iget v0, p1, Lss/t$a;->y:I

    iput v0, p0, Lss/t;->y:I

    return-void

    :cond_6
    iget-object v0, p1, Lss/t$a;->m:Lss/ss/gq/f;

    iput-object v0, p0, Lss/t;->m:Lss/ss/gq/f;

    iget-object v0, p1, Lss/t$a;->o:Lss/f;

    iput-object v0, p0, Lss/t;->o:Lss/f;

    goto :goto_3
.end method

.method synthetic constructor <init>(Lss/t$a;Lss/t$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lss/t;-><init>(Lss/t$a;)V

    return-void
.end method

.method static synthetic x()Ljava/util/List;
    .locals 1

    sget-object v0, Lss/t;->z:Ljava/util/List;

    return-object v0
.end method

.method static synthetic y()Ljava/util/List;
    .locals 1

    sget-object v0, Lss/t;->A:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lss/t;->w:I

    return v0
.end method

.method public a(Lss/w;)Lss/e;
    .locals 1

    new-instance v0, Lss/v;

    invoke-direct {v0, p0, p1}, Lss/v;-><init>(Lss/t;Lss/w;)V

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lss/t;->x:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lss/t;->y:I

    return v0
.end method

.method public d()Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, Lss/t;->b:Ljava/net/Proxy;

    return-object v0
.end method

.method public e()Ljava/net/ProxySelector;
    .locals 1

    iget-object v0, p0, Lss/t;->g:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public f()Lss/l;
    .locals 1

    iget-object v0, p0, Lss/t;->h:Lss/l;

    return-object v0
.end method

.method g()Lss/ss/d;
    .locals 1

    iget-object v0, p0, Lss/t;->i:Lss/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lss/t;->i:Lss/c;

    iget-object v0, v0, Lss/c;->a:Lss/ss/d;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lss/t;->j:Lss/ss/d;

    goto :goto_0
.end method

.method public h()Lss/n;
    .locals 1

    iget-object v0, p0, Lss/t;->s:Lss/n;

    return-object v0
.end method

.method public i()Ljavax/net/SocketFactory;
    .locals 1

    iget-object v0, p0, Lss/t;->k:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public j()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Lss/t;->l:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public k()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Lss/t;->n:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public l()Lss/f;
    .locals 1

    iget-object v0, p0, Lss/t;->o:Lss/f;

    return-object v0
.end method

.method public m()Lss/b;
    .locals 1

    iget-object v0, p0, Lss/t;->q:Lss/b;

    return-object v0
.end method

.method public n()Lss/b;
    .locals 1

    iget-object v0, p0, Lss/t;->p:Lss/b;

    return-object v0
.end method

.method public o()Lss/i;
    .locals 1

    iget-object v0, p0, Lss/t;->r:Lss/i;

    return-object v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lss/t;->t:Z

    return v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lss/t;->u:Z

    return v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lss/t;->v:Z

    return v0
.end method

.method public s()Lss/m;
    .locals 1

    iget-object v0, p0, Lss/t;->a:Lss/m;

    return-object v0
.end method

.method public t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lss/u;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lss/t;->c:Ljava/util/List;

    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lss/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lss/t;->d:Ljava/util/List;

    return-object v0
.end method

.method public v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lss/r;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lss/t;->e:Ljava/util/List;

    return-object v0
.end method

.method public w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lss/r;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lss/t;->f:Ljava/util/List;

    return-object v0
.end method
