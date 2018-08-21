.class public Lcom/alipay/android/app/logic/b;
.super Ljava/lang/Object;
.source "TradeLogicData.java"


# instance fields
.field private a:[Lorg/apache/http/Header;

.field private b:I

.field private c:I

.field private d:Lcom/alipay/android/app/trans/config/a;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/alipay/android/app/logic/b;->b:I

    iput v2, p0, Lcom/alipay/android/app/logic/b;->c:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/logic/b;->e:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/alipay/android/app/logic/b;->f:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/logic/b;->g:Z

    iput-boolean v2, p0, Lcom/alipay/android/app/logic/b;->h:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/logic/b;->i:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/logic/b;->j:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/logic/b;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/logic/b;->c:I

    return-void
.end method

.method public a(Lcom/alipay/android/app/trans/config/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/logic/b;->d:Lcom/alipay/android/app/trans/config/a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/logic/b;->i:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/logic/b;->f:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/logic/b;->f:Z

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/logic/b;->b:I

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/logic/b;->e:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/logic/b;->h:Z

    return-void
.end method

.method public c()V
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/logic/b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/logic/b;->b:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/http/Header;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v3, "Msp-Param"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/android/app/logic/b;->a:[Lorg/apache/http/Header;

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/logic/b;->g:Z

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/logic/b;->j:Ljava/lang/String;

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/logic/b;->h:Z

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/logic/b;->c:I

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/logic/b;->k:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/logic/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public g()[Lorg/apache/http/Header;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/logic/b;->a:[Lorg/apache/http/Header;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/logic/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lcom/alipay/android/app/trans/config/a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/logic/b;->d:Lcom/alipay/android/app/trans/config/a;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/logic/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/logic/b;->k:Ljava/lang/String;

    return-object v0
.end method
