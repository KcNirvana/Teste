.class public Lcom/alipay/mobile/common/http/g;
.super Lcom/alipay/mobile/common/http/a;
.source "RequestParams.java"


# instance fields
.field private a:Ljava/lang/String;

.field private final b:[Ljava/lang/String;

.field private c:Lcom/alipay/mobile/common/http/a/d;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljavax/net/ssl/SSLSocketFactory;

.field private g:Ljava/net/Proxy;

.field private h:Ljavax/net/ssl/HostnameVerifier;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:J

.field private l:Ljava/util/concurrent/Executor;

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:I

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:I

.field private u:Lcom/alipay/mobile/common/http/a/c;

.field private v:Lcom/alipay/mobile/common/http/a/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/alipay/mobile/common/http/g;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/http/a/d;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/alipay/mobile/common/http/g;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/http/a/d;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alipay/mobile/common/http/a/d;[Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x3a98

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/common/http/a;-><init>()V

    iput v0, p0, Lcom/alipay/mobile/common/http/g;->m:I

    iput v0, p0, Lcom/alipay/mobile/common/http/g;->n:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/http/g;->o:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/common/http/g;->p:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/common/http/g;->q:I

    iput-boolean v1, p0, Lcom/alipay/mobile/common/http/g;->s:Z

    const/16 v0, 0x12c

    iput v0, p0, Lcom/alipay/mobile/common/http/g;->t:I

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    new-instance p2, Lcom/alipay/mobile/common/http/a/a;

    invoke-direct {p2}, Lcom/alipay/mobile/common/http/a/a;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/common/http/g;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/common/http/g;->b:[Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/http/g;->c:Lcom/alipay/mobile/common/http/a/d;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/common/http/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/common/http/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/alipay/mobile/common/http/g;->m:I

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lcom/alipay/mobile/common/http/HttpMethod;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/common/http/a;->a(Lcom/alipay/mobile/common/http/HttpMethod;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/common/http/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/http/g;->l:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/http/g;->s:Z

    return-void
.end method

.method public bridge synthetic b()Lcom/alipay/mobile/common/http/HttpMethod;
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/common/http/a;->b()Lcom/alipay/mobile/common/http/HttpMethod;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/http/g;->i:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic c()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/common/http/a;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/common/http/a;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e()Lcom/alipay/mobile/common/http/b/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lcom/alipay/mobile/common/http/a;->e()Lcom/alipay/mobile/common/http/b/a;

    move-result-object v0

    return-object v0
.end method

.method f()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/common/http/g;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/http/g;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "uri is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/http/g;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/http/g;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/common/http/g;->c:Lcom/alipay/mobile/common/http/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/http/g;->f:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/http/g;->c:Lcom/alipay/mobile/common/http/a/d;

    invoke-interface {v0}, Lcom/alipay/mobile/common/http/a/d;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/http/g;->f:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/http/g;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/http/g;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/http/g;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/http/g;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/http/g;->c:Lcom/alipay/mobile/common/http/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/http/g;->c:Lcom/alipay/mobile/common/http/a/d;

    iget-object v1, p0, Lcom/alipay/mobile/common/http/g;->b:[Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/common/http/a/d;->a(Lcom/alipay/mobile/common/http/g;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/http/g;->e:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/http/g;->e:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/http/g;->f:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public j()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/http/g;->h:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public k()Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/http/g;->g:Ljava/net/Proxy;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/http/g;->m:I

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/http/g;->n:I

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/http/g;->i:Ljava/lang/String;

    return-object v0
.end method

.method public o()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/common/http/g;->j:J

    return-wide v0
.end method

.method public p()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/common/http/g;->k:J

    return-wide v0
.end method

.method public q()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/http/g;->l:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/http/g;->o:Z

    return v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/http/g;->p:Z

    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/http/g;->r:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/http/g;->f()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/http/g;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0}, Lcom/alipay/mobile/common/http/a;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "RequestParams"

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "&"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/alipay/mobile/common/http/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "?"

    goto :goto_2
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/http/g;->q:I

    return v0
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/http/g;->s:Z

    return v0
.end method

.method public w()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/http/g;->t:I

    return v0
.end method

.method public x()Lcom/alipay/mobile/common/http/a/c;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/http/g;->u:Lcom/alipay/mobile/common/http/a/c;

    return-object v0
.end method

.method public y()Lcom/alipay/mobile/common/http/a/e;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/http/g;->v:Lcom/alipay/mobile/common/http/a/e;

    return-object v0
.end method
