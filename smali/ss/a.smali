.class public final Lss/a;
.super Ljava/lang/Object;


# instance fields
.field final a:Lss/q;

.field final b:Lss/n;

.field final c:Ljavax/net/SocketFactory;

.field final d:Lss/b;

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lss/u;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lss/j;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/net/ProxySelector;

.field final h:Ljava/net/Proxy;

.field final i:Ljavax/net/ssl/SSLSocketFactory;

.field final j:Ljavax/net/ssl/HostnameVerifier;

.field final k:Lss/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILss/n;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lss/f;Lss/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lss/n;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lss/f;",
            "Lss/b;",
            "Ljava/net/Proxy;",
            "Ljava/util/List",
            "<",
            "Lss/u;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lss/j;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lss/q$a;

    invoke-direct {v1}, Lss/q$a;-><init>()V

    if-eqz p5, :cond_0

    const-string/jumbo v0, "https"

    :goto_0
    invoke-virtual {v1, v0}, Lss/q$a;->a(Ljava/lang/String;)Lss/q$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lss/q$a;->b(Ljava/lang/String;)Lss/q$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lss/q$a;->a(I)Lss/q$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/q$a;->c()Lss/q;

    move-result-object v0

    iput-object v0, p0, Lss/a;->a:Lss/q;

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "dns == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string/jumbo v0, "http"

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lss/a;->b:Lss/n;

    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "socketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p4, p0, Lss/a;->c:Ljavax/net/SocketFactory;

    if-nez p8, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "proxyAuthenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p8, p0, Lss/a;->d:Lss/b;

    if-nez p10, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "protocols == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {p10}, Lss/ss/i;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lss/a;->e:Ljava/util/List;

    if-nez p11, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "connectionSpecs == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {p11}, Lss/ss/i;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lss/a;->f:Ljava/util/List;

    if-nez p12, :cond_6

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "proxySelector == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iput-object p12, p0, Lss/a;->g:Ljava/net/ProxySelector;

    iput-object p9, p0, Lss/a;->h:Ljava/net/Proxy;

    iput-object p5, p0, Lss/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p6, p0, Lss/a;->j:Ljavax/net/ssl/HostnameVerifier;

    iput-object p7, p0, Lss/a;->k:Lss/f;

    return-void
.end method


# virtual methods
.method public a()Lss/q;
    .locals 1

    iget-object v0, p0, Lss/a;->a:Lss/q;

    return-object v0
.end method

.method public b()Lss/n;
    .locals 1

    iget-object v0, p0, Lss/a;->b:Lss/n;

    return-object v0
.end method

.method public c()Ljavax/net/SocketFactory;
    .locals 1

    iget-object v0, p0, Lss/a;->c:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public d()Lss/b;
    .locals 1

    iget-object v0, p0, Lss/a;->d:Lss/b;

    return-object v0
.end method

.method public e()Ljava/util/List;
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

    iget-object v0, p0, Lss/a;->e:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lss/a;

    if-eqz v1, :cond_0

    check-cast p1, Lss/a;

    iget-object v1, p0, Lss/a;->a:Lss/q;

    iget-object v2, p1, Lss/a;->a:Lss/q;

    invoke-virtual {v1, v2}, Lss/q;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lss/a;->b:Lss/n;

    iget-object v2, p1, Lss/a;->b:Lss/n;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lss/a;->d:Lss/b;

    iget-object v2, p1, Lss/a;->d:Lss/b;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lss/a;->e:Ljava/util/List;

    iget-object v2, p1, Lss/a;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lss/a;->f:Ljava/util/List;

    iget-object v2, p1, Lss/a;->f:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lss/a;->g:Ljava/net/ProxySelector;

    iget-object v2, p1, Lss/a;->g:Ljava/net/ProxySelector;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lss/a;->h:Ljava/net/Proxy;

    iget-object v2, p1, Lss/a;->h:Ljava/net/Proxy;

    invoke-static {v1, v2}, Lss/ss/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lss/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v2, p1, Lss/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v1, v2}, Lss/ss/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lss/a;->j:Ljavax/net/ssl/HostnameVerifier;

    iget-object v2, p1, Lss/a;->j:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v1, v2}, Lss/ss/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lss/a;->k:Lss/f;

    iget-object v2, p1, Lss/a;->k:Lss/f;

    invoke-static {v1, v2}, Lss/ss/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public f()Ljava/util/List;
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

    iget-object v0, p0, Lss/a;->f:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/net/ProxySelector;
    .locals 1

    iget-object v0, p0, Lss/a;->g:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public h()Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, Lss/a;->h:Ljava/net/Proxy;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lss/a;->a:Lss/q;

    invoke-virtual {v0}, Lss/q;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lss/a;->b:Lss/n;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lss/a;->d:Lss/b;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lss/a;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lss/a;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lss/a;->g:Ljava/net/ProxySelector;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lss/a;->h:Ljava/net/Proxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lss/a;->h:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lss/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lss/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lss/a;->j:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lss/a;->j:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lss/a;->k:Lss/f;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lss/a;->k:Lss/f;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public i()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Lss/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public j()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Lss/a;->j:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public k()Lss/f;
    .locals 1

    iget-object v0, p0, Lss/a;->k:Lss/f;

    return-object v0
.end method
