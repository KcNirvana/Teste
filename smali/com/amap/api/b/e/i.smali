.class public Lcom/amap/api/b/e/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/amap/api/b/c/b;

.field private b:F

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amap/api/b/c/b;FLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "autonavi"

    iput-object v0, p0, Lcom/amap/api/b/e/i;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/amap/api/b/e/i;->a:Lcom/amap/api/b/c/b;

    iput p2, p0, Lcom/amap/api/b/e/i;->b:F

    invoke-virtual {p0, p3}, Lcom/amap/api/b/e/i;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/amap/api/b/c/b;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/b/e/i;->a:Lcom/amap/api/b/c/b;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "autonavi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/amap/api/b/e/i;->c:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lcom/amap/api/b/e/i;->b:F

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/b/e/i;->c:Ljava/lang/String;

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
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/amap/api/b/e/i;

    iget-object v2, p0, Lcom/amap/api/b/e/i;->c:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/amap/api/b/e/i;->c:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/amap/api/b/e/i;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/b/e/i;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/amap/api/b/e/i;->a:Lcom/amap/api/b/c/b;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/amap/api/b/e/i;->a:Lcom/amap/api/b/c/b;

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/amap/api/b/e/i;->a:Lcom/amap/api/b/c/b;

    iget-object v3, p1, Lcom/amap/api/b/e/i;->a:Lcom/amap/api/b/c/b;

    invoke-virtual {v2, v3}, Lcom/amap/api/b/c/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget v2, p0, Lcom/amap/api/b/e/i;->b:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/amap/api/b/e/i;->b:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/b/e/i;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/b/e/i;->a:Lcom/amap/api/b/c/b;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amap/api/b/e/i;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/b/e/i;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/b/e/i;->a:Lcom/amap/api/b/c/b;

    invoke-virtual {v1}, Lcom/amap/api/b/c/b;->hashCode()I

    move-result v1

    goto :goto_1
.end method
