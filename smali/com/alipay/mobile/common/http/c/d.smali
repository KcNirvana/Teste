.class Lcom/alipay/mobile/common/http/c/d;
.super Lcom/alipay/mobile/common/http/c/b;
.source "StringLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/common/http/c/b",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/common/http/c/b;-><init>()V

    const-string/jumbo v0, "UTF-8"

    iput-object v0, p0, Lcom/alipay/mobile/common/http/c/d;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/http/c/d;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/alipay/mobile/common/http/c/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alipay/mobile/common/http/c/b",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alipay/mobile/common/http/c/d;

    invoke-direct {v0}, Lcom/alipay/mobile/common/http/c/d;-><init>()V

    return-object v0
.end method

.method public a(Lcom/alipay/mobile/common/cache/a;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/common/cache/a;->getTextContent()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/alipay/mobile/common/http/d/b;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/alipay/mobile/common/http/d/b;->b()V

    invoke-virtual {p1}, Lcom/alipay/mobile/common/http/d/b;->h()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/http/c/d;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/common/http/c/d;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/mobile/common/common/a/d;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/http/c/d;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/common/http/c/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/alipay/mobile/common/http/g;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/common/http/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/alipay/mobile/common/http/c/d;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public synthetic b(Lcom/alipay/mobile/common/cache/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/http/c/d;->a(Lcom/alipay/mobile/common/cache/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/alipay/mobile/common/http/d/b;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/http/c/d;->d:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/common/http/c/d;->a(Lcom/alipay/mobile/common/http/d/b;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic c(Lcom/alipay/mobile/common/http/d/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/http/c/d;->a(Lcom/alipay/mobile/common/http/d/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
