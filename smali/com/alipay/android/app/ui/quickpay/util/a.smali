.class public Lcom/alipay/android/app/ui/quickpay/util/a;
.super Ljava/lang/Object;
.source "BlockEditModeUtil.java"


# static fields
.field private static a:Lcom/alipay/android/app/ui/quickpay/util/a;


# instance fields
.field private b:[I

.field private c:[I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Lcom/alipay/android/app/json/JSONArray;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/util/a;->a:Lcom/alipay/android/app/ui/quickpay/util/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->d:I

    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->e:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->f:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->h:Lcom/alipay/android/app/json/JSONArray;

    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->i:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->j:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->k:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->l:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->m:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->n:Z

    return-void
.end method

.method public static a()Lcom/alipay/android/app/ui/quickpay/util/a;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/a;->a:Lcom/alipay/android/app/ui/quickpay/util/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/util/a;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/util/a;-><init>()V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/util/a;->a:Lcom/alipay/android/app/ui/quickpay/util/a;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/a;->a:Lcom/alipay/android/app/ui/quickpay/util/a;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->b:[I

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->b:[I

    aput v1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->c:[I

    :goto_1
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->b:[I

    aput v0, v1, v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->c:[I

    aput v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a(II)V
    .locals 4

    if-eq p1, p2, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->b:[I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->b:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->b:[I

    array-length v0, v0

    if-ge p2, v0, :cond_0

    if-ge p1, p2, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->b:[I

    aget v0, v0, p1

    :goto_1
    if-ge p1, p2, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->b:[I

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->b:[I

    add-int/lit8 v3, p1, 0x1

    aget v2, v2, v3

    aput v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->b:[I

    aput v0, v1, p2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->b:[I

    aget v0, v0, p1

    :goto_2
    if-le p1, p2, :cond_4

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->b:[I

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->b:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    aput v2, v1, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->b:[I

    aput v0, v1, p2

    goto :goto_0
.end method

.method public a(Lcom/alipay/android/app/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->h:Lcom/alipay/android/app/json/JSONArray;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->e:Z

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/util/a;->a:Lcom/alipay/android/app/ui/quickpay/util/a;

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->d:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->f:Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->i:Z

    return-void
.end method

.method public c()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->b:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->b:[I

    array-length v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->b:[I

    aget v3, v3, v1

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->c:[I

    aget v4, v4, v1

    if-eq v3, v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public d(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->j:Z

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->j:Z

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->i:Z

    return-void
.end method

.method public d()Z
    .locals 2

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->k:Z

    return-void
.end method

.method public e()Z
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->e:Z

    iget-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->f:Z

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->g:Z

    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->e:Z

    return v0
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->l:Z

    return-void
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->f:Z

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->b:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->b:[I

    array-length v3, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->b:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->m:Z

    return-void
.end method

.method public i(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->n:Z

    return-void
.end method

.method public i()[I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->b:[I

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->i:Z

    return v0
.end method

.method public k()Z
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->i:Z

    iget-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->j:Z

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->j:Z

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->k:Z

    return v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->g:Z

    return v0
.end method

.method public p()Lcom/alipay/android/app/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->h:Lcom/alipay/android/app/json/JSONArray;

    return-object v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->l:Z

    return v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->m:Z

    return v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->n:Z

    return v0
.end method
