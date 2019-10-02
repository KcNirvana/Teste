.class public final Lcom/google/ads/interactivemedia/v3/internal/cf;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/bn;
.implements Lcom/google/ads/interactivemedia/v3/internal/bn$a;
.implements Lcom/google/ads/interactivemedia/v3/internal/ce;
.implements Lcom/google/ads/interactivemedia/v3/internal/fa$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/internal/cf$c;,
        Lcom/google/ads/interactivemedia/v3/internal/cf$b;,
        Lcom/google/ads/interactivemedia/v3/internal/cf$d;,
        Lcom/google/ads/interactivemedia/v3/internal/cf$e;,
        Lcom/google/ads/interactivemedia/v3/internal/cf$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/ads/interactivemedia/v3/internal/cc;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private A:J

.field private B:J

.field private C:Lcom/google/ads/interactivemedia/v3/internal/fa;

.field private D:Lcom/google/ads/interactivemedia/v3/internal/cf$b;

.field private E:Ljava/io/IOException;

.field private F:I

.field private G:J

.field private H:Z

.field private I:I

.field private J:I

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/cf$c;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/eq;

.field private final d:I

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/ads/interactivemedia/v3/internal/cf$d;",
            ">;"
        }
    .end annotation
.end field

.field private final f:I

.field private final g:Landroid/net/Uri;

.field private final h:Lcom/google/ads/interactivemedia/v3/internal/et;

.field private final i:Landroid/os/Handler;

.field private final j:Lcom/google/ads/interactivemedia/v3/internal/cf$a;

.field private final k:I

.field private volatile l:Z

.field private volatile m:Lcom/google/ads/interactivemedia/v3/internal/cj;

.field private volatile n:Lcom/google/ads/interactivemedia/v3/internal/bu;

.field private o:Z

.field private p:I

.field private q:[Lcom/google/ads/interactivemedia/v3/internal/bj;

.field private r:J

.field private s:[Z

.field private t:[Z

.field private u:[Z

.field private v:I

.field private w:J

.field private x:J

.field private y:J

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/cf;->a:Ljava/util/List;

    :try_start_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/cf;->a:Ljava/util/List;

    const-string v1, "com.google.ads.interactivemedia.v3.internal.en"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/ads/interactivemedia/v3/internal/cc;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/cf;->a:Ljava/util/List;

    const-string v1, "com.google.ads.interactivemedia.v3.internal.cz"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/ads/interactivemedia/v3/internal/cc;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/cf;->a:Ljava/util/List;

    const-string v1, "com.google.ads.interactivemedia.v3.internal.da"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/ads/interactivemedia/v3/internal/cc;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/cf;->a:Ljava/util/List;

    const-string v1, "com.google.ads.interactivemedia.v3.internal.cs"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/ads/interactivemedia/v3/internal/cc;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/cf;->a:Ljava/util/List;

    const-string v1, "com.google.ads.interactivemedia.v3.internal.dr"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/ads/interactivemedia/v3/internal/cc;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/cf;->a:Ljava/util/List;

    const-string v1, "com.google.ads.interactivemedia.v3.internal.ee"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/ads/interactivemedia/v3/internal/cc;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/cf;->a:Ljava/util/List;

    const-string v1, "com.google.ads.interactivemedia.v3.internal.cm"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/ads/interactivemedia/v3/internal/cc;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/cf;->a:Ljava/util/List;

    const-string v1, "com.google.ads.interactivemedia.v3.internal.di"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/ads/interactivemedia/v3/internal/cc;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/cf;->a:Ljava/util/List;

    const-string v1, "com.google.ads.interactivemedia.v3.internal.eb"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/ads/interactivemedia/v3/internal/cc;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/cf;->a:Ljava/util/List;

    const-string v1, "com.google.ads.interactivemedia.v3.internal.ef"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/ads/interactivemedia/v3/internal/cc;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/cf;->a:Ljava/util/List;

    const-string v1, "com.google.ads.interactivemedia.v3.exoplayer.ext.flac.FlacExtractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/ads/interactivemedia/v3/internal/cc;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method

.method public varargs constructor <init>(Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/internal/et;Lcom/google/ads/interactivemedia/v3/internal/eq;IILandroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/cf$a;I[Lcom/google/ads/interactivemedia/v3/internal/cc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->g:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->h:Lcom/google/ads/interactivemedia/v3/internal/et;

    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->j:Lcom/google/ads/interactivemedia/v3/internal/cf$a;

    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->i:Landroid/os/Handler;

    iput p8, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->k:I

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->c:Lcom/google/ads/interactivemedia/v3/internal/eq;

    iput p4, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->d:I

    iput p5, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->f:I

    if-eqz p9, :cond_0

    array-length p1, p9

    if-nez p1, :cond_1

    :cond_0
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/cf;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p9, p1, [Lcom/google/ads/interactivemedia/v3/internal/cc;

    const/4 p1, 0x0

    :goto_0
    array-length p2, p9

    if-ge p1, p2, :cond_1

    :try_start_0
    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/cf;->a:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/cc;

    aput-object p2, p9, p1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Unexpected error creating default extractor"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Unexpected error creating default extractor"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/cf$c;

    invoke-direct {p1, p9, p0}, Lcom/google/ads/interactivemedia/v3/internal/cf$c;-><init>([Lcom/google/ads/interactivemedia/v3/internal/cc;Lcom/google/ads/interactivemedia/v3/internal/ce;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->b:Lcom/google/ads/interactivemedia/v3/internal/cf$c;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->e:Landroid/util/SparseArray;

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->y:J

    return-void
.end method

.method public varargs constructor <init>(Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/internal/et;Lcom/google/ads/interactivemedia/v3/internal/eq;ILandroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/cf$a;I[Lcom/google/ads/interactivemedia/v3/internal/cc;)V
    .locals 10

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/ads/interactivemedia/v3/internal/cf;-><init>(Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/internal/et;Lcom/google/ads/interactivemedia/v3/internal/eq;IILandroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/cf$a;I[Lcom/google/ads/interactivemedia/v3/internal/cc;)V

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/cf;)Lcom/google/ads/interactivemedia/v3/internal/cf$c;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->b:Lcom/google/ads/interactivemedia/v3/internal/cf$c;

    return-object p0
.end method

.method private a(Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->j:Lcom/google/ads/interactivemedia/v3/internal/cf$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->i:Landroid/os/Handler;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/cf$2;

    invoke-direct {v1, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cf$2;-><init>(Lcom/google/ads/interactivemedia/v3/internal/cf;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/internal/cf;)I
    .locals 0

    iget p0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->k:I

    return p0
.end method

.method static synthetic c(Lcom/google/ads/interactivemedia/v3/internal/cf;)Lcom/google/ads/interactivemedia/v3/internal/cf$a;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->j:Lcom/google/ads/interactivemedia/v3/internal/cf$a;

    return-object p0
.end method

.method private c(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->y:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->H:Z

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->C:Lcom/google/ads/interactivemedia/v3/internal/fa;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fa;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->C:Lcom/google/ads/interactivemedia/v3/internal/fa;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fa;->b()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/cf;->j()V

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/cf;->g()V

    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/google/ads/interactivemedia/v3/internal/cf;)I
    .locals 2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->I:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->I:I

    return v0
.end method

.method private d(J)Lcom/google/ads/interactivemedia/v3/internal/cf$b;
    .locals 9

    new-instance v8, Lcom/google/ads/interactivemedia/v3/internal/cf$b;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->g:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->h:Lcom/google/ads/interactivemedia/v3/internal/et;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->b:Lcom/google/ads/interactivemedia/v3/internal/cf$c;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->c:Lcom/google/ads/interactivemedia/v3/internal/eq;

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->d:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->m:Lcom/google/ads/interactivemedia/v3/internal/cj;

    invoke-interface {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/cj;->b(J)J

    move-result-wide v6

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/cf$b;-><init>(Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/internal/et;Lcom/google/ads/interactivemedia/v3/internal/cf$c;Lcom/google/ads/interactivemedia/v3/internal/eq;IJ)V

    return-object v8
.end method

.method private e(J)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->u:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->u:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/cf$d;

    invoke-virtual {v1, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/cf$d;->a(J)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private f(J)J
    .locals 2

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    const-wide/16 v0, 0x1388

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private g()V
    .locals 9

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->H:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->C:Lcom/google/ads/interactivemedia/v3/internal/fa;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fa;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->E:Ljava/io/IOException;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/cf;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->D:Lcom/google/ads/interactivemedia/v3/internal/cf$b;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/fe;->b(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->G:J

    sub-long/2addr v5, v7

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->F:I

    int-to-long v7, v0

    invoke-direct {p0, v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/cf;->f(J)J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-ltz v0, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->E:Ljava/io/IOException;

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->o:Z

    if-nez v0, :cond_4

    :goto_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/cf$d;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/cf$d;->a()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/cf;->h()Lcom/google/ads/interactivemedia/v3/internal/cf$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->D:Lcom/google/ads/interactivemedia/v3/internal/cf$b;

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->m:Lcom/google/ads/interactivemedia/v3/internal/cj;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/cj;->a()Z

    move-result v0

    if-nez v0, :cond_6

    iget-wide v5, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->r:J

    cmp-long v0, v5, v1

    if-nez v0, :cond_6

    :goto_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/cf$d;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/cf$d;->a()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/cf;->h()Lcom/google/ads/interactivemedia/v3/internal/cf$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->D:Lcom/google/ads/interactivemedia/v3/internal/cf$b;

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->w:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->A:J

    iput-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->z:Z

    :cond_6
    :goto_3
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->I:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->J:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->C:Lcom/google/ads/interactivemedia/v3/internal/fa;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->D:Lcom/google/ads/interactivemedia/v3/internal/cf$b;

    invoke-virtual {v0, v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/fa;->a(Lcom/google/ads/interactivemedia/v3/internal/fa$c;Lcom/google/ads/interactivemedia/v3/internal/fa$a;)V

    :cond_7
    return-void

    :cond_8
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->B:J

    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->z:Z

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->o:Z

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/cf;->h()Lcom/google/ads/interactivemedia/v3/internal/cf$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->D:Lcom/google/ads/interactivemedia/v3/internal/cf$b;

    goto :goto_4

    :cond_9
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/cf;->k()Z

    move-result v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/fe;->b(Z)V

    iget-wide v5, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->r:J

    cmp-long v0, v5, v1

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_a

    iget-wide v5, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->y:J

    iget-wide v7, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->r:J

    cmp-long v0, v5, v7

    if-ltz v0, :cond_a

    iput-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->H:Z

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->y:J

    return-void

    :cond_a
    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->y:J

    invoke-direct {p0, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/cf;->d(J)Lcom/google/ads/interactivemedia/v3/internal/cf$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->D:Lcom/google/ads/interactivemedia/v3/internal/cf$b;

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->y:J

    :goto_4
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->I:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->J:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->C:Lcom/google/ads/interactivemedia/v3/internal/fa;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->D:Lcom/google/ads/interactivemedia/v3/internal/cf$b;

    invoke-virtual {v0, v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/fa;->a(Lcom/google/ads/interactivemedia/v3/internal/fa$c;Lcom/google/ads/interactivemedia/v3/internal/fa$a;)V

    return-void

    :cond_b
    :goto_5
    return-void
.end method

.method private h()Lcom/google/ads/interactivemedia/v3/internal/cf$b;
    .locals 9

    new-instance v8, Lcom/google/ads/interactivemedia/v3/internal/cf$b;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->g:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->h:Lcom/google/ads/interactivemedia/v3/internal/et;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->b:Lcom/google/ads/interactivemedia/v3/internal/cf$c;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->c:Lcom/google/ads/interactivemedia/v3/internal/eq;

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->d:I

    const-wide/16 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/cf$b;-><init>(Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/internal/et;Lcom/google/ads/interactivemedia/v3/internal/cf$c;Lcom/google/ads/interactivemedia/v3/internal/eq;IJ)V

    return-object v8
.end method

.method private i()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->e:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/cf$d;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/cf$d;->b()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private j()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->e:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/cf$d;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/cf$d;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->D:Lcom/google/ads/interactivemedia/v3/internal/cf$b;

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->E:Ljava/io/IOException;

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->F:I

    return-void
.end method

.method private k()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->y:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private l()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->E:Ljava/io/IOException;

    instance-of v0, v0, Lcom/google/ads/interactivemedia/v3/internal/cf$e;

    return v0
.end method


# virtual methods
.method public a(IJLcom/google/ads/interactivemedia/v3/internal/bk;Lcom/google/ads/interactivemedia/v3/internal/bm;)I
    .locals 2

    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->w:J

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->t:[Z

    aget-boolean p2, p2, p1

    const/4 p3, -0x2

    if-nez p2, :cond_7

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/cf;->k()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_2

    :cond_0
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->e:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/cf$d;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->s:[Z

    aget-boolean v0, v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/cf$d;->c()Lcom/google/ads/interactivemedia/v3/internal/bj;

    move-result-object p2

    iput-object p2, p4, Lcom/google/ads/interactivemedia/v3/internal/bk;->a:Lcom/google/ads/interactivemedia/v3/internal/bj;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->n:Lcom/google/ads/interactivemedia/v3/internal/bu;

    iput-object p2, p4, Lcom/google/ads/interactivemedia/v3/internal/bk;->b:Lcom/google/ads/interactivemedia/v3/internal/bu;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->s:[Z

    aput-boolean v1, p2, p1

    const/4 p1, -0x4

    return p1

    :cond_1
    invoke-virtual {p2, p5}, Lcom/google/ads/interactivemedia/v3/internal/cf$d;->a(Lcom/google/ads/interactivemedia/v3/internal/bm;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-wide p1, p5, Lcom/google/ads/interactivemedia/v3/internal/bm;->e:J

    iget-wide p3, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->x:J

    cmp-long p1, p1, p3

    if-gez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget p2, p5, Lcom/google/ads/interactivemedia/v3/internal/bm;->d:I

    if-eqz p1, :cond_3

    const/high16 p1, 0x8000000

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    or-int/2addr p1, p2

    iput p1, p5, Lcom/google/ads/interactivemedia/v3/internal/bm;->d:I

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->z:Z

    if-eqz p1, :cond_4

    iget-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->A:J

    iget-wide p3, p5, Lcom/google/ads/interactivemedia/v3/internal/bm;->e:J

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->B:J

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->z:Z

    :cond_4
    iget-wide p1, p5, Lcom/google/ads/interactivemedia/v3/internal/bm;->e:J

    iget-wide p3, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->B:J

    add-long/2addr p1, p3

    iput-wide p1, p5, Lcom/google/ads/interactivemedia/v3/internal/bm;->e:J

    const/4 p1, -0x3

    return p1

    :cond_5
    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->H:Z

    if-eqz p1, :cond_6

    const/4 p1, -0x1

    return p1

    :cond_6
    return p3

    :cond_7
    :goto_2
    return p3
.end method

.method public a(I)Lcom/google/ads/interactivemedia/v3/internal/bj;
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->o:Z

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/fe;->b(Z)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->q:[Lcom/google/ads/interactivemedia/v3/internal/bj;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public a()Lcom/google/ads/interactivemedia/v3/internal/bn$a;
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->v:I

    return-object p0
.end method

.method public a(IJ)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->o:Z

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/fe;->b(Z)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->u:[Z

    aget-boolean v0, v0, p1

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/fe;->b(Z)V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->p:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->p:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->u:[Z

    aput-boolean v1, v0, p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->s:[Z

    aput-boolean v1, v0, p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->t:[Z

    const/4 v2, 0x0

    aput-boolean v2, v0, p1

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->p:I

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->m:Lcom/google/ads/interactivemedia/v3/internal/cj;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cj;->a()Z

    move-result p1

    if-nez p1, :cond_0

    const-wide/16 p2, 0x0

    :cond_0
    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->w:J

    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->x:J

    invoke-direct {p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/cf;->c(J)V

    :cond_1
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/bu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->n:Lcom/google/ads/interactivemedia/v3/internal/bu;

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/cj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->m:Lcom/google/ads/interactivemedia/v3/internal/cj;

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/fa$c;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->H:Z

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/fa$c;Ljava/io/IOException;)V
    .locals 2

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->E:Ljava/io/IOException;

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->I:I

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->J:I

    const/4 v1, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->F:I

    add-int/2addr v1, p1

    :goto_0
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->F:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->G:J

    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/cf;->a(Ljava/io/IOException;)V

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/cf;->g()V

    return-void
.end method

.method public a(J)Z
    .locals 8

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->o:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    return p2

    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->C:Lcom/google/ads/interactivemedia/v3/internal/fa;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/fa;

    const-string v0, "Loader:ExtractorSampleSource"

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/fa;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->C:Lcom/google/ads/interactivemedia/v3/internal/fa;

    :cond_1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/cf;->g()V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->m:Lcom/google/ads/interactivemedia/v3/internal/cj;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->l:Z

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/cf;->i()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->e:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    new-array v1, p1, [Z

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->u:[Z

    new-array v1, p1, [Z

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->t:[Z

    new-array v1, p1, [Z

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->s:[Z

    new-array v1, p1, [Lcom/google/ads/interactivemedia/v3/internal/bj;

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->q:[Lcom/google/ads/interactivemedia/v3/internal/bj;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->r:J

    :goto_0
    if-ge v0, p1, :cond_3

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->e:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/cf$d;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/cf$d;->c()Lcom/google/ads/interactivemedia/v3/internal/bj;

    move-result-object v3

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->q:[Lcom/google/ads/interactivemedia/v3/internal/bj;

    aput-object v3, v4, v0

    iget-wide v4, v3, Lcom/google/ads/interactivemedia/v3/internal/bj;->e:J

    cmp-long v4, v4, v1

    if-eqz v4, :cond_2

    iget-wide v4, v3, Lcom/google/ads/interactivemedia/v3/internal/bj;->e:J

    iget-wide v6, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->r:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    iget-wide v3, v3, Lcom/google/ads/interactivemedia/v3/internal/bj;->e:J

    iput-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->r:J

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->o:Z

    return p2

    :cond_4
    return v0
.end method

.method public b(I)J
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->t:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->t:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->x:J

    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->E:Ljava/io/IOException;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/cf;->l()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->f:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->m:Lcom/google/ads/interactivemedia/v3/internal/cj;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->m:Lcom/google/ads/interactivemedia/v3/internal/cj;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/cj;->a()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    :goto_0
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->F:I

    if-gt v1, v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->E:Ljava/io/IOException;

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->E:Ljava/io/IOException;

    throw v0
.end method

.method public b(J)V
    .locals 5

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->o:Z

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/fe;->b(Z)V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->p:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/fe;->b(Z)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->m:Lcom/google/ads/interactivemedia/v3/internal/cj;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/cj;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 p1, 0x0

    :cond_1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/cf;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->y:J

    goto :goto_1

    :cond_2
    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->w:J

    :goto_1
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->w:J

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->x:J

    cmp-long v0, v3, p1

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/cf;->k()Z

    move-result v0

    xor-int/2addr v0, v2

    const/4 v3, 0x0

    :goto_2
    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->e:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/ads/interactivemedia/v3/internal/cf$d;

    invoke-virtual {v4, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/cf$d;->b(J)Z

    move-result v4

    and-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/cf;->c(J)V

    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->t:[Z

    array-length p1, p1

    if-ge v1, p1, :cond_6

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->t:[Z

    aput-boolean v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public b(Lcom/google/ads/interactivemedia/v3/internal/fa$c;)V
    .locals 2

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->p:I

    if-lez p1, :cond_0

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->y:J

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/cf;->c(J)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/cf;->j()V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->c:Lcom/google/ads/interactivemedia/v3/internal/eq;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/eq;->a(I)V

    :goto_0
    return-void
.end method

.method public b(IJ)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->o:Z

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/fe;->b(Z)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->u:[Z

    aget-boolean v0, v0, p1

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/fe;->b(Z)V

    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->w:J

    iget-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->w:J

    invoke-direct {p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/cf;->e(J)V

    iget-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->H:Z

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    return p3

    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/cf;->g()V

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/cf;->k()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->e:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/cf$d;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/cf$d;->e()Z

    move-result p1

    xor-int/2addr p1, p3

    return p1
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public c(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->o:Z

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/fe;->b(Z)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->u:[Z

    aget-boolean v0, v0, p1

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/fe;->b(Z)V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->p:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->p:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->u:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->p:I

    if-nez p1, :cond_1

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->w:J

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->C:Lcom/google/ads/interactivemedia/v3/internal/fa;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fa;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->C:Lcom/google/ads/interactivemedia/v3/internal/fa;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fa;->b()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/cf;->j()V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->c:Lcom/google/ads/interactivemedia/v3/internal/eq;

    invoke-interface {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/eq;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d()J
    .locals 7

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->H:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x3

    return-wide v0

    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/cf;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->y:J

    return-wide v0

    :cond_1
    const/4 v0, 0x0

    const-wide/high16 v1, -0x8000000000000000L

    move-wide v3, v1

    :goto_0
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->e:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->e:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/ads/interactivemedia/v3/internal/cf$d;

    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/cf$d;->d()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->w:J

    :cond_3
    return-wide v3
.end method

.method public d(I)Lcom/google/ads/interactivemedia/v3/internal/ck;
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/cf$d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/cf$d;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->c:Lcom/google/ads/interactivemedia/v3/internal/eq;

    invoke-direct {v0, p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/cf$d;-><init>(Lcom/google/ads/interactivemedia/v3/internal/cf;Lcom/google/ads/interactivemedia/v3/internal/eq;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public e()V
    .locals 2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->v:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/fe;->b(Z)V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->v:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->v:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->C:Lcom/google/ads/interactivemedia/v3/internal/fa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->C:Lcom/google/ads/interactivemedia/v3/internal/fa;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/cf$1;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/cf$1;-><init>(Lcom/google/ads/interactivemedia/v3/internal/cf;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fa;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->C:Lcom/google/ads/interactivemedia/v3/internal/fa;

    :cond_1
    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf;->l:Z

    return-void
.end method
