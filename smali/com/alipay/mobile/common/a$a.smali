.class public Lcom/alipay/mobile/common/a$a;
.super Ljava/lang/Object;
.source "DbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z

.field private e:Lcom/alipay/mobile/common/a$c;

.field private f:Lcom/alipay/mobile/common/a$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "inside.db"

    iput-object v0, p0, Lcom/alipay/mobile/common/a$a;->b:Ljava/lang/String;

    iput v1, p0, Lcom/alipay/mobile/common/a$a;->c:I

    iput-boolean v1, p0, Lcom/alipay/mobile/common/a$a;->d:Z

    return-void
.end method


# virtual methods
.method public a(I)Lcom/alipay/mobile/common/a$a;
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/common/a$a;->c:I

    return-object p0
.end method

.method public a(Lcom/alipay/mobile/common/a$b;)Lcom/alipay/mobile/common/a$a;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/a$a;->f:Lcom/alipay/mobile/common/a$b;

    return-object p0
.end method

.method public a(Lcom/alipay/mobile/common/a$c;)Lcom/alipay/mobile/common/a$a;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/a$a;->e:Lcom/alipay/mobile/common/a$c;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/alipay/mobile/common/a$a;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/alipay/mobile/common/a$a;->b:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public a()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/a$a;->a:Ljava/io/File;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/a$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/a$a;->c:I

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/a$a;->d:Z

    return v0
.end method

.method public e()Lcom/alipay/mobile/common/a$b;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/a$a;->f:Lcom/alipay/mobile/common/a$b;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/alipay/mobile/common/a$a;

    iget-object v2, p0, Lcom/alipay/mobile/common/a$a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/common/a$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/common/a$a;->a:Ljava/io/File;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/alipay/mobile/common/a$a;->a:Ljava/io/File;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/common/a$a;->a:Ljava/io/File;

    iget-object v1, p1, Lcom/alipay/mobile/common/a$a;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Lcom/alipay/mobile/common/a$c;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/a$a;->e:Lcom/alipay/mobile/common/a$c;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/alipay/mobile/common/a$a;->a:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/a$a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/common/a$a;->a:Ljava/io/File;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
