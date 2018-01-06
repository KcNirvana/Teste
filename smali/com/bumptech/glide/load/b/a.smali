.class Lcom/bumptech/glide/load/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/a$b;,
        Lcom/bumptech/glide/load/b/a$a;,
        Lcom/bumptech/glide/load/b/a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/b/a$b;


# instance fields
.field private final b:Lcom/bumptech/glide/load/b/f;

.field private final c:I

.field private final d:I

.field private final e:Lcom/bumptech/glide/load/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/a/c",
            "<TA;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/bumptech/glide/f/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/f/b",
            "<TA;TT;>;"
        }
    .end annotation
.end field

.field private final g:Lcom/bumptech/glide/load/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/g",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final h:Lcom/bumptech/glide/load/resource/f/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/f/d",
            "<TT;TZ;>;"
        }
    .end annotation
.end field

.field private final i:Lcom/bumptech/glide/load/b/a$a;

.field private final j:Lcom/bumptech/glide/load/b/b;

.field private final k:Lcom/bumptech/glide/l;

.field private final l:Lcom/bumptech/glide/load/b/a$b;

.field private volatile m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/b/a$b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/a$b;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/b/a;->a:Lcom/bumptech/glide/load/b/a$b;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/b/f;IILcom/bumptech/glide/load/a/c;Lcom/bumptech/glide/f/b;Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/resource/f/d;Lcom/bumptech/glide/load/b/a$a;Lcom/bumptech/glide/load/b/b;Lcom/bumptech/glide/l;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/f;",
            "II",
            "Lcom/bumptech/glide/load/a/c",
            "<TA;>;",
            "Lcom/bumptech/glide/f/b",
            "<TA;TT;>;",
            "Lcom/bumptech/glide/load/g",
            "<TT;>;",
            "Lcom/bumptech/glide/load/resource/f/d",
            "<TT;TZ;>;",
            "Lcom/bumptech/glide/load/b/a$a;",
            "Lcom/bumptech/glide/load/b/b;",
            "Lcom/bumptech/glide/l;",
            ")V"
        }
    .end annotation

    sget-object v11, Lcom/bumptech/glide/load/b/a;->a:Lcom/bumptech/glide/load/b/a$b;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/bumptech/glide/load/b/a;-><init>(Lcom/bumptech/glide/load/b/f;IILcom/bumptech/glide/load/a/c;Lcom/bumptech/glide/f/b;Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/resource/f/d;Lcom/bumptech/glide/load/b/a$a;Lcom/bumptech/glide/load/b/b;Lcom/bumptech/glide/l;Lcom/bumptech/glide/load/b/a$b;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/b/f;IILcom/bumptech/glide/load/a/c;Lcom/bumptech/glide/f/b;Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/resource/f/d;Lcom/bumptech/glide/load/b/a$a;Lcom/bumptech/glide/load/b/b;Lcom/bumptech/glide/l;Lcom/bumptech/glide/load/b/a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/f;",
            "II",
            "Lcom/bumptech/glide/load/a/c",
            "<TA;>;",
            "Lcom/bumptech/glide/f/b",
            "<TA;TT;>;",
            "Lcom/bumptech/glide/load/g",
            "<TT;>;",
            "Lcom/bumptech/glide/load/resource/f/d",
            "<TT;TZ;>;",
            "Lcom/bumptech/glide/load/b/a$a;",
            "Lcom/bumptech/glide/load/b/b;",
            "Lcom/bumptech/glide/l;",
            "Lcom/bumptech/glide/load/b/a$b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/b/a;->b:Lcom/bumptech/glide/load/b/f;

    iput p2, p0, Lcom/bumptech/glide/load/b/a;->c:I

    iput p3, p0, Lcom/bumptech/glide/load/b/a;->d:I

    iput-object p4, p0, Lcom/bumptech/glide/load/b/a;->e:Lcom/bumptech/glide/load/a/c;

    iput-object p5, p0, Lcom/bumptech/glide/load/b/a;->f:Lcom/bumptech/glide/f/b;

    iput-object p6, p0, Lcom/bumptech/glide/load/b/a;->g:Lcom/bumptech/glide/load/g;

    iput-object p7, p0, Lcom/bumptech/glide/load/b/a;->h:Lcom/bumptech/glide/load/resource/f/d;

    iput-object p8, p0, Lcom/bumptech/glide/load/b/a;->i:Lcom/bumptech/glide/load/b/a$a;

    iput-object p9, p0, Lcom/bumptech/glide/load/b/a;->j:Lcom/bumptech/glide/load/b/b;

    iput-object p10, p0, Lcom/bumptech/glide/load/b/a;->k:Lcom/bumptech/glide/l;

    iput-object p11, p0, Lcom/bumptech/glide/load/b/a;->l:Lcom/bumptech/glide/load/b/a$b;

    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/load/b/a;)Lcom/bumptech/glide/load/b/a$b;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a;->l:Lcom/bumptech/glide/load/b/a$b;

    return-object v0
.end method

.method private a(Lcom/bumptech/glide/load/b/k;)Lcom/bumptech/glide/load/b/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/k",
            "<TT;>;)",
            "Lcom/bumptech/glide/load/b/k",
            "<TZ;>;"
        }
    .end annotation

    const/4 v4, 0x2

    invoke-static {}, Lcom/bumptech/glide/i/d;->a()J

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/b/a;->c(Lcom/bumptech/glide/load/b/k;)Lcom/bumptech/glide/load/b/k;

    move-result-object v2

    const-string v3, "DecodeJob"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Transformed resource from source"

    invoke-direct {p0, v3, v0, v1}, Lcom/bumptech/glide/load/b/a;->a(Ljava/lang/String;J)V

    :cond_0
    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/b/a;->b(Lcom/bumptech/glide/load/b/k;)V

    invoke-static {}, Lcom/bumptech/glide/i/d;->a()J

    move-result-wide v0

    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/b/a;->d(Lcom/bumptech/glide/load/b/k;)Lcom/bumptech/glide/load/b/k;

    move-result-object v2

    const-string v3, "DecodeJob"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Transcoded transformed from source"

    invoke-direct {p0, v3, v0, v1}, Lcom/bumptech/glide/load/b/a;->a(Ljava/lang/String;J)V

    :cond_1
    return-object v2
.end method

.method private a(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/load/b/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            ")",
            "Lcom/bumptech/glide/load/b/k",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a;->i:Lcom/bumptech/glide/load/b/a$a;

    invoke-interface {v1}, Lcom/bumptech/glide/load/b/a$a;->a()Lcom/bumptech/glide/load/b/b/a;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/b/b/a;->a(Lcom/bumptech/glide/load/c;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/bumptech/glide/load/b/a;->f:Lcom/bumptech/glide/f/b;

    invoke-interface {v2}, Lcom/bumptech/glide/f/b;->a()Lcom/bumptech/glide/load/e;

    move-result-object v2

    iget v3, p0, Lcom/bumptech/glide/load/b/a;->c:I

    iget v4, p0, Lcom/bumptech/glide/load/b/a;->d:I

    invoke-interface {v2, v1, v3, v4}, Lcom/bumptech/glide/load/e;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/b/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a;->i:Lcom/bumptech/glide/load/b/a$a;

    invoke-interface {v1}, Lcom/bumptech/glide/load/b/a$a;->a()Lcom/bumptech/glide/load/b/b/a;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/b/b/a;->b(Lcom/bumptech/glide/load/c;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a;->i:Lcom/bumptech/glide/load/b/a$a;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/a$a;->a()Lcom/bumptech/glide/load/b/b/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/b/b/a;->b(Lcom/bumptech/glide/load/c;)V

    :cond_2
    throw v1
.end method

.method private a(Ljava/lang/Object;)Lcom/bumptech/glide/load/b/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lcom/bumptech/glide/load/b/k",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a;->j:Lcom/bumptech/glide/load/b/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/b/a;->b(Ljava/lang/Object;)Lcom/bumptech/glide/load/b/k;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/bumptech/glide/i/d;->a()J

    move-result-wide v2

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a;->f:Lcom/bumptech/glide/f/b;

    invoke-interface {v0}, Lcom/bumptech/glide/f/b;->b()Lcom/bumptech/glide/load/e;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/b/a;->c:I

    iget v4, p0, Lcom/bumptech/glide/load/b/a;->d:I

    invoke-interface {v0, p1, v1, v4}, Lcom/bumptech/glide/load/e;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/b/k;

    move-result-object v0

    const-string v1, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Decoded from source"

    invoke-direct {p0, v1, v2, v3}, Lcom/bumptech/glide/load/b/a;->a(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;J)V
    .locals 4

    const-string v0, "DecodeJob"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Lcom/bumptech/glide/i/d;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/b/a;->b:Lcom/bumptech/glide/load/b/f;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private b(Ljava/lang/Object;)Lcom/bumptech/glide/load/b/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lcom/bumptech/glide/load/b/k",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x2

    invoke-static {}, Lcom/bumptech/glide/i/d;->a()J

    move-result-wide v0

    new-instance v2, Lcom/bumptech/glide/load/b/a$c;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/a;->f:Lcom/bumptech/glide/f/b;

    invoke-interface {v3}, Lcom/bumptech/glide/f/b;->c()Lcom/bumptech/glide/load/b;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lcom/bumptech/glide/load/b/a$c;-><init>(Lcom/bumptech/glide/load/b/a;Lcom/bumptech/glide/load/b;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/bumptech/glide/load/b/a;->i:Lcom/bumptech/glide/load/b/a$a;

    invoke-interface {v3}, Lcom/bumptech/glide/load/b/a$a;->a()Lcom/bumptech/glide/load/b/b/a;

    move-result-object v3

    iget-object v4, p0, Lcom/bumptech/glide/load/b/a;->b:Lcom/bumptech/glide/load/b/f;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/b/f;->a()Lcom/bumptech/glide/load/c;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/bumptech/glide/load/b/b/a;->a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/b/b/a$b;)V

    const-string v2, "DecodeJob"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Wrote source to cache"

    invoke-direct {p0, v2, v0, v1}, Lcom/bumptech/glide/load/b/a;->a(Ljava/lang/String;J)V

    :cond_0
    invoke-static {}, Lcom/bumptech/glide/i/d;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bumptech/glide/load/b/a;->b:Lcom/bumptech/glide/load/b/f;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/b/f;->a()Lcom/bumptech/glide/load/c;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/b/a;->a(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/load/b/k;

    move-result-object v2

    const-string v3, "DecodeJob"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    const-string v3, "Decoded source from cache"

    invoke-direct {p0, v3, v0, v1}, Lcom/bumptech/glide/load/b/a;->a(Ljava/lang/String;J)V

    :cond_1
    return-object v2
.end method

.method private b(Lcom/bumptech/glide/load/b/k;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/k",
            "<TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a;->j:Lcom/bumptech/glide/load/b/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/b;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/bumptech/glide/i/d;->a()J

    move-result-wide v0

    new-instance v2, Lcom/bumptech/glide/load/b/a$c;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/a;->f:Lcom/bumptech/glide/f/b;

    invoke-interface {v3}, Lcom/bumptech/glide/f/b;->d()Lcom/bumptech/glide/load/f;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lcom/bumptech/glide/load/b/a$c;-><init>(Lcom/bumptech/glide/load/b/a;Lcom/bumptech/glide/load/b;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/bumptech/glide/load/b/a;->i:Lcom/bumptech/glide/load/b/a$a;

    invoke-interface {v3}, Lcom/bumptech/glide/load/b/a$a;->a()Lcom/bumptech/glide/load/b/b/a;

    move-result-object v3

    iget-object v4, p0, Lcom/bumptech/glide/load/b/a;->b:Lcom/bumptech/glide/load/b/f;

    invoke-interface {v3, v4, v2}, Lcom/bumptech/glide/load/b/b/a;->a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/b/b/a$b;)V

    const-string v2, "DecodeJob"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Wrote transformed from source to cache"

    invoke-direct {p0, v2, v0, v1}, Lcom/bumptech/glide/load/b/a;->a(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private c(Lcom/bumptech/glide/load/b/k;)Lcom/bumptech/glide/load/b/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/k",
            "<TT;>;)",
            "Lcom/bumptech/glide/load/b/k",
            "<TT;>;"
        }
    .end annotation

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/b/a;->g:Lcom/bumptech/glide/load/g;

    iget v1, p0, Lcom/bumptech/glide/load/b/a;->c:I

    iget v2, p0, Lcom/bumptech/glide/load/b/a;->d:I

    invoke-interface {v0, p1, v1, v2}, Lcom/bumptech/glide/load/g;->a(Lcom/bumptech/glide/load/b/k;II)Lcom/bumptech/glide/load/b/k;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/k;->d()V

    goto :goto_0
.end method

.method private d(Lcom/bumptech/glide/load/b/k;)Lcom/bumptech/glide/load/b/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/k",
            "<TT;>;)",
            "Lcom/bumptech/glide/load/b/k",
            "<TZ;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/b/a;->h:Lcom/bumptech/glide/load/resource/f/d;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/resource/f/d;->a(Lcom/bumptech/glide/load/b/k;)Lcom/bumptech/glide/load/b/k;

    move-result-object v0

    goto :goto_0
.end method

.method private e()Lcom/bumptech/glide/load/b/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/b/k",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/bumptech/glide/i/d;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bumptech/glide/load/b/a;->e:Lcom/bumptech/glide/load/a/c;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/a;->k:Lcom/bumptech/glide/l;

    invoke-interface {v2, v3}, Lcom/bumptech/glide/load/a/c;->a(Lcom/bumptech/glide/l;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Fetched data"

    invoke-direct {p0, v3, v0, v1}, Lcom/bumptech/glide/load/b/a;->a(Ljava/lang/String;J)V

    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/a;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a;->e:Lcom/bumptech/glide/load/a/c;

    invoke-interface {v1}, Lcom/bumptech/glide/load/a/c;->a()V

    :goto_0
    return-object v0

    :cond_1
    :try_start_1
    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/b/a;->a(Ljava/lang/Object;)Lcom/bumptech/glide/load/b/k;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a;->e:Lcom/bumptech/glide/load/a/c;

    invoke-interface {v1}, Lcom/bumptech/glide/load/a/c;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a;->e:Lcom/bumptech/glide/load/a/c;

    invoke-interface {v1}, Lcom/bumptech/glide/load/a/c;->a()V

    throw v0
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/b/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/b/k",
            "<TZ;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x2

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a;->j:Lcom/bumptech/glide/load/b/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/b;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/bumptech/glide/i/d;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bumptech/glide/load/b/a;->b:Lcom/bumptech/glide/load/b/f;

    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/b/a;->a(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/load/b/k;

    move-result-object v2

    const-string v3, "DecodeJob"

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Decoded transformed from cache"

    invoke-direct {p0, v3, v0, v1}, Lcom/bumptech/glide/load/b/a;->a(Ljava/lang/String;J)V

    :cond_2
    invoke-static {}, Lcom/bumptech/glide/i/d;->a()J

    move-result-wide v4

    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/b/a;->d(Lcom/bumptech/glide/load/b/k;)Lcom/bumptech/glide/load/b/k;

    move-result-object v0

    const-string v1, "DecodeJob"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Transcoded transformed from cache"

    invoke-direct {p0, v1, v4, v5}, Lcom/bumptech/glide/load/b/a;->a(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public b()Lcom/bumptech/glide/load/b/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/b/k",
            "<TZ;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a;->j:Lcom/bumptech/glide/load/b/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/bumptech/glide/i/d;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bumptech/glide/load/b/a;->b:Lcom/bumptech/glide/load/b/f;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/b/f;->a()Lcom/bumptech/glide/load/c;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/b/a;->a(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/load/b/k;

    move-result-object v2

    const-string v3, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Decoded source from cache"

    invoke-direct {p0, v3, v0, v1}, Lcom/bumptech/glide/load/b/a;->a(Ljava/lang/String;J)V

    :cond_1
    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/b/a;->a(Lcom/bumptech/glide/load/b/k;)Lcom/bumptech/glide/load/b/k;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Lcom/bumptech/glide/load/b/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/b/k",
            "<TZ;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/bumptech/glide/load/b/a;->e()Lcom/bumptech/glide/load/b/k;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/b/a;->a(Lcom/bumptech/glide/load/b/k;)Lcom/bumptech/glide/load/b/k;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/a;->m:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a;->e:Lcom/bumptech/glide/load/a/c;

    invoke-interface {v0}, Lcom/bumptech/glide/load/a/c;->c()V

    return-void
.end method
