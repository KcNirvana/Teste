.class public Lcom/xiaomi/a/g;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bOC(D)D
    .locals 4

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static bOD(Ljava/util/List;)Z
    .locals 12

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v3

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int v6, v1, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/xiaomi/a/g;->bOH(C)Z

    move-result v1

    move v4, v3

    move v5, v2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_3

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Lcom/xiaomi/a/g;->bOH(C)Z

    move-result v10

    if-ne v1, v10, :cond_0

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    if-nez v1, :cond_2

    move v1, v2

    :goto_4
    move v4, v5

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    move v1, v3

    goto :goto_4

    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v6

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v6

    goto :goto_0

    :cond_5
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v4, v3

    move v5, v3

    move v6, v3

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v4, v10, :cond_6

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x3

    if-gt v10, v11, :cond_7

    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v6

    move v6, v0

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_6

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_8
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v7, v3

    :cond_9
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_9

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_8

    :cond_a
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v8, v1, 0x4

    if-le v0, v8, :cond_d

    :cond_b
    if-le v5, v2, :cond_e

    :cond_c
    :goto_9
    return v3

    :cond_d
    mul-int/lit8 v0, v6, 0x3

    if-lt v0, v1, :cond_b

    goto :goto_9

    :cond_e
    const/16 v0, 0x8

    if-ge v4, v0, :cond_c

    mul-int/lit8 v0, v7, 0x2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_c

    return v2
.end method

.method public static bOE(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/xiaomi/a/g;->bOI(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static bOF(C)Z
    .locals 1

    const/16 v0, 0x4e00

    if-le v0, p0, :cond_5

    :cond_0
    const/16 v0, 0x30

    if-le v0, p0, :cond_6

    :cond_1
    const/16 v0, 0x61

    if-le v0, p0, :cond_7

    :cond_2
    const/16 v0, 0x41

    if-le v0, p0, :cond_8

    :cond_3
    const v0, 0xff10

    if-le v0, p0, :cond_9

    :cond_4
    const/4 v0, 0x0

    return v0

    :cond_5
    const v0, 0x9fff

    if-gt p0, v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_6
    const/16 v0, 0x39

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_7
    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    goto :goto_0

    :cond_8
    const/16 v0, 0x5a

    if-gt p0, v0, :cond_3

    goto :goto_0

    :cond_9
    const v0, 0xff19

    if-gt p0, v0, :cond_4

    goto :goto_0
.end method

.method public static bOG(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, -0x1

    const-string/jumbo v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    return-object p0

    :cond_0
    const-string/jumbo v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static bOH(C)Z
    .locals 3

    const/16 v2, 0x20

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/xiaomi/a/g;->bOF(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/16 v0, 0x2e

    if-eq p0, v0, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v2, :cond_0

    return v1
.end method

.method public static bOI(C)Z
    .locals 1

    const/16 v0, 0x4e00

    if-le v0, p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const v0, 0x9fff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method
