.class final Lcom/google/ads/interactivemedia/v3/internal/dw$a;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/internal/dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/internal/dw$a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/ck;

.field private final b:Z

.field private final c:Z

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/fo;

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/ads/interactivemedia/v3/internal/fn$b;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/ads/interactivemedia/v3/internal/fn$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:[B

.field private h:I

.field private i:I

.field private j:J

.field private k:Z

.field private l:J

.field private m:Lcom/google/ads/interactivemedia/v3/internal/dw$a$a;

.field private n:Lcom/google/ads/interactivemedia/v3/internal/dw$a$a;

.field private o:Z

.field private p:J

.field private q:J

.field private r:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ck;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->a:Lcom/google/ads/interactivemedia/v3/internal/ck;

    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->b:Z

    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->c:Z

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->e:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->f:Landroid/util/SparseArray;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/dw$a$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/dw$a$a;-><init>(Lcom/google/ads/interactivemedia/v3/internal/dw$1;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->m:Lcom/google/ads/interactivemedia/v3/internal/dw$a$a;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/dw$a$a;

    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/dw$a$a;-><init>(Lcom/google/ads/interactivemedia/v3/internal/dw$1;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->n:Lcom/google/ads/interactivemedia/v3/internal/dw$a$a;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/fo;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->d:Lcom/google/ads/interactivemedia/v3/internal/fo;

    const/16 p1, 0x80

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->g:[B

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->b()V

    return-void
.end method

.method private a(I)V
    .locals 7

    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->r:Z

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->j:J

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->p:J

    sub-long/2addr v0, v4

    long-to-int v4, v0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->a:Lcom/google/ads/interactivemedia/v3/internal/ck;

    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->q:J

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(JIII[B)V

    return-void
.end method


# virtual methods
.method public a(JI)V
    .locals 5

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->i:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->n:Lcom/google/ads/interactivemedia/v3/internal/dw$a$a;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->m:Lcom/google/ads/interactivemedia/v3/internal/dw$a$a;

    invoke-static {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/dw$a$a;->a(Lcom/google/ads/interactivemedia/v3/internal/dw$a$a;Lcom/google/ads/interactivemedia/v3/internal/dw$a$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->o:Z

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->j:J

    sub-long/2addr p1, v3

    long-to-int p1, p1

    add-int/2addr p3, p1

    invoke-direct {p0, p3}, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->a(I)V

    :cond_1
    iget-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->j:J

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->p:J

    iget-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->l:J

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->q:J

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->r:Z

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->o:Z

    :cond_2
    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->r:Z

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->i:I

    const/4 p3, 0x5

    if-eq p2, p3, :cond_3

    iget-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->b:Z

    if-eqz p2, :cond_4

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->i:I

    if-ne p2, v2, :cond_4

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->n:Lcom/google/ads/interactivemedia/v3/internal/dw$a$a;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/dw$a$a;->b()Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    or-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->r:Z

    return-void
.end method

.method public a(JIJ)V
    .locals 0

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->i:I

    iput-wide p4, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->l:J

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->j:J

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->b:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->i:I

    if-eq p1, p2, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->c:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->i:I

    const/4 p3, 0x5

    if-eq p1, p3, :cond_1

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->i:I

    if-eq p1, p2, :cond_1

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->i:I

    const/4 p3, 0x2

    if-ne p1, p3, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->m:Lcom/google/ads/interactivemedia/v3/internal/dw$a$a;

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->n:Lcom/google/ads/interactivemedia/v3/internal/dw$a$a;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->m:Lcom/google/ads/interactivemedia/v3/internal/dw$a$a;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->n:Lcom/google/ads/interactivemedia/v3/internal/dw$a$a;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->n:Lcom/google/ads/interactivemedia/v3/internal/dw$a$a;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/dw$a$a;->a()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->h:I

    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->k:Z

    :cond_2
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/fn$a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->f:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/ads/interactivemedia/v3/internal/fn$a;->a:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/fn$b;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->e:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/ads/interactivemedia/v3/internal/fn$b;->a:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public a([BII)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-boolean v2, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->k:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    sub-int v2, p3, v1

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->g:[B

    array-length v3, v3

    iget v4, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->h:I

    add-int/2addr v4, v2

    const/4 v5, 0x2

    if-ge v3, v4, :cond_1

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->g:[B

    iget v4, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->h:I

    add-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->g:[B

    :cond_1
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->g:[B

    iget v4, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->h:I

    move-object/from16 v6, p1

    invoke-static {v6, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->h:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->h:I

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->d:Lcom/google/ads/interactivemedia/v3/internal/fo;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->g:[B

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->h:I

    invoke-virtual {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/fo;->a([BI)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->d:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/fo;->a()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_2

    return-void

    :cond_2
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->d:Lcom/google/ads/interactivemedia/v3/internal/fo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->d:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v1, v5}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result v8

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->d:Lcom/google/ads/interactivemedia/v3/internal/fo;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->d:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->d:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/fo;->d()I

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->d:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c()Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->d:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/fo;->d()I

    move-result v9

    iget-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->c:Z

    const/4 v4, 0x0

    if-nez v1, :cond_5

    iput-boolean v4, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->k:Z

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->n:Lcom/google/ads/interactivemedia/v3/internal/dw$a$a;

    invoke-virtual {v1, v9}, Lcom/google/ads/interactivemedia/v3/internal/dw$a$a;->a(I)V

    return-void

    :cond_5
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->d:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c()Z

    move-result v1

    if-nez v1, :cond_6

    return-void

    :cond_6
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->d:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/fo;->d()I

    move-result v11

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v11}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_7

    iput-boolean v4, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->k:Z

    return-void

    :cond_7
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/fn$a;

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->e:Landroid/util/SparseArray;

    iget v7, v1, Lcom/google/ads/interactivemedia/v3/internal/fn$a;->b:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/google/ads/interactivemedia/v3/internal/fn$b;

    iget-boolean v6, v7, Lcom/google/ads/interactivemedia/v3/internal/fn$b;->e:Z

    if-eqz v6, :cond_9

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->d:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/fo;->a()I

    move-result v6

    if-ge v6, v5, :cond_8

    return-void

    :cond_8
    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->d:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    :cond_9
    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->d:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/fo;->a()I

    move-result v5

    iget v6, v7, Lcom/google/ads/interactivemedia/v3/internal/fn$b;->g:I

    if-ge v5, v6, :cond_a

    return-void

    :cond_a
    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->d:Lcom/google/ads/interactivemedia/v3/internal/fo;

    iget v6, v7, Lcom/google/ads/interactivemedia/v3/internal/fn$b;->g:I

    invoke-virtual {v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result v10

    iget-boolean v5, v7, Lcom/google/ads/interactivemedia/v3/internal/fn$b;->f:Z

    if-nez v5, :cond_e

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->d:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/fo;->a()I

    move-result v5

    if-ge v5, v2, :cond_b

    return-void

    :cond_b
    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->d:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->d:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/fo;->a()I

    move-result v6

    if-ge v6, v2, :cond_c

    return-void

    :cond_c
    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->d:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b()Z

    move-result v6

    move v12, v5

    move v14, v6

    const/4 v13, 0x1

    goto :goto_1

    :cond_d
    move v12, v5

    goto :goto_0

    :cond_e
    const/4 v12, 0x0

    :goto_0
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    iget v5, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->i:I

    if-ne v5, v3, :cond_f

    const/4 v15, 0x1

    goto :goto_2

    :cond_f
    const/4 v15, 0x0

    :goto_2
    if-eqz v15, :cond_11

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->d:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c()Z

    move-result v3

    if-nez v3, :cond_10

    return-void

    :cond_10
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->d:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/fo;->d()I

    move-result v3

    move/from16 v16, v3

    goto :goto_3

    :cond_11
    const/16 v16, 0x0

    :goto_3
    iget v3, v7, Lcom/google/ads/interactivemedia/v3/internal/fn$b;->h:I

    if-nez v3, :cond_15

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->d:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/fo;->a()I

    move-result v2

    iget v3, v7, Lcom/google/ads/interactivemedia/v3/internal/fn$b;->i:I

    if-ge v2, v3, :cond_12

    return-void

    :cond_12
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->d:Lcom/google/ads/interactivemedia/v3/internal/fo;

    iget v3, v7, Lcom/google/ads/interactivemedia/v3/internal/fn$b;->i:I

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result v2

    iget-boolean v1, v1, Lcom/google/ads/interactivemedia/v3/internal/fn$a;->c:Z

    if-eqz v1, :cond_14

    if-nez v12, :cond_14

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->d:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c()Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->d:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/fo;->e()I

    move-result v1

    move/from16 v18, v1

    move/from16 v17, v2

    goto :goto_5

    :cond_14
    move/from16 v17, v2

    goto :goto_4

    :cond_15
    iget v3, v7, Lcom/google/ads/interactivemedia/v3/internal/fn$b;->h:I

    if-ne v3, v2, :cond_19

    iget-boolean v2, v7, Lcom/google/ads/interactivemedia/v3/internal/fn$b;->j:Z

    if-nez v2, :cond_19

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->d:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c()Z

    move-result v2

    if-nez v2, :cond_16

    return-void

    :cond_16
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->d:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/fo;->e()I

    move-result v2

    iget-boolean v1, v1, Lcom/google/ads/interactivemedia/v3/internal/fn$a;->c:Z

    if-eqz v1, :cond_18

    if-nez v12, :cond_18

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->d:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c()Z

    move-result v1

    if-nez v1, :cond_17

    return-void

    :cond_17
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->d:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/fo;->e()I

    move-result v1

    move/from16 v20, v1

    move/from16 v19, v2

    const/16 v17, 0x0

    const/16 v18, 0x0

    goto :goto_7

    :cond_18
    move/from16 v19, v2

    const/16 v17, 0x0

    const/16 v18, 0x0

    goto :goto_6

    :cond_19
    const/16 v17, 0x0

    :goto_4
    const/16 v18, 0x0

    :goto_5
    const/16 v19, 0x0

    :goto_6
    const/16 v20, 0x0

    :goto_7
    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->n:Lcom/google/ads/interactivemedia/v3/internal/dw$a$a;

    invoke-virtual/range {v6 .. v20}, Lcom/google/ads/interactivemedia/v3/internal/dw$a$a;->a(Lcom/google/ads/interactivemedia/v3/internal/fn$b;IIIIZZZZIIIII)V

    iput-boolean v4, v0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->k:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->c:Z

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->k:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->o:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dw$a;->n:Lcom/google/ads/interactivemedia/v3/internal/dw$a$a;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/dw$a$a;->a()V

    return-void
.end method
