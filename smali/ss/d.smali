.class public final Lss/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lss/d$a;
    }
.end annotation


# static fields
.field public static final a:Lss/d;

.field public static final b:Lss/d;


# instance fields
.field c:Ljava/lang/String;

.field private final d:Z

.field private final e:Z

.field private final f:I

.field private final g:I

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:I

.field private final l:I

.field private final m:Z

.field private final n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lss/d$a;

    invoke-direct {v0}, Lss/d$a;-><init>()V

    invoke-virtual {v0}, Lss/d$a;->a()Lss/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/d$a;->c()Lss/d;

    move-result-object v0

    sput-object v0, Lss/d;->a:Lss/d;

    new-instance v0, Lss/d$a;

    invoke-direct {v0}, Lss/d$a;-><init>()V

    invoke-virtual {v0}, Lss/d$a;->b()Lss/d$a;

    move-result-object v0

    const v1, 0x7fffffff

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Lss/d$a;->a(ILjava/util/concurrent/TimeUnit;)Lss/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/d$a;->c()Lss/d;

    move-result-object v0

    sput-object v0, Lss/d;->b:Lss/d;

    return-void
.end method

.method private constructor <init>(Lss/d$a;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lss/d$a;->a:Z

    iput-boolean v0, p0, Lss/d;->d:Z

    iget-boolean v0, p1, Lss/d$a;->b:Z

    iput-boolean v0, p0, Lss/d;->e:Z

    iget v0, p1, Lss/d$a;->c:I

    iput v0, p0, Lss/d;->f:I

    const/4 v0, -0x1

    iput v0, p0, Lss/d;->g:I

    iput-boolean v1, p0, Lss/d;->h:Z

    iput-boolean v1, p0, Lss/d;->i:Z

    iput-boolean v1, p0, Lss/d;->j:Z

    iget v0, p1, Lss/d$a;->d:I

    iput v0, p0, Lss/d;->k:I

    iget v0, p1, Lss/d$a;->e:I

    iput v0, p0, Lss/d;->l:I

    iget-boolean v0, p1, Lss/d$a;->f:Z

    iput-boolean v0, p0, Lss/d;->m:Z

    iget-boolean v0, p1, Lss/d$a;->g:Z

    iput-boolean v0, p0, Lss/d;->n:Z

    return-void
.end method

.method synthetic constructor <init>(Lss/d$a;Lss/d$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lss/d;-><init>(Lss/d$a;)V

    return-void
.end method

.method private constructor <init>(ZZIIZZZIIZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lss/d;->d:Z

    iput-boolean p2, p0, Lss/d;->e:Z

    iput p3, p0, Lss/d;->f:I

    iput p4, p0, Lss/d;->g:I

    iput-boolean p5, p0, Lss/d;->h:Z

    iput-boolean p6, p0, Lss/d;->i:Z

    iput-boolean p7, p0, Lss/d;->j:Z

    iput p8, p0, Lss/d;->k:I

    iput p9, p0, Lss/d;->l:I

    iput-boolean p10, p0, Lss/d;->m:Z

    iput-boolean p11, p0, Lss/d;->n:Z

    iput-object p12, p0, Lss/d;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Lss/p;)Lss/d;
    .locals 23

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lss/p;->a()I

    move-result v19

    move/from16 v18, v2

    move-object v2, v3

    move/from16 v3, v16

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_12

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lss/p;->a(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lss/p;->b(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v17, "Cache-Control"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    if-eqz v2, :cond_2

    const/4 v15, 0x0

    :goto_1
    const/16 v16, 0x0

    move/from16 v22, v16

    move/from16 v16, v3

    move/from16 v3, v22

    :cond_0
    :goto_2
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v3, v0, :cond_11

    const-string/jumbo v17, "=,;"

    move-object/from16 v0, v17

    invoke-static {v14, v3, v0}, Lss/ss/gK/c;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v14, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v17

    if-eq v0, v3, :cond_1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v21, 0x2c

    move/from16 v0, v21

    if-eq v3, v0, :cond_1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v21, 0x3b

    move/from16 v0, v21

    if-ne v3, v0, :cond_4

    :cond_1
    add-int/lit8 v17, v17, 0x1

    const/4 v3, 0x0

    move-object/from16 v22, v3

    move/from16 v3, v17

    move-object/from16 v17, v22

    :goto_3
    const-string/jumbo v21, "no-cache"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    const/16 v16, 0x1

    goto :goto_2

    :cond_2
    move-object v2, v14

    goto :goto_1

    :cond_3
    const-string/jumbo v17, "Pragma"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/4 v15, 0x0

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v17, 0x1

    invoke-static {v14, v3}, Lss/ss/gK/c;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v3, v0, :cond_5

    invoke-virtual {v14, v3}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v21, 0x22

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    add-int/lit8 v3, v3, 0x1

    const-string/jumbo v17, "\""

    move-object/from16 v0, v17

    invoke-static {v14, v3, v0}, Lss/ss/gK/c;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v14, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v22, v3

    move/from16 v3, v17

    move-object/from16 v17, v22

    goto :goto_3

    :cond_5
    const-string/jumbo v17, ",;"

    move-object/from16 v0, v17

    invoke-static {v14, v3, v0}, Lss/ss/gK/c;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v14, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v22, v3

    move/from16 v3, v17

    move-object/from16 v17, v22

    goto :goto_3

    :cond_6
    const-string/jumbo v21, "no-store"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v21, "max-age"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8

    const/4 v5, -0x1

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lss/ss/gK/c;->b(Ljava/lang/String;I)I

    move-result v5

    goto/16 :goto_2

    :cond_8
    const-string/jumbo v21, "s-maxage"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_9

    const/4 v6, -0x1

    move-object/from16 v0, v17

    invoke-static {v0, v6}, Lss/ss/gK/c;->b(Ljava/lang/String;I)I

    move-result v6

    goto/16 :goto_2

    :cond_9
    const-string/jumbo v21, "private"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a

    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_a
    const-string/jumbo v21, "public"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_b

    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_b
    const-string/jumbo v21, "must-revalidate"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_c

    const/4 v9, 0x1

    goto/16 :goto_2

    :cond_c
    const-string/jumbo v21, "max-stale"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_d

    const v10, 0x7fffffff

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Lss/ss/gK/c;->b(Ljava/lang/String;I)I

    move-result v10

    goto/16 :goto_2

    :cond_d
    const-string/jumbo v21, "min-fresh"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_e

    const/4 v11, -0x1

    move-object/from16 v0, v17

    invoke-static {v0, v11}, Lss/ss/gK/c;->b(Ljava/lang/String;I)I

    move-result v11

    goto/16 :goto_2

    :cond_e
    const-string/jumbo v17, "only-if-cached"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f

    const/4 v12, 0x1

    goto/16 :goto_2

    :cond_f
    const-string/jumbo v17, "no-transform"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/4 v13, 0x1

    goto/16 :goto_2

    :cond_10
    move/from16 v16, v3

    :cond_11
    add-int/lit8 v3, v18, 0x1

    move/from16 v18, v3

    move/from16 v3, v16

    goto/16 :goto_0

    :cond_12
    if-nez v15, :cond_13

    const/4 v14, 0x0

    :goto_4
    new-instance v2, Lss/d;

    invoke-direct/range {v2 .. v14}, Lss/d;-><init>(ZZIIZZZIIZZLjava/lang/String;)V

    return-object v2

    :cond_13
    move-object v14, v2

    goto :goto_4
.end method

.method private j()Ljava/lang/String;
    .locals 4

    const/4 v3, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lss/d;->d:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "no-cache, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v1, p0, Lss/d;->e:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "no-store, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget v1, p0, Lss/d;->f:I

    if-eq v1, v3, :cond_2

    const-string/jumbo v1, "max-age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lss/d;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget v1, p0, Lss/d;->g:I

    if-eq v1, v3, :cond_3

    const-string/jumbo v1, "s-maxage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lss/d;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v1, p0, Lss/d;->h:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "private, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-boolean v1, p0, Lss/d;->i:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "public, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-boolean v1, p0, Lss/d;->j:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "must-revalidate, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget v1, p0, Lss/d;->k:I

    if-eq v1, v3, :cond_7

    const-string/jumbo v1, "max-stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lss/d;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget v1, p0, Lss/d;->l:I

    if-eq v1, v3, :cond_8

    const-string/jumbo v1, "min-fresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lss/d;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-boolean v1, p0, Lss/d;->m:Z

    if-eqz v1, :cond_9

    const-string/jumbo v1, "only-if-cached, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-boolean v1, p0, Lss/d;->n:Z

    if-eqz v1, :cond_a

    const-string/jumbo v1, "no-transform, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_b

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lss/d;->d:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lss/d;->e:Z

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lss/d;->f:I

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lss/d;->h:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lss/d;->i:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lss/d;->j:Z

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lss/d;->k:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lss/d;->l:I

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lss/d;->m:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lss/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lss/d;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lss/d;->c:Ljava/lang/String;

    goto :goto_0
.end method
