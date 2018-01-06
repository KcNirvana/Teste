.class Lcom/amap/api/col/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Z

.field public g:Landroid/graphics/PointF;

.field public h:I

.field public i:Z

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIII)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/amap/api/col/bd;->a:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/amap/api/col/bd;->h:I

    iput-boolean v0, p0, Lcom/amap/api/col/bd;->i:Z

    iput p1, p0, Lcom/amap/api/col/bd;->b:I

    iput p2, p0, Lcom/amap/api/col/bd;->c:I

    iput p3, p0, Lcom/amap/api/col/bd;->d:I

    iput p4, p0, Lcom/amap/api/col/bd;->e:I

    iget v1, p0, Lcom/amap/api/col/bd;->b:I

    iget v2, p0, Lcom/amap/api/col/bd;->c:I

    iget v3, p0, Lcom/amap/api/col/bd;->d:I

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/by;->a(III)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/amap/api/col/bd;->f:Z

    invoke-virtual {p0}, Lcom/amap/api/col/bd;->b()V

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/col/bd;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/amap/api/col/bd;->a:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/amap/api/col/bd;->h:I

    iput-boolean v0, p0, Lcom/amap/api/col/bd;->i:Z

    iget v1, p1, Lcom/amap/api/col/bd;->b:I

    iput v1, p0, Lcom/amap/api/col/bd;->b:I

    iget v1, p1, Lcom/amap/api/col/bd;->c:I

    iput v1, p0, Lcom/amap/api/col/bd;->c:I

    iget v1, p1, Lcom/amap/api/col/bd;->d:I

    iput v1, p0, Lcom/amap/api/col/bd;->d:I

    iget v1, p1, Lcom/amap/api/col/bd;->e:I

    iput v1, p0, Lcom/amap/api/col/bd;->e:I

    iget-object v1, p1, Lcom/amap/api/col/bd;->g:Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/amap/api/col/bd;->g:Landroid/graphics/PointF;

    iget v1, p1, Lcom/amap/api/col/bd;->a:I

    iput v1, p0, Lcom/amap/api/col/bd;->a:I

    iget v1, p0, Lcom/amap/api/col/bd;->b:I

    iget v2, p0, Lcom/amap/api/col/bd;->c:I

    iget v3, p0, Lcom/amap/api/col/bd;->d:I

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/by;->a(III)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/amap/api/col/bd;->f:Z

    invoke-virtual {p0}, Lcom/amap/api/col/bd;->b()V

    return-void
.end method


# virtual methods
.method public a()Lcom/amap/api/col/bd;
    .locals 1

    new-instance v0, Lcom/amap/api/col/bd;

    invoke-direct {v0, p0}, Lcom/amap/api/col/bd;-><init>(Lcom/amap/api/col/bd;)V

    return-object v0
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/amap/api/col/bd;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amap/api/col/bd;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amap/api/col/bd;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amap/api/col/bd;->f:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/amap/api/col/it;->j:I

    if-ne v1, v2, :cond_0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/bd;->j:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/bd;->j:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/col/bd;->a()Lcom/amap/api/col/bd;

    move-result-object v0

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
    instance-of v2, p1, Lcom/amap/api/col/bd;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/amap/api/col/bd;

    iget v2, p0, Lcom/amap/api/col/bd;->b:I

    iget v3, p1, Lcom/amap/api/col/bd;->b:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/amap/api/col/bd;->c:I

    iget v3, p1, Lcom/amap/api/col/bd;->c:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/amap/api/col/bd;->d:I

    iget v3, p1, Lcom/amap/api/col/bd;->d:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/amap/api/col/bd;->e:I

    iget v3, p1, Lcom/amap/api/col/bd;->e:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/amap/api/col/bd;->b:I

    mul-int/lit8 v0, v0, 0x7

    iget v1, p0, Lcom/amap/api/col/bd;->c:I

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    iget v1, p0, Lcom/amap/api/col/bd;->d:I

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    iget v1, p0, Lcom/amap/api/col/bd;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/amap/api/col/bd;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amap/api/col/bd;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amap/api/col/bd;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amap/api/col/bd;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
