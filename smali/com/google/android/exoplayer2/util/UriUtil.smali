.class public final Lcom/google/android/exoplayer2/util/UriUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final FRAGMENT:I = 0x3

.field private static final INDEX_COUNT:I = 0x4

.field private static final PATH:I = 0x1

.field private static final QUERY:I = 0x2

.field private static final SCHEME_COLON:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getUriIndices(Ljava/lang/String;)[I
    .locals 9

    const/4 v3, 0x1

    const/16 v8, 0x2f

    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v0, 0x4

    new-array v7, v0, [I

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v6, :cond_4

    :goto_0
    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v6, :cond_5

    :cond_0
    move v1, v0

    :goto_1
    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v6, :cond_6

    :cond_1
    move v2, v1

    :goto_2
    const/16 v5, 0x3a

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gt v5, v2, :cond_7

    :goto_3
    add-int/lit8 v2, v5, 0x2

    if-lt v2, v1, :cond_8

    :cond_2
    move v2, v4

    :goto_4
    if-nez v2, :cond_9

    add-int/lit8 v2, v5, 0x1

    :goto_5
    aput v5, v7, v4

    aput v2, v7, v3

    const/4 v2, 0x2

    aput v1, v7, v2

    const/4 v1, 0x3

    aput v0, v7, v1

    return-object v7

    :cond_3
    aput v6, v7, v4

    return-object v7

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    if-gt v1, v0, :cond_0

    goto :goto_1

    :cond_6
    if-gt v2, v1, :cond_1

    goto :goto_2

    :cond_7
    move v5, v6

    goto :goto_3

    :cond_8
    add-int/lit8 v2, v5, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_2

    add-int/lit8 v2, v5, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_2

    move v2, v3

    goto :goto_4

    :cond_9
    add-int/lit8 v2, v5, 0x3

    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ne v2, v6, :cond_b

    :cond_a
    move v2, v1

    goto :goto_5

    :cond_b
    if-gt v2, v1, :cond_a

    goto :goto_5
.end method

.method private static removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x2f

    const/16 v5, 0x2e

    if-ge p1, p2, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v6, :cond_1

    :goto_0
    move v4, p1

    move v1, p1

    move v2, p2

    :goto_1
    if-le v4, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    if-eq v4, v2, :cond_3

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v6, :cond_6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_2
    add-int/lit8 v0, v1, 0x1

    if-eq v4, v0, :cond_7

    :cond_4
    add-int/lit8 v0, v1, 0x2

    if-eq v4, v0, :cond_8

    :cond_5
    add-int/lit8 v1, v4, 0x1

    move v0, v1

    :goto_3
    move v4, v1

    move v1, v0

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v4, 0x1

    move v3, v0

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_4

    invoke-virtual {p0, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    sub-int v0, v3, v1

    sub-int v0, v2, v0

    move v2, v0

    move v0, v1

    goto :goto_3

    :cond_8
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_5

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_5

    add-int/lit8 v0, v1, -0x2

    const-string/jumbo v1, "/"

    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    if-gt v1, p1, :cond_9

    move v0, p1

    :goto_4
    invoke-virtual {p0, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    sub-int v0, v3, v0

    sub-int v0, v2, v0

    move v2, v0

    move v0, v1

    goto :goto_3

    :cond_9
    move v0, v1

    goto :goto_4
.end method

.method public static removeQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0
.end method

.method public static resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v9, -0x1

    const/16 v8, 0x2f

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_1

    :goto_0
    if-eqz p1, :cond_2

    :goto_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/UriUtil;->getUriIndices(Ljava/lang/String;)[I

    move-result-object v2

    aget v0, v2, v6

    if-ne v0, v9, :cond_3

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/UriUtil;->getUriIndices(Ljava/lang/String;)[I

    move-result-object v3

    const/4 v0, 0x3

    aget v0, v2, v0

    if-eqz v0, :cond_4

    aget v0, v2, v7

    if-eqz v0, :cond_5

    aget v0, v2, v5

    if-nez v0, :cond_6

    aget v0, v2, v5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v8, :cond_7

    aget v0, v3, v6

    add-int/lit8 v0, v0, 0x2

    aget v4, v3, v5

    if-lt v0, v4, :cond_8

    :cond_0
    aget v0, v3, v7

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    if-eq v0, v9, :cond_9

    add-int/lit8 v0, v0, 0x1

    :goto_2
    invoke-virtual {v1, p0, v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v3, v5

    aget v2, v2, v7

    add-int/2addr v0, v2

    invoke-static {v1, v3, v0}, Lcom/google/android/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo p0, ""

    goto :goto_0

    :cond_2
    const-string/jumbo p1, ""

    goto :goto_1

    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v2, v5

    aget v2, v2, v7

    invoke-static {v1, v0, v2}, Lcom/google/android/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x3

    aget v0, v3, v0

    invoke-virtual {v1, p0, v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    aget v0, v3, v7

    invoke-virtual {v1, p0, v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    aget v0, v3, v6

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, p0, v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v2, v5

    add-int/2addr v3, v0

    aget v2, v2, v7

    add-int/2addr v0, v2

    invoke-static {v1, v3, v0}, Lcom/google/android/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    aget v0, v3, v5

    invoke-virtual {v1, p0, v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v3, v5

    aget v3, v3, v5

    aget v2, v2, v7

    add-int/2addr v2, v3

    invoke-static {v1, v0, v2}, Lcom/google/android/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    aget v0, v3, v5

    aget v4, v3, v7

    if-ne v0, v4, :cond_0

    aget v0, v3, v5

    invoke-virtual {v1, p0, v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v3, v5

    aget v3, v3, v5

    aget v2, v2, v7

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/google/android/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    aget v0, v3, v5

    goto/16 :goto_2
.end method

.method public static resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
