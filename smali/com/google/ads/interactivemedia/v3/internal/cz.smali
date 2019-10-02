.class public Lcom/google/ads/interactivemedia/v3/internal/cz;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/cc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/internal/cz$a;
    }
.end annotation


# static fields
.field private static final a:I

.field private static final b:[B


# instance fields
.field private final c:I

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/dd;

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/ads/interactivemedia/v3/internal/cz$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/ads/interactivemedia/v3/internal/fp;

.field private final g:Lcom/google/ads/interactivemedia/v3/internal/fp;

.field private final h:Lcom/google/ads/interactivemedia/v3/internal/fp;

.field private final i:Lcom/google/ads/interactivemedia/v3/internal/fp;

.field private final j:[B

.field private final k:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/ads/interactivemedia/v3/internal/cv$a;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:I

.field private n:J

.field private o:I

.field private p:Lcom/google/ads/interactivemedia/v3/internal/fp;

.field private q:J

.field private r:Lcom/google/ads/interactivemedia/v3/internal/cz$a;

.field private s:I

.field private t:I

.field private u:I

.field private v:Lcom/google/ads/interactivemedia/v3/internal/ce;

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "seig"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ft;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->a:I

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->b:[B

    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/cz;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/cz;-><init>(ILcom/google/ads/interactivemedia/v3/internal/dd;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/ads/interactivemedia/v3/internal/dd;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->d:Lcom/google/ads/interactivemedia/v3/internal/dd;

    const/4 v0, 0x4

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p1, p2

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->c:I

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/fp;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->i:Lcom/google/ads/interactivemedia/v3/internal/fp;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/fp;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/fn;->a:[B

    invoke-direct {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;-><init>([B)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->f:Lcom/google/ads/interactivemedia/v3/internal/fp;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->g:Lcom/google/ads/interactivemedia/v3/internal/fp;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/fp;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->h:Lcom/google/ads/interactivemedia/v3/internal/fp;

    new-array p1, p2, [B

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->j:[B

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->k:Ljava/util/Stack;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->e:Landroid/util/SparseArray;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a()V

    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/internal/cz$a;)I
    .locals 6

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->a:Lcom/google/ads/interactivemedia/v3/internal/df;

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/df;->l:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/df;->a:Lcom/google/ads/interactivemedia/v3/internal/cx;

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/cx;->a:I

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/df;->n:Lcom/google/ads/interactivemedia/v3/internal/de;

    if-eqz v3, :cond_0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/df;->n:Lcom/google/ads/interactivemedia/v3/internal/de;

    goto :goto_0

    :cond_0
    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->c:Lcom/google/ads/interactivemedia/v3/internal/dd;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/dd;->m:[Lcom/google/ads/interactivemedia/v3/internal/de;

    aget-object v2, v3, v2

    :goto_0
    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/de;->b:I

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/df;->j:[Z

    iget v3, p1, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->e:I

    aget-boolean v0, v0, v3

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->h:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    const/16 v5, 0x80

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    or-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->h:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->b:Lcom/google/ads/interactivemedia/v3/internal/ck;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->h:Lcom/google/ads/interactivemedia/v3/internal/fp;

    const/4 v4, 0x1

    invoke-interface {p1, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;I)V

    invoke-interface {p1, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;I)V

    if-nez v0, :cond_2

    add-int/2addr v2, v4

    return v2

    :cond_2
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->g()I

    move-result v0

    const/4 v3, -0x2

    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    mul-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, 0x2

    invoke-interface {p1, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;I)V

    add-int/2addr v2, v4

    add-int/2addr v2, v0

    return v2
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/fp;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/fp;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/ads/interactivemedia/v3/internal/cx;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/cx;

    invoke-direct {v4, v1, v2, v3, p0}, Lcom/google/ads/interactivemedia/v3/internal/cx;-><init>(IIII)V

    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/List;)Lcom/google/ads/interactivemedia/v3/internal/bu$a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/cv$b;",
            ">;)",
            "Lcom/google/ads/interactivemedia/v3/internal/bu$a;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/cv$b;

    iget v4, v3, Lcom/google/ads/interactivemedia/v3/internal/cv$b;->aO:I

    sget v5, Lcom/google/ads/interactivemedia/v3/internal/cv;->U:I

    if-ne v4, v5, :cond_2

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/bu$a;

    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/bu$a;-><init>()V

    :cond_0
    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/cv$b;->aP:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/db;->a([B)Ljava/util/UUID;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v3, "FragmentedMp4Extractor"

    const-string v4, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/db;->a([B)Ljava/util/UUID;

    move-result-object v4

    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/bu$b;

    const-string v6, "video/mp4"

    invoke-direct {v5, v6, v3}, Lcom/google/ads/interactivemedia/v3/internal/bu$b;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v1, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/bu$a;->a(Ljava/util/UUID;Lcom/google/ads/interactivemedia/v3/internal/bu$b;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private static a(Landroid/util/SparseArray;)Lcom/google/ads/interactivemedia/v3/internal/cz$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/ads/interactivemedia/v3/internal/cz$a;",
            ">;)",
            "Lcom/google/ads/interactivemedia/v3/internal/cz$a;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/ads/interactivemedia/v3/internal/cz$a;

    iget v6, v5, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->e:I

    iget-object v7, v5, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->a:Lcom/google/ads/interactivemedia/v3/internal/df;

    iget v7, v7, Lcom/google/ads/interactivemedia/v3/internal/df;->d:I

    if-ne v6, v7, :cond_0

    goto :goto_1

    :cond_0
    iget-object v6, v5, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->a:Lcom/google/ads/interactivemedia/v3/internal/df;

    iget-wide v6, v6, Lcom/google/ads/interactivemedia/v3/internal/df;->b:J

    cmp-long v8, v6, v2

    if-gez v8, :cond_1

    move-object v1, v5

    move-wide v2, v6

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/fp;Landroid/util/SparseArray;I)Lcom/google/ads/interactivemedia/v3/internal/cz$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/fp;",
            "Landroid/util/SparseArray<",
            "Lcom/google/ads/interactivemedia/v3/internal/cz$a;",
            ">;I)",
            "Lcom/google/ads/interactivemedia/v3/internal/cz$a;"
        }
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/cv;->b(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v1

    and-int/lit8 p2, p2, 0x4

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/cz$a;

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    and-int/lit8 p2, v0, 0x1

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->u()J

    move-result-wide v1

    iget-object p2, p1, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->a:Lcom/google/ads/interactivemedia/v3/internal/df;

    iput-wide v1, p2, Lcom/google/ads/interactivemedia/v3/internal/df;->b:J

    iget-object p2, p1, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->a:Lcom/google/ads/interactivemedia/v3/internal/df;

    iput-wide v1, p2, Lcom/google/ads/interactivemedia/v3/internal/df;->c:J

    :cond_2
    iget-object p2, p1, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->d:Lcom/google/ads/interactivemedia/v3/internal/cx;

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    iget v1, p2, Lcom/google/ads/interactivemedia/v3/internal/cx;->a:I

    :goto_1
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v2

    goto :goto_2

    :cond_4
    iget v2, p2, Lcom/google/ads/interactivemedia/v3/internal/cx;->b:I

    :goto_2
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v3

    goto :goto_3

    :cond_5
    iget v3, p2, Lcom/google/ads/interactivemedia/v3/internal/cx;->c:I

    :goto_3
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result p0

    goto :goto_4

    :cond_6
    iget p0, p2, Lcom/google/ads/interactivemedia/v3/internal/cx;->d:I

    :goto_4
    iget-object p2, p1, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->a:Lcom/google/ads/interactivemedia/v3/internal/df;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/cx;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/ads/interactivemedia/v3/internal/cx;-><init>(IIII)V

    iput-object v0, p2, Lcom/google/ads/interactivemedia/v3/internal/df;->a:Lcom/google/ads/interactivemedia/v3/internal/cx;

    return-object p1
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->o:I

    return-void
.end method

.method private a(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bl;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->k:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->k:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/cv$a;

    iget-wide v0, v0, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->aP:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->k:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/cv$a;

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a(Lcom/google/ads/interactivemedia/v3/internal/cv$a;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a()V

    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/internal/cv$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bl;
        }
    .end annotation

    iget v0, p1, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->aO:I

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/cv;->B:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cz;->b(Lcom/google/ads/interactivemedia/v3/internal/cv$a;)V

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->aO:I

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/cv;->K:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cz;->c(Lcom/google/ads/interactivemedia/v3/internal/cv$a;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->k:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->k:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/cv$a;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->a(Lcom/google/ads/interactivemedia/v3/internal/cv$a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/cv$a;Landroid/util/SparseArray;I[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/cv$a;",
            "Landroid/util/SparseArray<",
            "Lcom/google/ads/interactivemedia/v3/internal/cz$a;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bl;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->aR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->aR:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/cv$a;

    iget v3, v2, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->aO:I

    sget v4, Lcom/google/ads/interactivemedia/v3/internal/cv;->L:I

    if-ne v3, v4, :cond_0

    invoke-static {v2, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/cz;->b(Lcom/google/ads/interactivemedia/v3/internal/cv$a;Landroid/util/SparseArray;I[B)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/internal/cv$b;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bl;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->k:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->k:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/cv$a;

    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->a(Lcom/google/ads/interactivemedia/v3/internal/cv$b;)V

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/google/ads/interactivemedia/v3/internal/cv$b;->aO:I

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/cv;->A:I

    if-ne v0, v1, :cond_1

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/cv$b;->aP:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-static {p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/cz;->b(Lcom/google/ads/interactivemedia/v3/internal/fp;J)Lcom/google/ads/interactivemedia/v3/internal/by;

    move-result-object p1

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->v:Lcom/google/ads/interactivemedia/v3/internal/ce;

    invoke-interface {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/ce;->a(Lcom/google/ads/interactivemedia/v3/internal/cj;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->w:Z

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/google/ads/interactivemedia/v3/internal/cv$b;->aO:I

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/cv;->aF:I

    if-ne v0, v1, :cond_2

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/cv$b;->aP:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;J)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/cz$a;JILcom/google/ads/interactivemedia/v3/internal/fp;)V
    .locals 37

    move-object/from16 v0, p0

    const/16 v1, 0x8

    move-object/from16 v2, p4

    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual/range {p4 .. p4}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v1

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/cv;->b(I)I

    move-result v1

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->c:Lcom/google/ads/interactivemedia/v3/internal/dd;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->a:Lcom/google/ads/interactivemedia/v3/internal/df;

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/df;->a:Lcom/google/ads/interactivemedia/v3/internal/cx;

    invoke-virtual/range {p4 .. p4}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v5

    and-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_0

    iget-wide v6, v0, Lcom/google/ads/interactivemedia/v3/internal/df;->b:J

    invoke-virtual/range {p4 .. p4}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, v0, Lcom/google/ads/interactivemedia/v3/internal/df;->b:J

    :cond_0
    and-int/lit8 v6, v1, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    iget v9, v4, Lcom/google/ads/interactivemedia/v3/internal/cx;->d:I

    if-eqz v6, :cond_2

    invoke-virtual/range {p4 .. p4}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v9

    :cond_2
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    :goto_1
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    :goto_2
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    :goto_3
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    iget-object v13, v3, Lcom/google/ads/interactivemedia/v3/internal/dd;->n:[J

    const-wide/16 v14, 0x0

    if-eqz v13, :cond_7

    iget-object v13, v3, Lcom/google/ads/interactivemedia/v3/internal/dd;->n:[J

    array-length v13, v13

    if-ne v13, v8, :cond_7

    iget-object v13, v3, Lcom/google/ads/interactivemedia/v3/internal/dd;->n:[J

    aget-wide v16, v13, v7

    cmp-long v13, v16, v14

    if-nez v13, :cond_7

    iget-object v13, v3, Lcom/google/ads/interactivemedia/v3/internal/dd;->o:[J

    aget-wide v14, v13, v7

    const-wide/16 v16, 0x3e8

    iget-wide v7, v3, Lcom/google/ads/interactivemedia/v3/internal/dd;->i:J

    move-wide/from16 v18, v7

    invoke-static/range {v14 .. v19}, Lcom/google/ads/interactivemedia/v3/internal/ft;->a(JJJ)J

    move-result-wide v14

    :cond_7
    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/df;->a(I)V

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/df;->e:[I

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/df;->f:[I

    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/internal/df;->g:[J

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/df;->h:[Z

    move-object/from16 v28, v13

    move-wide/from16 v26, v14

    iget-wide v13, v3, Lcom/google/ads/interactivemedia/v3/internal/dd;->i:J

    iget v3, v3, Lcom/google/ads/interactivemedia/v3/internal/dd;->h:I

    sget v15, Lcom/google/ads/interactivemedia/v3/internal/dd;->a:I

    if-ne v3, v15, :cond_8

    const/4 v15, 0x1

    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    :goto_5
    move-wide/from16 v29, p1

    const/4 v15, 0x0

    :goto_6
    if-ge v15, v5, :cond_10

    if-eqz v10, :cond_9

    invoke-virtual/range {p4 .. p4}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v16

    move/from16 v31, v5

    move/from16 v5, v16

    goto :goto_7

    :cond_9
    move/from16 v31, v5

    iget v5, v4, Lcom/google/ads/interactivemedia/v3/internal/cx;->b:I

    :goto_7
    if-eqz v11, :cond_a

    invoke-virtual/range {p4 .. p4}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v16

    move/from16 v32, v9

    goto :goto_8

    :cond_a
    move/from16 v32, v9

    iget v9, v4, Lcom/google/ads/interactivemedia/v3/internal/cx;->c:I

    move/from16 v16, v9

    :goto_8
    if-nez v15, :cond_b

    if-eqz v6, :cond_b

    move/from16 v9, v32

    goto :goto_9

    :cond_b
    if-eqz v12, :cond_c

    invoke-virtual/range {p4 .. p4}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v9

    goto :goto_9

    :cond_c
    iget v9, v4, Lcom/google/ads/interactivemedia/v3/internal/cx;->d:I

    :goto_9
    if-eqz v1, :cond_d

    move/from16 v33, v1

    invoke-virtual/range {p4 .. p4}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    move/from16 v34, v10

    move/from16 v35, v11

    int-to-long v10, v1

    div-long/2addr v10, v13

    long-to-int v1, v10

    aput v1, v8, v15

    const/4 v1, 0x0

    goto :goto_a

    :cond_d
    move/from16 v33, v1

    move/from16 v34, v10

    move/from16 v35, v11

    const/4 v1, 0x0

    aput v1, v8, v15

    :goto_a
    const-wide/16 v22, 0x3e8

    move-wide/from16 v20, v29

    move-wide/from16 v24, v13

    invoke-static/range {v20 .. v25}, Lcom/google/ads/interactivemedia/v3/internal/ft;->a(JJJ)J

    move-result-wide v10

    sub-long v10, v10, v26

    aput-wide v10, v28, v15

    aput v16, v7, v15

    shr-int/lit8 v9, v9, 0x10

    const/4 v10, 0x1

    and-int/2addr v9, v10

    if-nez v9, :cond_f

    if-eqz v3, :cond_e

    if-nez v15, :cond_f

    :cond_e
    const/4 v9, 0x1

    goto :goto_b

    :cond_f
    const/4 v9, 0x0

    :goto_b
    aput-boolean v9, v2, v15

    move-object/from16 v36, v2

    int-to-long v1, v5

    move-wide/from16 v10, v29

    add-long v29, v10, v1

    add-int/lit8 v15, v15, 0x1

    move/from16 v5, v31

    move/from16 v9, v32

    move/from16 v1, v33

    move/from16 v10, v34

    move/from16 v11, v35

    move-object/from16 v2, v36

    goto/16 :goto_6

    :cond_10
    move-wide/from16 v10, v29

    iput-wide v10, v0, Lcom/google/ads/interactivemedia/v3/internal/df;->o:J

    return-void
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/de;Lcom/google/ads/interactivemedia/v3/internal/fp;Lcom/google/ads/interactivemedia/v3/internal/df;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bl;
        }
    .end annotation

    iget p0, p0, Lcom/google/ads/interactivemedia/v3/internal/de;->b:I

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v1

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/cv;->b(I)I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v1

    iget v3, p2, Lcom/google/ads/interactivemedia/v3/internal/df;->d:I

    if-ne v1, v3, :cond_5

    const/4 v3, 0x0

    if-nez v0, :cond_2

    iget-object v0, p2, Lcom/google/ads/interactivemedia/v3/internal/df;->j:[Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result v6

    add-int/2addr v5, v6

    if-le v6, p0, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    aput-boolean v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-le v0, p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    mul-int v0, v0, v1

    add-int/lit8 v5, v0, 0x0

    iget-object p0, p2, Lcom/google/ads/interactivemedia/v3/internal/df;->j:[Z

    invoke-static {p0, v3, v1, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    :cond_4
    invoke-virtual {p2, v5}, Lcom/google/ads/interactivemedia/v3/internal/df;->b(I)V

    return-void

    :cond_5
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/bl;

    iget p1, p2, Lcom/google/ads/interactivemedia/v3/internal/df;->d:I

    const/16 p2, 0x29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Length mismatch: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/fp;ILcom/google/ads/interactivemedia/v3/internal/df;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bl;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result p1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/cv;->b(I)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_2

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v1

    iget v2, p2, Lcom/google/ads/interactivemedia/v3/internal/df;->d:I

    if-ne v1, v2, :cond_1

    iget-object v2, p2, Lcom/google/ads/interactivemedia/v3/internal/df;->j:[Z

    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->b()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/df;->b(I)V

    invoke-virtual {p2, p0}, Lcom/google/ads/interactivemedia/v3/internal/df;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;)V

    return-void

    :cond_1
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/bl;

    iget p1, p2, Lcom/google/ads/interactivemedia/v3/internal/df;->d:I

    const/16 p2, 0x29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Length mismatch: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/bl;

    const-string p1, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/fp;Lcom/google/ads/interactivemedia/v3/internal/df;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bl;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v1

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/cv;->b(I)I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v0

    if-ne v0, v3, :cond_2

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/cv;->a(I)I

    move-result v0

    iget-wide v1, p1, Lcom/google/ads/interactivemedia/v3/internal/df;->c:J

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->k()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->u()J

    move-result-wide v3

    :goto_0
    const/4 p0, 0x0

    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/google/ads/interactivemedia/v3/internal/df;->c:J

    return-void

    :cond_2
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/bl;

    const/16 p1, 0x28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unexpected saio entry count: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/fp;Lcom/google/ads/interactivemedia/v3/internal/df;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bl;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a([BII)V

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/cz;->b:[B

    invoke-static {p2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;ILcom/google/ads/interactivemedia/v3/internal/df;)V

    return-void
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/fp;Lcom/google/ads/interactivemedia/v3/internal/fp;Lcom/google/ads/interactivemedia/v3/internal/df;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bl;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v2

    sget v3, Lcom/google/ads/interactivemedia/v3/internal/cz;->a:I

    if-eq v2, v3, :cond_0

    return-void

    :cond_0
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/cv;->a(I)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result p0

    if-ne p0, v3, :cond_9

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result p0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v0

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/cz;->a:I

    if-eq v0, v1, :cond_2

    return-void

    :cond_2
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/cv;->a(I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v3, :cond_4

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->k()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long p0, v1, v4

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/bl;

    const-string p1, "Variable length decription in sgpd found (unsupported)"

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    if-lt p0, v0, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->k()J

    move-result-wide v1

    const-wide/16 v4, 0x1

    cmp-long p0, v1, v4

    if-nez p0, :cond_8

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result p0

    const/4 v0, 0x0

    if-ne p0, v3, :cond_6

    const/4 p0, 0x1

    goto :goto_1

    :cond_6
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result v1

    const/16 v2, 0x10

    new-array v2, v2, [B

    array-length v4, v2

    invoke-virtual {p1, v2, v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a([BII)V

    iput-boolean v3, p2, Lcom/google/ads/interactivemedia/v3/internal/df;->i:Z

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/de;

    invoke-direct {p1, p0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/de;-><init>(ZI[B)V

    iput-object p1, p2, Lcom/google/ads/interactivemedia/v3/internal/df;->n:Lcom/google/ads/interactivemedia/v3/internal/de;

    return-void

    :cond_8
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/bl;

    const-string p1, "Entry count in sgpd != 1 (unsupported)."

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/bl;

    const-string p1, "Entry count in sbgp != 1 (unsupported)."

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(I)Z
    .locals 1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->S:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->R:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->C:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->A:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->T:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->w:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->x:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->O:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->y:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->z:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->U:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->ac:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->ad:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->ah:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->ae:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->af:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->ag:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->Q:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->N:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->aF:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static b(Lcom/google/ads/interactivemedia/v3/internal/fp;)J
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/cv;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->k()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->u()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private static b(Lcom/google/ads/interactivemedia/v3/internal/fp;J)Lcom/google/ads/interactivemedia/v3/internal/by;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bl;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v3

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/cv;->a(I)I

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->k()J

    move-result-wide v11

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->k()J

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->k()J

    move-result-wide v7

    add-long v1, p1, v7

    :goto_0
    move-wide v13, v1

    move-wide v1, v5

    goto :goto_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->u()J

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->u()J

    move-result-wide v7

    add-long v1, p1, v7

    goto :goto_0

    :goto_1
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->g()I

    move-result v3

    new-array v15, v3, [I

    new-array v9, v3, [J

    new-array v10, v3, [J

    new-array v7, v3, [J

    const-wide/32 v16, 0xf4240

    move-wide v5, v1

    move-object v4, v7

    move-wide/from16 v7, v16

    move-wide/from16 v18, v1

    move-object v1, v9

    move-object v2, v10

    move-wide v9, v11

    invoke-static/range {v5 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/ft;->a(JJJ)J

    move-result-wide v5

    const/4 v7, 0x0

    move-wide/from16 v16, v13

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v7

    const/high16 v8, -0x80000000

    and-int/2addr v8, v7

    if-nez v8, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->k()J

    move-result-wide v8

    const v10, 0x7fffffff

    and-int/2addr v7, v10

    aput v7, v15, v13

    aput-wide v16, v1, v13

    aput-wide v5, v4, v13

    add-long v18, v18, v8

    const-wide/32 v7, 0xf4240

    move-wide/from16 v5, v18

    move-wide v9, v11

    invoke-static/range {v5 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/ft;->a(JJJ)J

    move-result-wide v5

    aget-wide v7, v4, v13

    sub-long v7, v5, v7

    aput-wide v7, v2, v13

    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    aget v8, v15, v13

    int-to-long v8, v8

    add-long v16, v16, v8

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/bl;

    const-string v1, "Unhandled indirect reference"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/by;

    invoke-direct {v0, v15, v1, v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/by;-><init>([I[J[J[J)V

    return-object v0
.end method

.method private b(Lcom/google/ads/interactivemedia/v3/internal/cv$a;)V
    .locals 11

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->d:Lcom/google/ads/interactivemedia/v3/internal/dd;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Unexpected moov box."

    invoke-static {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/fe;->b(ZLjava/lang/Object;)V

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->aQ:Ljava/util/List;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a(Ljava/util/List;)Lcom/google/ads/interactivemedia/v3/internal/bu$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->v:Lcom/google/ads/interactivemedia/v3/internal/ce;

    invoke-interface {v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/ce;->a(Lcom/google/ads/interactivemedia/v3/internal/bu;)V

    :cond_1
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->M:I

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->e(I)Lcom/google/ads/interactivemedia/v3/internal/cv$a;

    move-result-object v0

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    const-wide/16 v4, -0x1

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->aQ:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move-wide v7, v4

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_4

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->aQ:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/ads/interactivemedia/v3/internal/cv$b;

    iget v9, v5, Lcom/google/ads/interactivemedia/v3/internal/cv$b;->aO:I

    sget v10, Lcom/google/ads/interactivemedia/v3/internal/cv;->y:I

    if-ne v9, v10, :cond_2

    iget-object v5, v5, Lcom/google/ads/interactivemedia/v3/internal/cv$b;->aP:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;)Landroid/util/Pair;

    move-result-object v5

    iget-object v9, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/google/ads/interactivemedia/v3/internal/cx;

    invoke-virtual {v3, v9, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget v9, v5, Lcom/google/ads/interactivemedia/v3/internal/cv$b;->aO:I

    sget v10, Lcom/google/ads/interactivemedia/v3/internal/cv;->N:I

    if-ne v9, v10, :cond_3

    iget-object v5, v5, Lcom/google/ads/interactivemedia/v3/internal/cv$b;->aP:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/internal/cz;->b(Lcom/google/ads/interactivemedia/v3/internal/fp;)J

    move-result-wide v7

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v4, p1, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->aR:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_6

    iget-object v6, p1, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->aR:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/ads/interactivemedia/v3/internal/cv$a;

    iget v9, v6, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->aO:I

    sget v10, Lcom/google/ads/interactivemedia/v3/internal/cv;->D:I

    if-ne v9, v10, :cond_5

    sget v9, Lcom/google/ads/interactivemedia/v3/internal/cv;->C:I

    invoke-virtual {p1, v9}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->d(I)Lcom/google/ads/interactivemedia/v3/internal/cv$b;

    move-result-object v9

    invoke-static {v6, v9, v7, v8, v2}, Lcom/google/ads/interactivemedia/v3/internal/cw;->a(Lcom/google/ads/interactivemedia/v3/internal/cv$a;Lcom/google/ads/interactivemedia/v3/internal/cv$b;JZ)Lcom/google/ads/interactivemedia/v3/internal/dd;

    move-result-object v6

    if-eqz v6, :cond_5

    iget v9, v6, Lcom/google/ads/interactivemedia/v3/internal/dd;->g:I

    invoke-virtual {v0, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p1

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->e:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_8

    const/4 v1, 0x0

    :goto_4
    if-ge v1, p1, :cond_7

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/ads/interactivemedia/v3/internal/dd;

    iget v5, v5, Lcom/google/ads/interactivemedia/v3/internal/dd;->g:I

    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/cz$a;

    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->v:Lcom/google/ads/interactivemedia/v3/internal/ce;

    invoke-interface {v7, v1}, Lcom/google/ads/interactivemedia/v3/internal/ce;->d(I)Lcom/google/ads/interactivemedia/v3/internal/ck;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/ads/interactivemedia/v3/internal/cz$a;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ck;)V

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->v:Lcom/google/ads/interactivemedia/v3/internal/ce;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/internal/ce;->f()V

    goto :goto_6

    :cond_8
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->e:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ne v4, p1, :cond_9

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :goto_5
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/fe;->b(Z)V

    :goto_6
    if-ge v2, p1, :cond_a

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/dd;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->e:Landroid/util/SparseArray;

    iget v5, v1, Lcom/google/ads/interactivemedia/v3/internal/dd;->g:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/ads/interactivemedia/v3/internal/cz$a;

    iget v5, v1, Lcom/google/ads/interactivemedia/v3/internal/dd;->g:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/ads/interactivemedia/v3/internal/cx;

    invoke-virtual {v4, v1, v5}, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->a(Lcom/google/ads/interactivemedia/v3/internal/dd;Lcom/google/ads/interactivemedia/v3/internal/cx;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_a
    return-void
.end method

.method private static b(Lcom/google/ads/interactivemedia/v3/internal/cv$a;Landroid/util/SparseArray;I[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/cv$a;",
            "Landroid/util/SparseArray<",
            "Lcom/google/ads/interactivemedia/v3/internal/cz$a;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bl;
        }
    .end annotation

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->z:I

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->f(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->x:I

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->d(I)Lcom/google/ads/interactivemedia/v3/internal/cv$b;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/cv$b;->aP:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-static {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;Landroid/util/SparseArray;I)Lcom/google/ads/interactivemedia/v3/internal/cz$a;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->a:Lcom/google/ads/interactivemedia/v3/internal/df;

    iget-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/df;->o:J

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->a()V

    sget v3, Lcom/google/ads/interactivemedia/v3/internal/cv;->w:I

    invoke-virtual {p0, v3}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->d(I)Lcom/google/ads/interactivemedia/v3/internal/cv$b;

    move-result-object v3

    if-eqz v3, :cond_1

    and-int/lit8 v3, p2, 0x2

    if-nez v3, :cond_1

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/cv;->w:I

    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->d(I)Lcom/google/ads/interactivemedia/v3/internal/cv$b;

    move-result-object v1

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/cv$b;->aP:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/cz;->c(Lcom/google/ads/interactivemedia/v3/internal/fp;)J

    move-result-wide v1

    :cond_1
    sget v3, Lcom/google/ads/interactivemedia/v3/internal/cv;->z:I

    invoke-virtual {p0, v3}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->d(I)Lcom/google/ads/interactivemedia/v3/internal/cv$b;

    move-result-object v3

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/cv$b;->aP:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a(Lcom/google/ads/interactivemedia/v3/internal/cz$a;JILcom/google/ads/interactivemedia/v3/internal/fp;)V

    sget p2, Lcom/google/ads/interactivemedia/v3/internal/cv;->ac:I

    invoke-virtual {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->d(I)Lcom/google/ads/interactivemedia/v3/internal/cv$b;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->c:Lcom/google/ads/interactivemedia/v3/internal/dd;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/dd;->m:[Lcom/google/ads/interactivemedia/v3/internal/de;

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/df;->a:Lcom/google/ads/interactivemedia/v3/internal/cx;

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/cx;->a:I

    aget-object p1, p1, v1

    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/cv$b;->aP:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-static {p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a(Lcom/google/ads/interactivemedia/v3/internal/de;Lcom/google/ads/interactivemedia/v3/internal/fp;Lcom/google/ads/interactivemedia/v3/internal/df;)V

    :cond_2
    sget p1, Lcom/google/ads/interactivemedia/v3/internal/cv;->ad:I

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->d(I)Lcom/google/ads/interactivemedia/v3/internal/cv$b;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/cv$b;->aP:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;Lcom/google/ads/interactivemedia/v3/internal/df;)V

    :cond_3
    sget p1, Lcom/google/ads/interactivemedia/v3/internal/cv;->ah:I

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->d(I)Lcom/google/ads/interactivemedia/v3/internal/cv$b;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/cv$b;->aP:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/cz;->b(Lcom/google/ads/interactivemedia/v3/internal/fp;Lcom/google/ads/interactivemedia/v3/internal/df;)V

    :cond_4
    sget p1, Lcom/google/ads/interactivemedia/v3/internal/cv;->ae:I

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->d(I)Lcom/google/ads/interactivemedia/v3/internal/cv$b;

    move-result-object p1

    sget p2, Lcom/google/ads/interactivemedia/v3/internal/cv;->af:I

    invoke-virtual {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->d(I)Lcom/google/ads/interactivemedia/v3/internal/cv$b;

    move-result-object p2

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/cv$b;->aP:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/cv$b;->aP:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-static {p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;Lcom/google/ads/interactivemedia/v3/internal/fp;Lcom/google/ads/interactivemedia/v3/internal/df;)V

    :cond_5
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->aQ:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_7

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->aQ:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/cv$b;

    iget v2, v1, Lcom/google/ads/interactivemedia/v3/internal/cv$b;->aO:I

    sget v3, Lcom/google/ads/interactivemedia/v3/internal/cv;->ag:I

    if-ne v2, v3, :cond_6

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/cv$b;->aP:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-static {v1, v0, p3}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;Lcom/google/ads/interactivemedia/v3/internal/df;[B)V

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_7
    return-void

    :cond_8
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/bl;

    const-string p1, "Trun count in traf != 1 (unsupported)."

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Lcom/google/ads/interactivemedia/v3/internal/fp;Lcom/google/ads/interactivemedia/v3/internal/df;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bl;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;ILcom/google/ads/interactivemedia/v3/internal/df;)V

    return-void
.end method

.method private static b(I)Z
    .locals 1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->B:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->D:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->E:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->F:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->G:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->K:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->L:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->M:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->P:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private b(Lcom/google/ads/interactivemedia/v3/internal/cd;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->o:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->i:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    invoke-interface {p1, v0, v2, v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/cd;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->o:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->i:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->i:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->k()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->n:J

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->i:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->m:I

    :cond_1
    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->n:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->i:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    invoke-interface {p1, v0, v1, v1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b([BII)V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->o:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->o:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->i:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->u()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->n:J

    :cond_2
    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->n:J

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->o:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_c

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c()J

    move-result-wide v4

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->o:I

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->m:I

    sget v6, Lcom/google/ads/interactivemedia/v3/internal/cv;->K:I

    if-ne v0, v6, :cond_3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_3

    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->e:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/ads/interactivemedia/v3/internal/cz$a;

    iget-object v7, v7, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->a:Lcom/google/ads/interactivemedia/v3/internal/df;

    iput-wide v4, v7, Lcom/google/ads/interactivemedia/v3/internal/df;->c:J

    iput-wide v4, v7, Lcom/google/ads/interactivemedia/v3/internal/df;->b:J

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->m:I

    sget v6, Lcom/google/ads/interactivemedia/v3/internal/cv;->h:I

    const/4 v7, 0x0

    if-ne v0, v6, :cond_5

    iput-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->r:Lcom/google/ads/interactivemedia/v3/internal/cz$a;

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->n:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->q:J

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->w:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->v:Lcom/google/ads/interactivemedia/v3/internal/ce;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/cj;->f:Lcom/google/ads/interactivemedia/v3/internal/cj;

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ce;->a(Lcom/google/ads/interactivemedia/v3/internal/cj;)V

    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->w:Z

    :cond_4
    const/4 p1, 0x2

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:I

    return v3

    :cond_5
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->m:I

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/cz;->b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->n:J

    add-long/2addr v0, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v0, v4

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->k:Ljava/util/Stack;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/cv$a;

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->m:I

    invoke-direct {v2, v4, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;-><init>(IJ)V

    invoke-virtual {p1, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->n:J

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->o:I

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-nez p1, :cond_6

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a(J)V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a()V

    goto :goto_1

    :cond_7
    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->m:I

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a(I)Z

    move-result p1

    const-wide/32 v4, 0x7fffffff

    if-eqz p1, :cond_a

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->o:I

    if-ne p1, v1, :cond_9

    iget-wide v6, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->n:J

    cmp-long p1, v6, v4

    if-gtz p1, :cond_8

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->n:J

    long-to-int v0, v4

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->p:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->i:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->p:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:I

    goto :goto_1

    :cond_8
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/bl;

    const-string v0, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/bl;

    const-string v0, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->n:J

    cmp-long p1, v0, v4

    if-gtz p1, :cond_b

    iput-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->p:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:I

    :goto_1
    return v3

    :cond_b
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/bl;

    const-string v0, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/bl;

    const-string v0, "Atom size less than header length (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static c(Lcom/google/ads/interactivemedia/v3/internal/fp;)J
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/cv;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->u()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->k()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private c(Lcom/google/ads/interactivemedia/v3/internal/cd;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->n:J

    long-to-int v0, v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->o:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->p:Lcom/google/ads/interactivemedia/v3/internal/fp;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->p:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    const/16 v2, 0x8

    invoke-interface {p1, v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b([BII)V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/cv$b;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->m:I

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->p:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/cv$b;-><init>(ILcom/google/ads/interactivemedia/v3/internal/fp;)V

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a(Lcom/google/ads/interactivemedia/v3/internal/cv$b;J)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b(I)V

    :goto_0
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a(J)V

    return-void
.end method

.method private c(Lcom/google/ads/interactivemedia/v3/internal/cv$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bl;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->e:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->c:I

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->j:[B

    invoke-static {p1, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a(Lcom/google/ads/interactivemedia/v3/internal/cv$a;Landroid/util/SparseArray;I[B)V

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->aQ:Ljava/util/List;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a(Ljava/util/List;)Lcom/google/ads/interactivemedia/v3/internal/bu$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->v:Lcom/google/ads/interactivemedia/v3/internal/ce;

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ce;->a(Lcom/google/ads/interactivemedia/v3/internal/bu;)V

    :cond_0
    return-void
.end method

.method private d(Lcom/google/ads/interactivemedia/v3/internal/cd;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->e:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/ads/interactivemedia/v3/internal/cz$a;

    iget-object v5, v5, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->a:Lcom/google/ads/interactivemedia/v3/internal/df;

    iget-boolean v6, v5, Lcom/google/ads/interactivemedia/v3/internal/df;->m:Z

    if-eqz v6, :cond_0

    iget-wide v6, v5, Lcom/google/ads/interactivemedia/v3/internal/df;->c:J

    cmp-long v6, v6, v2

    if-gez v6, :cond_0

    iget-wide v1, v5, Lcom/google/ads/interactivemedia/v3/internal/df;->c:J

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->e:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/cz$a;

    move-wide v8, v1

    move-object v1, v3

    move-wide v2, v8

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 p1, 0x3

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:I

    return-void

    :cond_2
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    if-ltz v0, :cond_3

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b(I)V

    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->a:Lcom/google/ads/interactivemedia/v3/internal/df;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/df;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;)V

    return-void

    :cond_3
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/bl;

    const-string v0, "Offset to encryption data was negative."

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private e(Lcom/google/ads/interactivemedia/v3/internal/cd;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:I

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->r:Lcom/google/ads/interactivemedia/v3/internal/cz$a;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->e:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a(Landroid/util/SparseArray;)Lcom/google/ads/interactivemedia/v3/internal/cz$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->r:Lcom/google/ads/interactivemedia/v3/internal/cz$a;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->r:Lcom/google/ads/interactivemedia/v3/internal/cz$a;

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->q:J

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c()J

    move-result-wide v4

    sub-long/2addr v0, v4

    long-to-int v0, v0

    if-ltz v0, :cond_0

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b(I)V

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a()V

    return v3

    :cond_0
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/bl;

    const-string v0, "Offset to end of mdat was negative."

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->r:Lcom/google/ads/interactivemedia/v3/internal/cz$a;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->a:Lcom/google/ads/interactivemedia/v3/internal/df;

    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/df;->b:J

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v0, v4

    if-gez v0, :cond_2

    const-string v0, "FragmentedMp4Extractor"

    const-string v4, "Ignoring negative offset to sample data."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_2
    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b(I)V

    :cond_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->r:Lcom/google/ads/interactivemedia/v3/internal/cz$a;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->a:Lcom/google/ads/interactivemedia/v3/internal/df;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/df;->e:[I

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->r:Lcom/google/ads/interactivemedia/v3/internal/cz$a;

    iget v4, v4, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->e:I

    aget v0, v0, v4

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->s:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->r:Lcom/google/ads/interactivemedia/v3/internal/cz$a;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->a:Lcom/google/ads/interactivemedia/v3/internal/df;

    iget-boolean v0, v0, Lcom/google/ads/interactivemedia/v3/internal/df;->i:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->r:Lcom/google/ads/interactivemedia/v3/internal/cz$a;

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a(Lcom/google/ads/interactivemedia/v3/internal/cz$a;)I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->t:I

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->s:I

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->t:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->s:I

    goto :goto_0

    :cond_4
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->t:I

    :goto_0
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:I

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->u:I

    :cond_5
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->r:Lcom/google/ads/interactivemedia/v3/internal/cz$a;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->a:Lcom/google/ads/interactivemedia/v3/internal/df;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->r:Lcom/google/ads/interactivemedia/v3/internal/cz$a;

    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->c:Lcom/google/ads/interactivemedia/v3/internal/dd;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->r:Lcom/google/ads/interactivemedia/v3/internal/cz$a;

    iget-object v6, v5, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->b:Lcom/google/ads/interactivemedia/v3/internal/ck;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->r:Lcom/google/ads/interactivemedia/v3/internal/cz$a;

    iget v5, v5, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->e:I

    iget v7, v4, Lcom/google/ads/interactivemedia/v3/internal/dd;->p:I

    const/4 v8, -0x1

    const/4 v9, 0x2

    const/4 v13, 0x1

    if-eq v7, v8, :cond_7

    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->g:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v7, v7, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    aput-byte v3, v7, v3

    aput-byte v3, v7, v13

    aput-byte v3, v7, v9

    iget v7, v4, Lcom/google/ads/interactivemedia/v3/internal/dd;->p:I

    iget v8, v4, Lcom/google/ads/interactivemedia/v3/internal/dd;->p:I

    rsub-int/lit8 v8, v8, 0x4

    :goto_1
    iget v10, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->t:I

    iget v11, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->s:I

    if-ge v10, v11, :cond_8

    iget v10, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->u:I

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->g:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v10, v10, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    invoke-interface {p1, v10, v8, v7}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b([BII)V

    iget-object v10, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->g:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v10, v3}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    iget-object v10, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->g:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v10

    iput v10, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->u:I

    iget-object v10, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->f:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v10, v3}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    iget-object v10, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->f:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-interface {v6, v10, v2}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;I)V

    iget v10, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->t:I

    add-int/2addr v10, v2

    iput v10, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->t:I

    iget v10, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->s:I

    add-int/2addr v10, v8

    iput v10, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->s:I

    goto :goto_1

    :cond_6
    iget v10, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->u:I

    invoke-interface {v6, p1, v10, v3}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;IZ)I

    move-result v10

    iget v11, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->t:I

    add-int/2addr v11, v10

    iput v11, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->t:I

    iget v11, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->u:I

    sub-int/2addr v11, v10

    iput v11, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->u:I

    goto :goto_1

    :cond_7
    :goto_2
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->t:I

    iget v7, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->s:I

    if-ge v2, v7, :cond_8

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->s:I

    iget v7, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->t:I

    sub-int/2addr v2, v7

    invoke-interface {v6, p1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;IZ)I

    move-result v2

    iget v7, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->t:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->t:I

    goto :goto_2

    :cond_8
    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/df;->c(I)J

    move-result-wide v7

    const-wide/16 v10, 0x3e8

    mul-long v7, v7, v10

    iget-boolean p1, v0, Lcom/google/ads/interactivemedia/v3/internal/df;->i:Z

    if-eqz p1, :cond_9

    const/4 v3, 0x2

    :cond_9
    iget-object p1, v0, Lcom/google/ads/interactivemedia/v3/internal/df;->h:[Z

    aget-boolean p1, p1, v5

    or-int v9, v3, p1

    iget-object p1, v0, Lcom/google/ads/interactivemedia/v3/internal/df;->a:Lcom/google/ads/interactivemedia/v3/internal/cx;

    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/cx;->a:I

    iget-boolean v2, v0, Lcom/google/ads/interactivemedia/v3/internal/df;->i:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/df;->n:Lcom/google/ads/interactivemedia/v3/internal/de;

    if-eqz v2, :cond_a

    iget-object p1, v0, Lcom/google/ads/interactivemedia/v3/internal/df;->n:Lcom/google/ads/interactivemedia/v3/internal/de;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/de;->c:[B

    goto :goto_3

    :cond_a
    iget-object v2, v4, Lcom/google/ads/interactivemedia/v3/internal/dd;->m:[Lcom/google/ads/interactivemedia/v3/internal/de;

    aget-object p1, v2, p1

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/de;->c:[B

    :goto_3
    move-object v12, p1

    goto :goto_4

    :cond_b
    move-object v12, v3

    :goto_4
    iget v10, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->s:I

    const/4 v11, 0x0

    invoke-interface/range {v6 .. v12}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(JIII[B)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->r:Lcom/google/ads/interactivemedia/v3/internal/cz$a;

    iget v2, p1, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->e:I

    add-int/2addr v2, v13

    iput v2, p1, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->e:I

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->r:Lcom/google/ads/interactivemedia/v3/internal/cz$a;

    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->e:I

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/df;->d:I

    if-ne p1, v0, :cond_c

    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->r:Lcom/google/ads/interactivemedia/v3/internal/cz$a;

    :cond_c
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:I

    return v13
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/cd;Lcom/google/ads/interactivemedia/v3/internal/ch;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    :cond_0
    :goto_0
    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:I

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cz;->e(Lcom/google/ads/interactivemedia/v3/internal/cd;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cz;->d(Lcom/google/ads/interactivemedia/v3/internal/cd;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cz;->c(Lcom/google/ads/interactivemedia/v3/internal/cd;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cz;->b(Lcom/google/ads/interactivemedia/v3/internal/cd;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, -0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ce;)V
    .locals 3

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->v:Lcom/google/ads/interactivemedia/v3/internal/ce;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->d:Lcom/google/ads/interactivemedia/v3/internal/dd;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/cz$a;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/ce;->d(I)Lcom/google/ads/interactivemedia/v3/internal/ck;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cz$a;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ck;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->d:Lcom/google/ads/interactivemedia/v3/internal/dd;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/cx;

    invoke-direct {v2, v1, v1, v1, v1}, Lcom/google/ads/interactivemedia/v3/internal/cx;-><init>(IIII)V

    invoke-virtual {v0, p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->a(Lcom/google/ads/interactivemedia/v3/internal/dd;Lcom/google/ads/interactivemedia/v3/internal/cx;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->e:Landroid/util/SparseArray;

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->v:Lcom/google/ads/interactivemedia/v3/internal/ce;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/ce;->f()V

    :cond_0
    return-void
.end method

.method protected a(Lcom/google/ads/interactivemedia/v3/internal/fp;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bl;
        }
    .end annotation

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/cd;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/dc;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;)Z

    move-result p1

    return p1
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/cz$a;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->k:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a()V

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method
