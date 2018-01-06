.class public Lcom/amap/api/col/am$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Z

.field final synthetic b:Lcom/amap/api/col/am;

.field private c:Lcom/amap/api/col/hw;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/col/bp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/amap/api/col/am;Lcom/amap/api/col/hw;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/col/am$d;->b:Lcom/amap/api/col/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/am$d;->a:Z

    iput-object p2, p0, Lcom/amap/api/col/am$d;->c:Lcom/amap/api/col/hw;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/am$d;->d:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/col/am;Lcom/amap/api/col/hw;Lcom/amap/api/col/an;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/am$d;-><init>(Lcom/amap/api/col/am;Lcom/amap/api/col/hw;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/am$d;)Lcom/amap/api/col/hw;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/am$d;->c:Lcom/amap/api/col/hw;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 3

    const-string v1, "getMaxZoomLevel"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/am$d;->b:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget v0, v0, Lcom/amap/api/col/ah;->i:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v2, "Mediator"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(F)V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/amap/api/col/am$d;->b:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget v0, v0, Lcom/amap/api/col/ah;->j:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/am$d;->b:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iput p1, v0, Lcom/amap/api/col/ah;->j:F

    float-to-int v0, p1

    iget-object v1, p0, Lcom/amap/api/col/am$d;->b:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget-wide v2, v1, Lcom/amap/api/col/ah;->d:D

    shl-int v1, v13, v0

    int-to-double v4, v1

    div-double/2addr v2, v4

    int-to-float v1, v0

    sub-float v1, p1, v1

    float-to-double v4, v1

    sget-wide v6, Lcom/amap/api/col/am;->a:D

    cmpg-double v1, v4, v6

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/am$d;->b:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget-object v4, p0, Lcom/amap/api/col/am$d;->b:Lcom/amap/api/col/am;

    iget-object v4, v4, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget v4, v4, Lcom/amap/api/col/ah;->b:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    int-to-float v0, v0

    sub-float v0, p1, v0

    float-to-double v8, v0

    const-wide v10, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    double-to-int v0, v4

    iput v0, v1, Lcom/amap/api/col/ah;->a:I

    iget-object v0, p0, Lcom/amap/api/col/am$d;->b:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget v0, v0, Lcom/amap/api/col/ah;->a:I

    int-to-double v0, v0

    iget-object v4, p0, Lcom/amap/api/col/am$d;->b:Lcom/amap/api/col/am;

    iget-object v4, v4, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget v4, v4, Lcom/amap/api/col/ah;->b:I

    int-to-double v4, v4

    div-double/2addr v0, v4

    div-double v0, v2, v0

    :goto_0
    iget-object v2, p0, Lcom/amap/api/col/am$d;->b:Lcom/amap/api/col/am;

    iget-object v2, v2, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iput-wide v0, v2, Lcom/amap/api/col/ah;->k:D

    iget-object v0, p0, Lcom/amap/api/col/am$d;->b:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->h:Lcom/amap/api/col/hw;

    iget-object v0, v0, Lcom/amap/api/col/hw;->c:[F

    aput p1, v0, v13

    iget-object v0, p0, Lcom/amap/api/col/am$d;->b:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->h:Lcom/amap/api/col/hw;

    iget-object v0, v0, Lcom/amap/api/col/hw;->f:Lcom/amap/api/col/br;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/br;->a(F)V

    :cond_0
    invoke-virtual {p0, v12, v12}, Lcom/amap/api/col/am$d;->a(ZZ)V

    return-void

    :cond_1
    int-to-float v0, v0

    sub-float v0, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    sub-float v0, v8, v0

    iget-object v1, p0, Lcom/amap/api/col/am$d;->b:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget-object v4, p0, Lcom/amap/api/col/am$d;->b:Lcom/amap/api/col/am;

    iget-object v4, v4, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget v4, v4, Lcom/amap/api/col/ah;->b:I

    int-to-float v4, v4

    div-float v0, v8, v0

    div-float v0, v4, v0

    float-to-int v0, v0

    iput v0, v1, Lcom/amap/api/col/ah;->a:I

    iget-object v0, p0, Lcom/amap/api/col/am$d;->b:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget v0, v0, Lcom/amap/api/col/ah;->a:I

    int-to-double v0, v0

    iget-object v4, p0, Lcom/amap/api/col/am$d;->b:Lcom/amap/api/col/am;

    iget-object v4, v4, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget v4, v4, Lcom/amap/api/col/ah;->b:I

    int-to-double v4, v4

    div-double/2addr v0, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    div-double v0, v2, v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 3

    const-string v1, "setMaxZoomLevel"

    if-gtz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/am$d;->b:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    sput p1, Lcom/amap/api/col/it;->d:I

    iput p1, v0, Lcom/amap/api/col/ah;->i:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Mediator"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(II)V
    .locals 2

    sget v0, Lcom/amap/api/col/it;->o:I

    if-ne p1, v0, :cond_0

    sget v0, Lcom/amap/api/col/it;->p:I

    if-eq p2, v0, :cond_1

    :cond_0
    sput p1, Lcom/amap/api/col/it;->o:I

    sput p2, Lcom/amap/api/col/it;->p:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/col/am$d;->a(ZZ)V

    :cond_1
    return-void
.end method

.method public a(Lcom/amap/api/col/bp;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/am$d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/amap/api/col/f;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/amap/api/col/it;->s:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/am$d;->b:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/ah;->a(Lcom/amap/api/col/f;)Lcom/amap/api/col/f;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/am$d;->b:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iput-object v0, v1, Lcom/amap/api/col/ah;->l:Lcom/amap/api/col/f;

    :cond_1
    invoke-virtual {p0, v2, v2}, Lcom/amap/api/col/am$d;->a(ZZ)V

    goto :goto_0
.end method

.method public a(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/am$d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/bp;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/col/bp;->a(ZZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/am$d;->b:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->h:Lcom/amap/api/col/hw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/am$d;->b:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->h:Lcom/amap/api/col/hw;

    iget-object v0, v0, Lcom/amap/api/col/hw;->i:Lcom/amap/api/col/be;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/am$d;->b:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->h:Lcom/amap/api/col/hw;

    iget-object v0, v0, Lcom/amap/api/col/hw;->i:Lcom/amap/api/col/be;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/be;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/col/am$d;->b:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->h:Lcom/amap/api/col/hw;

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public b()I
    .locals 3

    const-string v1, "getMinZoomLevel"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/am$d;->b:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget v0, v0, Lcom/amap/api/col/ah;->h:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v2, "Mediator"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)V
    .locals 3

    const-string v1, "setMinZoomLevel"

    if-gtz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/am$d;->b:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    sput p1, Lcom/amap/api/col/it;->e:I

    iput p1, v0, Lcom/amap/api/col/ah;->h:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Mediator"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/amap/api/col/bp;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/am$d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/amap/api/col/f;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/amap/api/col/am$d;->b:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0}, Lcom/amap/api/col/am$d;->f()Lcom/amap/api/col/f;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/amap/api/col/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/amap/api/col/it;->s:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/am$d;->b:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/ah;->a(Lcom/amap/api/col/f;)Lcom/amap/api/col/f;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/am$d;->b:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iput-object v0, v1, Lcom/amap/api/col/ah;->l:Lcom/amap/api/col/f;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/amap/api/col/am$d;->a(ZZ)V

    :cond_1
    return-void
.end method

.method public c()I
    .locals 1

    sget v0, Lcom/amap/api/col/it;->o:I

    return v0
.end method

.method public d()I
    .locals 1

    sget v0, Lcom/amap/api/col/it;->p:I

    return v0
.end method

.method public e()F
    .locals 3

    const-string v1, "getZoomLevel"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/am$d;->b:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget v0, v0, Lcom/amap/api/col/ah;->j:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v2, "Mediator"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Lcom/amap/api/col/f;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/am$d;->b:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget-object v1, p0, Lcom/amap/api/col/am$d;->b:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget-object v1, v1, Lcom/amap/api/col/ah;->l:Lcom/amap/api/col/f;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/ah;->b(Lcom/amap/api/col/f;)Lcom/amap/api/col/f;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/am$d;->b:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->d:Lcom/amap/api/col/am$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/am$d;->b:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->d:Lcom/amap/api/col/am$b;

    iget-boolean v1, v1, Lcom/amap/api/col/am$b;->a:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/am$d;->b:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget-object v0, v0, Lcom/amap/api/col/ah;->m:Lcom/amap/api/col/f;

    :cond_0
    return-object v0
.end method

.method public g()Lcom/amap/api/col/hw;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/am$d;->c:Lcom/amap/api/col/hw;

    return-object v0
.end method
