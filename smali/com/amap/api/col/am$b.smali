.class public Lcom/amap/api/col/am$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field b:I

.field final synthetic c:Lcom/amap/api/col/am;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/am;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/amap/api/col/am$b;->c:Lcom/amap/api/col/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/amap/api/col/am$b;->a:Z

    iput v0, p0, Lcom/amap/api/col/am$b;->b:I

    invoke-virtual {p0}, Lcom/amap/api/col/am$b;->e()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/am$b;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    invoke-static {v0}, Lcom/amap/api/col/am$a;->a(Lcom/amap/api/col/am$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/am$b;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    invoke-virtual {v0}, Lcom/amap/api/col/am$a;->b()V

    :cond_0
    iget v0, p0, Lcom/amap/api/col/am$b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/col/am$b;->b:I

    iget v0, p0, Lcom/amap/api/col/am$b;->b:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/amap/api/col/am$b;->b:I

    rem-int/lit8 v0, v0, 0x14

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/am$b;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v0, v0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/am$b;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v0, v0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v0}, Lcom/amap/api/col/az;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/am$b;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v0, v0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v0}, Lcom/amap/api/col/az;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/am$b;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v0, v0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/az;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/u;

    iget-object v0, v0, Lcom/amap/api/col/u;->q:Lcom/amap/api/col/bg;

    invoke-virtual {v0}, Lcom/amap/api/col/bg;->e()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/col/am$b;->c:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    iput-boolean v0, v1, Lcom/amap/api/col/am$d;->a:Z

    iget-object v1, p0, Lcom/amap/api/col/am$b;->c:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v1, v1, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/am$b;->c:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v1, v1, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v1}, Lcom/amap/api/col/az;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/am$b;->c:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v1, v1, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v1}, Lcom/amap/api/col/az;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/am$b;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v0, v0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/az;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/u;

    iget-object v0, v0, Lcom/amap/api/col/u;->q:Lcom/amap/api/col/bg;

    invoke-virtual {v0}, Lcom/amap/api/col/bg;->a()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/am$b;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v0, v0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/am$b;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v0, v0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v0}, Lcom/amap/api/col/az;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/am$b;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v0, v0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v0}, Lcom/amap/api/col/az;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/am$b;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v0, v0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/az;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/u;

    iget-object v0, v0, Lcom/amap/api/col/u;->q:Lcom/amap/api/col/bg;

    invoke-virtual {v0}, Lcom/amap/api/col/bg;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/am$b;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v0, v0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/am$b;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v0, v0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v0}, Lcom/amap/api/col/az;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/am$b;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v0, v0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v0}, Lcom/amap/api/col/az;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/am$b;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v0, v0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/az;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/u;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/amap/api/col/u;->q:Lcom/amap/api/col/bg;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amap/api/col/bg;->c()V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/am$b;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v0, v0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/am$b;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v0, v0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v0}, Lcom/amap/api/col/az;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/am$b;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v0, v0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v0}, Lcom/amap/api/col/az;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/am$b;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v0, v0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/az;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/u;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/amap/api/col/u;->q:Lcom/amap/api/col/bg;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amap/api/col/bg;->d()V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
