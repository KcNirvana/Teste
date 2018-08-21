.class public abstract Lcom/alipay/mobile/common/http/d/b;
.super Ljava/lang/Object;
.source "UriRequest.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Lcom/alipay/mobile/common/http/g;

.field protected final c:Lcom/alipay/mobile/common/http/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/common/http/c/b",
            "<*>;"
        }
    .end annotation
.end field

.field protected d:Ljava/lang/ClassLoader;

.field protected e:Lcom/alipay/mobile/common/http/f;

.field protected f:Lcom/alipay/mobile/common/http/a/f;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/http/g;Ljava/lang/reflect/Type;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/http/d/b;->d:Ljava/lang/ClassLoader;

    iput-object v0, p0, Lcom/alipay/mobile/common/http/d/b;->e:Lcom/alipay/mobile/common/http/f;

    iput-object v0, p0, Lcom/alipay/mobile/common/http/d/b;->f:Lcom/alipay/mobile/common/http/a/f;

    iput-object p1, p0, Lcom/alipay/mobile/common/http/d/b;->b:Lcom/alipay/mobile/common/http/g;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/http/d/b;->a(Lcom/alipay/mobile/common/http/g;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/http/d/b;->a:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/alipay/mobile/common/http/c/c;->a(Ljava/lang/reflect/Type;Lcom/alipay/mobile/common/http/g;)Lcom/alipay/mobile/common/http/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/http/d/b;->c:Lcom/alipay/mobile/common/http/c/b;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Lcom/alipay/mobile/common/http/g;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/alipay/mobile/common/http/g;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public a(Lcom/alipay/mobile/common/http/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/http/d/b;->f:Lcom/alipay/mobile/common/http/a/f;

    return-void
.end method

.method public a(Lcom/alipay/mobile/common/http/f;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/common/http/d/b;->e:Lcom/alipay/mobile/common/http/f;

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/b;->c:Lcom/alipay/mobile/common/http/c/b;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/http/c/b;->a(Lcom/alipay/mobile/common/http/f;)V

    return-void
.end method

.method public a(Ljava/lang/ClassLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/http/d/b;->d:Ljava/lang/ClassLoader;

    return-void
.end method

.method public abstract b()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract c()Z
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/b;->c:Lcom/alipay/mobile/common/http/c/b;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/http/c/b;->c(Lcom/alipay/mobile/common/http/d/b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract f()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract g()V
.end method

.method public abstract h()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract i()J
.end method

.method public abstract j()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract l()J
.end method

.method public abstract m()J
.end method

.method public abstract n()Ljava/lang/String;
.end method

.method public o()Lcom/alipay/mobile/common/http/g;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/http/d/b;->b:Lcom/alipay/mobile/common/http/g;

    return-object v0
.end method

.method public p()V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/common/Sdk;->c()Lcom/alipay/mobile/common/common/a;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/http/d/c;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/http/d/c;-><init>(Lcom/alipay/mobile/common/http/d/b;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/common/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/http/d/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
