.class public Lcom/alipay/a/a/a/c;
.super Ljava/lang/Object;
.source "Element.java"


# instance fields
.field private a:Lcom/alipay/a/a/a/d;

.field private b:Lcom/alipay/a/a/a/a;

.field private c:Lcom/alipay/a/a/a/c;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/alipay/a/a/a/d;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/a/a/a/c;->a:Lcom/alipay/a/a/a/d;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/alipay/a/a/a/a;

    invoke-virtual {p1}, Lcom/alipay/a/a/a/d;->f()Lcom/alipay/a/a/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/a/a/a/a;-><init>(Lorg/xml/sax/Attributes;)V

    iput-object v0, p0, Lcom/alipay/a/a/a/c;->b:Lcom/alipay/a/a/a/a;

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/a/a/a/c;->c:Lcom/alipay/a/a/a/c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/a/a/a/c;->d:Z

    return-void

    :cond_0
    new-instance v0, Lcom/alipay/a/a/a/a;

    invoke-direct {v0}, Lcom/alipay/a/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/alipay/a/a/a/c;->b:Lcom/alipay/a/a/a/a;

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/alipay/a/a/a/a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/a/a/a/c;->b:Lcom/alipay/a/a/a/a;

    return-object v0
.end method

.method public a(Lcom/alipay/a/a/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/a/a/a/c;->c:Lcom/alipay/a/a/a/c;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/a/a/a/c;->a:Lcom/alipay/a/a/a/d;

    iget-object v1, p0, Lcom/alipay/a/a/a/c;->b:Lcom/alipay/a/a/a/a;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/alipay/a/a/a/d;->a(Lcom/alipay/a/a/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Lcom/alipay/a/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/alipay/a/a/a/c;->c:Lcom/alipay/a/a/a/c;

    return-object v0
.end method

.method public b(Lcom/alipay/a/a/a/c;)Z
    .locals 2

    iget-object v0, p0, Lcom/alipay/a/a/a/c;->a:Lcom/alipay/a/a/a/d;

    iget-object v1, p1, Lcom/alipay/a/a/a/c;->a:Lcom/alipay/a/a/a/d;

    invoke-virtual {v0, v1}, Lcom/alipay/a/a/a/d;->a(Lcom/alipay/a/a/a/d;)Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/a/a/a/c;->a:Lcom/alipay/a/a/a/d;

    invoke-virtual {v0}, Lcom/alipay/a/a/a/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/a/a/a/c;->a:Lcom/alipay/a/a/a/d;

    invoke-virtual {v0}, Lcom/alipay/a/a/a/d;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/a/a/a/c;->a:Lcom/alipay/a/a/a/d;

    invoke-virtual {v0}, Lcom/alipay/a/a/a/d;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/a/a/a/c;->a:Lcom/alipay/a/a/a/d;

    invoke-virtual {v0}, Lcom/alipay/a/a/a/d;->d()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/a/a/a/c;->a:Lcom/alipay/a/a/a/d;

    invoke-virtual {v0}, Lcom/alipay/a/a/a/d;->e()I

    move-result v0

    return v0
.end method

.method public h()Lcom/alipay/a/a/a/d;
    .locals 1

    iget-object v0, p0, Lcom/alipay/a/a/a/c;->a:Lcom/alipay/a/a/a/d;

    invoke-virtual {v0}, Lcom/alipay/a/a/a/d;->g()Lcom/alipay/a/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/a/a/a/c;->b:Lcom/alipay/a/a/a/a;

    invoke-virtual {v0}, Lcom/alipay/a/a/a/a;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/alipay/a/a/a/c;->b:Lcom/alipay/a/a/a/a;

    invoke-virtual {v1, v0}, Lcom/alipay/a/a/a/a;->getType(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/a/a/a/c;->b:Lcom/alipay/a/a/a/a;

    invoke-virtual {v1, v0}, Lcom/alipay/a/a/a/a;->getQName(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/alipay/a/a/a/c;->b:Lcom/alipay/a/a/a/a;

    invoke-virtual {v1, v0}, Lcom/alipay/a/a/a/a;->a(I)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public j()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/a/a/a/c;->b:Lcom/alipay/a/a/a/a;

    invoke-virtual {v0}, Lcom/alipay/a/a/a/a;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/alipay/a/a/a/c;->b:Lcom/alipay/a/a/a/a;

    invoke-virtual {v1, v0}, Lcom/alipay/a/a/a/a;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/a/a/a/c;->b:Lcom/alipay/a/a/a/a;

    invoke-virtual {v2, v0}, Lcom/alipay/a/a/a/a;->getValue(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/alipay/a/a/a/c;->b:Lcom/alipay/a/a/a/a;

    invoke-virtual {v1, v0}, Lcom/alipay/a/a/a/a;->a(I)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/a/a/a/c;->d:Z

    return-void
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/a/a/a/c;->d:Z

    return v0
.end method
