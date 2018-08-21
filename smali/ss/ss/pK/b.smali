.class public final Lss/ss/pK/b;
.super Lss/ss/ss/d$b;

# interfaces
.implements Lss/h;


# instance fields
.field public b:Ljava/net/Socket;

.field public volatile c:Lss/ss/ss/d;

.field public d:I

.field public e:LgK/e;

.field public f:LgK/d;

.field public g:I

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/Reference",
            "<",
            "Lss/ss/gK/r;",
            ">;>;"
        }
    .end annotation
.end field

.field public i:Z

.field public j:J

.field private final k:Lss/aa;

.field private l:Ljava/net/Socket;

.field private m:Lss/o;

.field private n:Lss/u;


# direct methods
.method public constructor <init>(Lss/aa;)V
    .locals 2

    invoke-direct {p0}, Lss/ss/ss/d$b;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lss/ss/pK/b;->h:Ljava/util/List;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lss/ss/pK/b;->j:J

    iput-object p1, p0, Lss/ss/pK/b;->k:Lss/aa;

    return-void
.end method

.method private a(II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lss/ss/pK/b;->d()Lss/w;

    move-result-object v0

    invoke-virtual {v0}, Lss/w;->a()Lss/q;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CONNECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lss/ss/i;->a(Lss/q;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " HTTP/1.1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    new-instance v3, Lss/ss/gK/d;

    const/4 v1, 0x0

    iget-object v4, p0, Lss/ss/pK/b;->e:LgK/e;

    iget-object v5, p0, Lss/ss/pK/b;->f:LgK/d;

    invoke-direct {v3, v1, v4, v5}, Lss/ss/gK/d;-><init>(Lss/ss/gK/r;LgK/e;LgK/d;)V

    iget-object v1, p0, Lss/ss/pK/b;->e:LgK/e;

    invoke-interface {v1}, LgK/e;->a()LgK/s;

    move-result-object v1

    int-to-long v4, p1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v6}, LgK/s;->a(JLjava/util/concurrent/TimeUnit;)LgK/s;

    iget-object v1, p0, Lss/ss/pK/b;->f:LgK/d;

    invoke-interface {v1}, LgK/d;->a()LgK/s;

    move-result-object v1

    int-to-long v4, p2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v6}, LgK/s;->a(JLjava/util/concurrent/TimeUnit;)LgK/s;

    invoke-virtual {v0}, Lss/w;->c()Lss/p;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lss/ss/gK/d;->a(Lss/p;Ljava/lang/String;)V

    invoke-virtual {v3}, Lss/ss/gK/d;->b()V

    invoke-virtual {v3}, Lss/ss/gK/d;->c()Lss/y$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lss/y$a;->a(Lss/w;)Lss/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/y$a;->a()Lss/y;

    move-result-object v4

    invoke-static {v4}, Lss/ss/gK/j;->a(Lss/y;)J

    move-result-wide v0

    const-wide/16 v6, -0x1

    cmp-long v5, v0, v6

    if-nez v5, :cond_1

    const-wide/16 v0, 0x0

    :cond_1
    invoke-virtual {v3, v0, v1}, Lss/ss/gK/d;->b(J)LgK/r;

    move-result-object v0

    const v1, 0x7fffffff

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v3}, Lss/ss/i;->b(LgK/r;ILjava/util/concurrent/TimeUnit;)Z

    invoke-interface {v0}, LgK/r;->close()V

    invoke-virtual {v4}, Lss/y;->b()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected response code for CONNECT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lss/y;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-object v0, p0, Lss/ss/pK/b;->e:LgK/e;

    invoke-interface {v0}, LgK/e;->c()LgK/c;

    move-result-object v0

    invoke-virtual {v0}, LgK/c;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lss/ss/pK/b;->f:LgK/d;

    invoke-interface {v0}, LgK/d;->c()LgK/c;

    move-result-object v0

    invoke-virtual {v0}, LgK/c;->f()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "TLS tunnel buffered too many bytes!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1
    iget-object v0, p0, Lss/ss/pK/b;->k:Lss/aa;

    invoke-virtual {v0}, Lss/aa;->a()Lss/a;

    move-result-object v0

    invoke-virtual {v0}, Lss/a;->d()Lss/b;

    move-result-object v0

    iget-object v1, p0, Lss/ss/pK/b;->k:Lss/aa;

    invoke-interface {v0, v1, v4}, Lss/b;->a(Lss/aa;Lss/y;)Lss/w;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Failed to authenticate with proxy"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x197 -> :sswitch_1
    .end sparse-switch
.end method

.method private a(IIILss/ss/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v0, p0, Lss/ss/pK/b;->l:Ljava/net/Socket;

    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    :try_start_0
    invoke-static {}, Lss/ss/g;->a()Lss/ss/g;

    move-result-object v0

    iget-object v1, p0, Lss/ss/pK/b;->l:Ljava/net/Socket;

    iget-object v2, p0, Lss/ss/pK/b;->k:Lss/aa;

    invoke-virtual {v2}, Lss/aa;->c()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lss/ss/g;->a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lss/ss/pK/b;->l:Ljava/net/Socket;

    invoke-static {v0}, LgK/l;->b(Ljava/net/Socket;)LgK/r;

    move-result-object v0

    invoke-static {v0}, LgK/l;->a(LgK/r;)LgK/e;

    move-result-object v0

    iput-object v0, p0, Lss/ss/pK/b;->e:LgK/e;

    iget-object v0, p0, Lss/ss/pK/b;->l:Ljava/net/Socket;

    invoke-static {v0}, LgK/l;->a(Ljava/net/Socket;)LgK/q;

    move-result-object v0

    invoke-static {v0}, LgK/l;->a(LgK/q;)LgK/d;

    move-result-object v0

    iput-object v0, p0, Lss/ss/pK/b;->f:LgK/d;

    iget-object v0, p0, Lss/ss/pK/b;->k:Lss/aa;

    invoke-virtual {v0}, Lss/aa;->a()Lss/a;

    move-result-object v0

    invoke-virtual {v0}, Lss/a;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2, p3, p4}, Lss/ss/pK/b;->a(IILss/ss/a;)V

    :goto_0
    iget-object v0, p0, Lss/ss/pK/b;->n:Lss/u;

    sget-object v1, Lss/u;->c:Lss/u;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lss/ss/pK/b;->n:Lss/u;

    sget-object v1, Lss/u;->d:Lss/u;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lss/ss/pK/b;->b:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v0, Lss/ss/ss/d$a;

    invoke-direct {v0, v3}, Lss/ss/ss/d$a;-><init>(Z)V

    iget-object v1, p0, Lss/ss/pK/b;->b:Ljava/net/Socket;

    iget-object v2, p0, Lss/ss/pK/b;->k:Lss/aa;

    invoke-virtual {v2}, Lss/aa;->a()Lss/a;

    move-result-object v2

    invoke-virtual {v2}, Lss/a;->a()Lss/q;

    move-result-object v2

    invoke-virtual {v2}, Lss/q;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lss/ss/pK/b;->e:LgK/e;

    iget-object v4, p0, Lss/ss/pK/b;->f:LgK/d;

    invoke-virtual {v0, v1, v2, v3, v4}, Lss/ss/ss/d$a;->a(Ljava/net/Socket;Ljava/lang/String;LgK/e;LgK/d;)Lss/ss/ss/d$a;

    move-result-object v0

    iget-object v1, p0, Lss/ss/pK/b;->n:Lss/u;

    invoke-virtual {v0, v1}, Lss/ss/ss/d$a;->a(Lss/u;)Lss/ss/ss/d$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lss/ss/ss/d$a;->a(Lss/ss/ss/d$b;)Lss/ss/ss/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/ss/ss/d$a;->a()Lss/ss/ss/d;

    move-result-object v0

    invoke-virtual {v0}, Lss/ss/ss/d;->d()V

    invoke-virtual {v0}, Lss/ss/ss/d;->b()I

    move-result v1

    iput v1, p0, Lss/ss/pK/b;->g:I

    iput-object v0, p0, Lss/ss/pK/b;->c:Lss/ss/ss/d;

    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/net/ConnectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to connect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lss/ss/pK/b;->k:Lss/aa;

    invoke-virtual {v2}, Lss/aa;->c()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lss/u;->b:Lss/u;

    iput-object v0, p0, Lss/ss/pK/b;->n:Lss/u;

    iget-object v0, p0, Lss/ss/pK/b;->l:Ljava/net/Socket;

    iput-object v0, p0, Lss/ss/pK/b;->b:Ljava/net/Socket;

    goto :goto_0

    :cond_2
    iput v3, p0, Lss/ss/pK/b;->g:I

    goto :goto_1
.end method

.method private a(IILss/ss/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lss/ss/pK/b;->k:Lss/aa;

    invoke-virtual {v0}, Lss/aa;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lss/ss/pK/b;->a(II)V

    :cond_0
    iget-object v0, p0, Lss/ss/pK/b;->k:Lss/aa;

    invoke-virtual {v0}, Lss/aa;->a()Lss/a;

    move-result-object v2

    invoke-virtual {v2}, Lss/a;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    :try_start_0
    iget-object v3, p0, Lss/ss/pK/b;->l:Ljava/net/Socket;

    invoke-virtual {v2}, Lss/a;->a()Lss/q;

    move-result-object v4

    invoke-virtual {v4}, Lss/q;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lss/a;->a()Lss/q;

    move-result-object v5

    invoke-virtual {v5}, Lss/q;->g()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v0, v3, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p3, v0}, Lss/ss/a;->a(Ljavax/net/ssl/SSLSocket;)Lss/j;

    move-result-object v3

    invoke-virtual {v3}, Lss/j;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lss/ss/g;->a()Lss/ss/g;

    move-result-object v4

    invoke-virtual {v2}, Lss/a;->a()Lss/q;

    move-result-object v5

    invoke-virtual {v5}, Lss/q;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lss/a;->e()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v0, v5, v6}, Lss/ss/g;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    invoke-static {v4}, Lss/o;->a(Ljavax/net/ssl/SSLSession;)Lss/o;

    move-result-object v4

    invoke-virtual {v2}, Lss/a;->j()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    invoke-virtual {v2}, Lss/a;->a()Lss/q;

    move-result-object v6

    invoke-virtual {v6}, Lss/q;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lss/o;->b()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    new-instance v3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Hostname "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lss/a;->a()Lss/q;

    move-result-object v2

    invoke-virtual {v2}, Lss/q;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " not verified:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\n    certificate: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lss/f;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\n    DN: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\n    subjectAltNames: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lss/ss/gq/d;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_0
    :try_start_2
    invoke-static {v0}, Lss/ss/i;->a(Ljava/lang/AssertionError;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_2

    invoke-static {}, Lss/ss/g;->a()Lss/ss/g;

    move-result-object v2

    invoke-virtual {v2, v1}, Lss/ss/g;->a(Ljavax/net/ssl/SSLSocket;)V

    :cond_2
    invoke-static {v1}, Lss/ss/i;->a(Ljava/net/Socket;)V

    throw v0

    :cond_3
    :try_start_3
    invoke-virtual {v2}, Lss/a;->k()Lss/f;

    move-result-object v5

    invoke-virtual {v2}, Lss/a;->a()Lss/q;

    move-result-object v2

    invoke-virtual {v2}, Lss/q;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lss/o;->b()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lss/f;->a(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v3}, Lss/j;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lss/ss/g;->a()Lss/ss/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lss/ss/g;->b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    iput-object v0, p0, Lss/ss/pK/b;->b:Ljava/net/Socket;

    iget-object v2, p0, Lss/ss/pK/b;->b:Ljava/net/Socket;

    invoke-static {v2}, LgK/l;->b(Ljava/net/Socket;)LgK/r;

    move-result-object v2

    invoke-static {v2}, LgK/l;->a(LgK/r;)LgK/e;

    move-result-object v2

    iput-object v2, p0, Lss/ss/pK/b;->e:LgK/e;

    iget-object v2, p0, Lss/ss/pK/b;->b:Ljava/net/Socket;

    invoke-static {v2}, LgK/l;->a(Ljava/net/Socket;)LgK/q;

    move-result-object v2

    invoke-static {v2}, LgK/l;->a(LgK/q;)LgK/d;

    move-result-object v2

    iput-object v2, p0, Lss/ss/pK/b;->f:LgK/d;

    iput-object v4, p0, Lss/ss/pK/b;->m:Lss/o;

    if-eqz v1, :cond_6

    invoke-static {v1}, Lss/u;->a(Ljava/lang/String;)Lss/u;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lss/ss/pK/b;->n:Lss/u;
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_5

    invoke-static {}, Lss/ss/g;->a()Lss/ss/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lss/ss/g;->a(Ljavax/net/ssl/SSLSocket;)V

    :cond_5
    return-void

    :cond_6
    :try_start_4
    sget-object v1, Lss/u;->b:Lss/u;
    :try_end_4
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :cond_7
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private d()Lss/w;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lss/w$a;

    invoke-direct {v0}, Lss/w$a;-><init>()V

    iget-object v1, p0, Lss/ss/pK/b;->k:Lss/aa;

    invoke-virtual {v1}, Lss/aa;->a()Lss/a;

    move-result-object v1

    invoke-virtual {v1}, Lss/a;->a()Lss/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lss/w$a;->a(Lss/q;)Lss/w$a;

    move-result-object v0

    const-string/jumbo v1, "Host"

    iget-object v2, p0, Lss/ss/pK/b;->k:Lss/aa;

    invoke-virtual {v2}, Lss/aa;->a()Lss/a;

    move-result-object v2

    invoke-virtual {v2}, Lss/a;->a()Lss/q;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lss/ss/i;->a(Lss/q;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lss/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/w$a;

    move-result-object v0

    const-string/jumbo v1, "Proxy-Connection"

    const-string/jumbo v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lss/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/w$a;

    move-result-object v0

    const-string/jumbo v1, "User-Agent"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lss/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/w$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/w$a;->a()Lss/w;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lss/aa;
    .locals 1

    iget-object v0, p0, Lss/ss/pK/b;->k:Lss/aa;

    return-object v0
.end method

.method public a(IIILjava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List",
            "<",
            "Lss/j;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lss/ss/gK/o;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lss/ss/pK/b;->n:Lss/u;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v3, Lss/ss/a;

    invoke-direct {v3, p4}, Lss/ss/a;-><init>(Ljava/util/List;)V

    iget-object v0, p0, Lss/ss/pK/b;->k:Lss/aa;

    invoke-virtual {v0}, Lss/aa;->b()Ljava/net/Proxy;

    move-result-object v4

    iget-object v0, p0, Lss/ss/pK/b;->k:Lss/aa;

    invoke-virtual {v0}, Lss/aa;->a()Lss/a;

    move-result-object v5

    iget-object v0, p0, Lss/ss/pK/b;->k:Lss/aa;

    invoke-virtual {v0}, Lss/aa;->a()Lss/a;

    move-result-object v0

    invoke-virtual {v0}, Lss/a;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_7

    sget-object v0, Lss/j;->c:Lss/j;

    invoke-interface {p4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lss/ss/gK/o;

    new-instance v1, Ljava/net/UnknownServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CLEARTEXT communication not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lss/ss/gK/o;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_1
    :try_start_0
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2, v4}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    :goto_0
    iput-object v2, p0, Lss/ss/pK/b;->l:Ljava/net/Socket;

    invoke-direct {p0, p1, p2, p3, v3}, Lss/ss/pK/b;->a(IIILss/ss/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v2, p0, Lss/ss/pK/b;->n:Lss/u;

    if-nez v2, :cond_6

    :try_start_1
    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v6, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v6, :cond_3

    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v6, :cond_1

    :cond_3
    invoke-virtual {v5}, Lss/a;->c()Ljavax/net/SocketFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v6, p0, Lss/ss/pK/b;->b:Ljava/net/Socket;

    invoke-static {v6}, Lss/ss/i;->a(Ljava/net/Socket;)V

    iget-object v6, p0, Lss/ss/pK/b;->l:Ljava/net/Socket;

    invoke-static {v6}, Lss/ss/i;->a(Ljava/net/Socket;)V

    iput-object v1, p0, Lss/ss/pK/b;->b:Ljava/net/Socket;

    iput-object v1, p0, Lss/ss/pK/b;->l:Ljava/net/Socket;

    iput-object v1, p0, Lss/ss/pK/b;->e:LgK/e;

    iput-object v1, p0, Lss/ss/pK/b;->f:LgK/d;

    iput-object v1, p0, Lss/ss/pK/b;->m:Lss/o;

    iput-object v1, p0, Lss/ss/pK/b;->n:Lss/u;

    if-nez v0, :cond_5

    new-instance v0, Lss/ss/gK/o;

    invoke-direct {v0, v2}, Lss/ss/gK/o;-><init>(Ljava/io/IOException;)V

    :goto_2
    if-eqz p5, :cond_4

    invoke-virtual {v3, v2}, Lss/ss/a;->a(Ljava/io/IOException;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_4
    throw v0

    :cond_5
    invoke-virtual {v0, v2}, Lss/ss/gK/o;->a(Ljava/io/IOException;)V

    goto :goto_2

    :cond_6
    return-void

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method

.method public a(Lss/ss/ss/d;)V
    .locals 1

    invoke-virtual {p1}, Lss/ss/ss/d;->b()I

    move-result v0

    iput v0, p0, Lss/ss/pK/b;->g:I

    return-void
.end method

.method public a(Lss/ss/ss/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lss/ss/ss/a;->k:Lss/ss/ss/a;

    invoke-virtual {p1, v0}, Lss/ss/ss/e;->a(Lss/ss/ss/a;)V

    return-void
.end method

.method public a(Z)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lss/ss/pK/b;->b:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lss/ss/pK/b;->b:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lss/ss/pK/b;->b:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lss/ss/pK/b;->c:Lss/ss/ss/d;

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v2, p0, Lss/ss/pK/b;->b:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    :try_start_1
    iget-object v2, p0, Lss/ss/pK/b;->b:Ljava/net/Socket;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v2, p0, Lss/ss/pK/b;->e:LgK/e;

    invoke-interface {v2}, LgK/e;->f()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    :try_start_2
    iget-object v2, p0, Lss/ss/pK/b;->b:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lss/ss/pK/b;->b:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v4, p0, Lss/ss/pK/b;->b:Ljava/net/Socket;

    invoke-virtual {v4, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v2
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public b()Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lss/ss/pK/b;->b:Ljava/net/Socket;

    return-object v0
.end method

.method public c()Lss/o;
    .locals 1

    iget-object v0, p0, Lss/ss/pK/b;->m:Lss/o;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lss/ss/pK/b;->k:Lss/aa;

    invoke-virtual {v1}, Lss/aa;->a()Lss/a;

    move-result-object v1

    invoke-virtual {v1}, Lss/a;->a()Lss/q;

    move-result-object v1

    invoke-virtual {v1}, Lss/q;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lss/ss/pK/b;->k:Lss/aa;

    invoke-virtual {v1}, Lss/aa;->a()Lss/a;

    move-result-object v1

    invoke-virtual {v1}, Lss/a;->a()Lss/q;

    move-result-object v1

    invoke-virtual {v1}, Lss/q;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lss/ss/pK/b;->k:Lss/aa;

    invoke-virtual {v1}, Lss/aa;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lss/ss/pK/b;->k:Lss/aa;

    invoke-virtual {v1}, Lss/aa;->c()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lss/ss/pK/b;->m:Lss/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lss/ss/pK/b;->m:Lss/o;

    invoke-virtual {v0}, Lss/o;->a()Lss/g;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lss/ss/pK/b;->n:Lss/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "none"

    goto :goto_0
.end method
