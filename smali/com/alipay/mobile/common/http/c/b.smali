.class public abstract Lcom/alipay/mobile/common/http/c/b;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/common/http/g;

.field protected b:Lcom/alipay/mobile/common/http/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/alipay/mobile/common/http/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alipay/mobile/common/http/c/b",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected a(Lcom/alipay/mobile/common/http/d/b;Ljava/lang/String;)V
    .locals 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/common/cache/a;

    invoke-direct {v0}, Lcom/alipay/mobile/common/cache/a;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/mobile/common/http/d/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/cache/a;->setKey(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/common/cache/a;->setLastAccess(J)V

    invoke-virtual {p1}, Lcom/alipay/mobile/common/http/d/b;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/cache/a;->setEtag(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/common/http/d/b;->l()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/common/cache/a;->setExpires(J)V

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/http/d/b;->m()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/cache/a;->setLastModify(Ljava/util/Date;)V

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/cache/a;->setTextContent(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/common/http/d/b;->o()Lcom/alipay/mobile/common/http/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/http/g;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/cache/c;->a(Ljava/lang/String;)Lcom/alipay/mobile/common/cache/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/cache/c;->a(Lcom/alipay/mobile/common/cache/a;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/alipay/mobile/common/http/f;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/http/c/b;->b:Lcom/alipay/mobile/common/http/f;

    return-void
.end method

.method public a(Lcom/alipay/mobile/common/http/g;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/http/c/b;->a:Lcom/alipay/mobile/common/http/g;

    return-void
.end method

.method public abstract b(Lcom/alipay/mobile/common/cache/a;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/cache/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract b(Lcom/alipay/mobile/common/http/d/b;)V
.end method

.method public abstract c(Lcom/alipay/mobile/common/http/d/b;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/http/d/b;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
