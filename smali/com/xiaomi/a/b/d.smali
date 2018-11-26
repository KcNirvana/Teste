.class public Lcom/xiaomi/a/b/d;
.super Lcom/xiaomi/a/b/c;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field bqf:Ljava/util/List;

.field bqg:[I

.field bqh:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xiaomi/a/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/a/b/d;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/xiaomi/a/b/c;-><init>(Lorg/json/JSONObject;)V

    :try_start_0
    const-string/jumbo v1, "body_len"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    const-string/jumbo v1, "num_types"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_1
    const-string/jumbo v1, "struct_types"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v1, "body_len"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-eq v4, v8, :cond_4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v5, p0, Lcom/xiaomi/a/b/d;->bqf:Ljava/util/List;

    if-eqz v5, :cond_5

    :goto_3
    iget-object v5, p0, Lcom/xiaomi/a/b/d;->bqf:Ljava/util/List;

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v4, v6, v7

    const/4 v4, 0x1

    aput v3, v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v0, Lcom/xiaomi/a/b/d;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "JSONException when decode KEY_TYPE features."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/xiaomi/a/b/d;->bqf:Ljava/util/List;

    goto :goto_3

    :cond_6
    const-string/jumbo v1, "num_types"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/xiaomi/a/b/d;->bqh:[I

    move v1, v0

    :goto_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/xiaomi/a/b/d;->bqh:[I

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    const-string/jumbo v1, "struct_types"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/xiaomi/a/b/d;->bqg:[I

    :goto_5
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/a/b/d;->bqg:[I

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    aput v3, v2, v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method


# virtual methods
.method public bNS(Lcom/xiaomi/a/j;)Z
    .locals 10

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/xiaomi/a/j;->bPb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v0, p0, Lcom/xiaomi/a/b/d;->bqf:Ljava/util/List;

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/a/b/d;->bqh:[I

    if-nez v0, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/a/b/d;->bqg:[I

    if-nez v0, :cond_b

    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/a/j;->bPb()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/xiaomi/a/b/c;->bNR(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/a/b/d;->bqf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/a/b/d;->bqf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    aget v5, v0, v4

    if-gt v5, v2, :cond_4

    aget v0, v0, v1

    if-gt v2, v0, :cond_4

    move v0, v1

    :goto_0
    if-nez v0, :cond_0

    return v4

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/a/b/d;->bqh:[I

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p1, Lcom/xiaomi/a/j;->bqN:Ljava/util/List;

    if-nez v0, :cond_7

    :cond_6
    return v4

    :cond_7
    iget-object v0, p1, Lcom/xiaomi/a/j;->bqN:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6

    move v3, v4

    move v2, v4

    :goto_1
    iget-object v0, p1, Lcom/xiaomi/a/j;->bqN:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_9

    :cond_8
    if-nez v2, :cond_1

    return v4

    :cond_9
    if-nez v2, :cond_8

    iget-object v0, p1, Lcom/xiaomi/a/j;->bqN:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/a/d;

    iget-object v6, p0, Lcom/xiaomi/a/b/d;->bqh:[I

    array-length v7, v6

    move v5, v4

    :goto_2
    if-ge v5, v7, :cond_e

    aget v8, v6, v5

    iget v9, v0, Lcom/xiaomi/a/d;->type:I

    if-eq v9, v8, :cond_a

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_a
    move v0, v1

    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcom/xiaomi/a/b/d;->bqg:[I

    array-length v0, v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/xiaomi/a/j;->bOY()I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/a/b/d;->bqg:[I

    array-length v5, v3

    move v0, v4

    :goto_4
    if-ge v0, v5, :cond_c

    aget v6, v3, v0

    and-int/2addr v6, v2

    if-nez v6, :cond_d

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_c
    move v1, v4

    :cond_d
    if-nez v1, :cond_2

    return v4

    :cond_e
    move v0, v2

    goto :goto_3

    :cond_f
    move v0, v4

    goto :goto_0
.end method
