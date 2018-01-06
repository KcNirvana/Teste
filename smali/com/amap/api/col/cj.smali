.class public Lcom/amap/api/col/cj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Lcom/amap/api/b/c/b;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "[]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, ",| "

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    new-instance v0, Lcom/amap/api/b/c/b;

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/amap/api/b/c/b;-><init>(DD)V

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/b/c/d;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "pois"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_3

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v3}, Lcom/amap/api/col/cj;->b(Lorg/json/JSONObject;)Lcom/amap/api/b/c/d;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Lcom/amap/api/b/c/d;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "deep_info"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/cj;->e(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/amap/api/col/cj;->e(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/amap/api/b/c/d;->b(Ljava/util/List;)V

    return-void
.end method

.method public static a(Lorg/json/JSONArray;Lcom/amap/api/b/e/g;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    new-instance v2, Lcom/amap/api/b/j/a;

    invoke-direct {v2}, Lcom/amap/api/b/j/a;-><init>()V

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v4, "id"

    invoke-static {v3, v4}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/b/j/a;->f(Ljava/lang/String;)V

    const-string v4, "direction"

    invoke-static {v3, v4}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/b/j/a;->a(Ljava/lang/String;)V

    const-string v4, "distance"

    invoke-static {v3, v4}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/col/cj;->e(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/amap/api/b/j/a;->a(F)V

    const-string v4, "location"

    invoke-static {v3, v4}, Lcom/amap/api/col/cj;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/b/c/b;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/b/j/a;->a(Lcom/amap/api/b/c/b;)V

    const-string v4, "first_id"

    invoke-static {v3, v4}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/b/j/a;->b(Ljava/lang/String;)V

    const-string v4, "first_name"

    invoke-static {v3, v4}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/b/j/a;->c(Ljava/lang/String;)V

    const-string v4, "second_id"

    invoke-static {v3, v4}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/b/j/a;->d(Ljava/lang/String;)V

    const-string v4, "second_name"

    invoke-static {v3, v4}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/b/j/a;->e(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Lcom/amap/api/b/e/g;->c(Ljava/util/List;)V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lcom/amap/api/b/e/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "province"

    invoke-static {p0, v0}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/b/e/g;->b(Ljava/lang/String;)V

    const-string v0, "city"

    invoke-static {p0, v0}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/b/e/g;->c(Ljava/lang/String;)V

    const-string v0, "citycode"

    invoke-static {p0, v0}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/b/e/g;->d(Ljava/lang/String;)V

    const-string v0, "adcode"

    invoke-static {p0, v0}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/b/e/g;->e(Ljava/lang/String;)V

    const-string v0, "district"

    invoke-static {p0, v0}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/b/e/g;->f(Ljava/lang/String;)V

    const-string v0, "township"

    invoke-static {p0, v0}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/b/e/g;->g(Ljava/lang/String;)V

    const-string v0, "neighborhood"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "name"

    invoke-static {v0, v1}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/b/e/g;->h(Ljava/lang/String;)V

    const-string v0, "building"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "name"

    invoke-static {v0, v1}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/b/e/g;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/b/e/m;

    invoke-direct {v0}, Lcom/amap/api/b/e/m;-><init>()V

    const-string v1, "streetNumber"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "street"

    invoke-static {v1, v2}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/b/e/m;->a(Ljava/lang/String;)V

    const-string v2, "number"

    invoke-static {v1, v2}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/b/e/m;->b(Ljava/lang/String;)V

    const-string v2, "location"

    invoke-static {v1, v2}, Lcom/amap/api/col/cj;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/b/c/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/b/e/m;->a(Lcom/amap/api/b/c/b;)V

    const-string v2, "direction"

    invoke-static {v1, v2}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/b/e/m;->c(Ljava/lang/String;)V

    const-string v2, "distance"

    invoke-static {v1, v2}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/cj;->e(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/b/e/m;->a(F)V

    invoke-virtual {p1, v0}, Lcom/amap/api/b/e/g;->a(Lcom/amap/api/b/e/m;)V

    invoke-static {p0}, Lcom/amap/api/col/cj;->c(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/b/e/g;->d(Ljava/util/List;)V

    const-string v0, "towncode"

    invoke-static {p0, v0}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/b/e/g;->j(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/b/c/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/cj;->a(Ljava/lang/String;)Lcom/amap/api/b/c/b;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Lorg/json/JSONObject;)Lcom/amap/api/b/c/d;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "id"

    invoke-static {p0, v1}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "location"

    invoke-static {p0, v2}, Lcom/amap/api/col/cj;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/b/c/b;

    move-result-object v2

    const-string v3, "name"

    invoke-static {p0, v3}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "address"

    invoke-static {p0, v4}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/amap/api/b/c/d;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/amap/api/b/c/d;-><init>(Ljava/lang/String;Lcom/amap/api/b/c/b;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "adcode"

    invoke-static {p0, v1}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/b/c/d;->g(Ljava/lang/String;)V

    const-string v1, "pname"

    invoke-static {p0, v1}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/b/c/d;->d(Ljava/lang/String;)V

    const-string v1, "cityname"

    invoke-static {p0, v1}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/b/c/d;->c(Ljava/lang/String;)V

    const-string v1, "adname"

    invoke-static {p0, v1}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/b/c/d;->b(Ljava/lang/String;)V

    const-string v1, "citycode"

    invoke-static {p0, v1}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/b/c/d;->h(Ljava/lang/String;)V

    const-string v1, "pcode"

    invoke-static {p0, v1}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/b/c/d;->m(Ljava/lang/String;)V

    const-string v1, "direction"

    invoke-static {p0, v1}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/b/c/d;->l(Ljava/lang/String;)V

    const-string v1, "distance"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "distance"

    invoke-static {p0, v1}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/cj;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v5, v1}, Lcom/amap/api/b/c/d;->a(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    const-string v1, "tel"

    invoke-static {p0, v1}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/b/c/d;->f(Ljava/lang/String;)V

    const-string v1, "type"

    invoke-static {p0, v1}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/b/c/d;->e(Ljava/lang/String;)V

    const-string v1, "entr_location"

    invoke-static {p0, v1}, Lcom/amap/api/col/cj;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/b/c/b;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/b/c/d;->a(Lcom/amap/api/b/c/b;)V

    const-string v1, "exit_location"

    invoke-static {p0, v1}, Lcom/amap/api/col/cj;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/b/c/b;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/b/c/d;->b(Lcom/amap/api/b/c/b;)V

    const-string v1, "website"

    invoke-static {p0, v1}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/b/c/d;->i(Ljava/lang/String;)V

    const-string v1, "postcode"

    invoke-static {p0, v1}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/b/c/d;->j(Ljava/lang/String;)V

    const-string v1, "business_area"

    invoke-static {p0, v1}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/b/c/d;->a(Ljava/lang/String;)V

    const-string v1, "email"

    invoke-static {p0, v1}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/b/c/d;->k(Ljava/lang/String;)V

    const-string v1, "indoor_map"

    invoke-static {p0, v1}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/cj;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v5, v0}, Lcom/amap/api/b/c/d;->a(Z)V

    :goto_1
    const-string v1, "parking_type"

    invoke-static {p0, v1}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/b/c/d;->n(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "children"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "children"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {v5, v1}, Lcom/amap/api/b/c/d;->a(Ljava/util/List;)V

    :cond_1
    :goto_2
    const-string v0, "indoor_data"

    invoke-static {p0, v0}, Lcom/amap/api/col/cj;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/b/i/a;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amap/api/b/c/d;->a(Lcom/amap/api/b/i/a;)V

    const-string v0, "biz_ext"

    invoke-static {p0, v0}, Lcom/amap/api/col/cj;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/b/i/e;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amap/api/b/c/d;->a(Lcom/amap/api/b/i/e;)V

    const-string v0, "typecode"

    invoke-static {p0, v0}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amap/api/b/c/d;->o(Ljava/lang/String;)V

    const-string v0, "shopid"

    invoke-static {p0, v0}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amap/api/b/c/d;->p(Ljava/lang/String;)V

    invoke-static {v5, p0}, Lcom/amap/api/col/cj;->a(Lcom/amap/api/b/c/d;Lorg/json/JSONObject;)V

    return-object v5

    :catch_0
    move-exception v1

    const-string v2, "JSONHelper"

    const-string v3, "parseBasePoi"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/ci;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const-string v2, "JSONHelper"

    const-string v3, "parseBasePoi"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/ci;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lcom/amap/api/b/c/d;->a(Z)V

    goto :goto_1

    :cond_3
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_5

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_4

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-static {v3}, Lcom/amap/api/col/cj;->d(Lorg/json/JSONObject;)Lcom/amap/api/b/i/i;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    invoke-virtual {v5, v1}, Lcom/amap/api/b/c/d;->a(Ljava/util/List;)V

    goto :goto_2
.end method

.method public static b(Lorg/json/JSONArray;Lcom/amap/api/b/e/g;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    new-instance v2, Lcom/amap/api/b/e/k;

    invoke-direct {v2}, Lcom/amap/api/b/e/k;-><init>()V

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v4, "id"

    invoke-static {v3, v4}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/b/e/k;->a(Ljava/lang/String;)V

    const-string v4, "name"

    invoke-static {v3, v4}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/b/e/k;->b(Ljava/lang/String;)V

    const-string v4, "location"

    invoke-static {v3, v4}, Lcom/amap/api/col/cj;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/b/c/b;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/b/e/k;->a(Lcom/amap/api/b/c/b;)V

    const-string v4, "direction"

    invoke-static {v3, v4}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/b/e/k;->c(Ljava/lang/String;)V

    const-string v4, "distance"

    invoke-static {v3, v4}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/col/cj;->e(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amap/api/b/e/k;->a(F)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Lcom/amap/api/b/e/g;->a(Ljava/util/List;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/b/i/a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v2, ""

    const/4 v1, 0x0

    const-string v0, ""

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "cpid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "floor"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "cpid"

    invoke-static {v3, v0}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "floor"

    invoke-static {v3, v0}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/cj;->d(Ljava/lang/String;)I

    move-result v1

    const-string v0, "truefloor"

    invoke-static {v3, v0}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v3, Lcom/amap/api/b/i/a;

    invoke-direct {v3, v2, v1, v0}, Lcom/amap/api/b/i/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v3
.end method

.method public static c(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/b/e/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "businessAreas"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/amap/api/b/e/c;

    invoke-direct {v3}, Lcom/amap/api/b/e/c;-><init>()V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v5, "location"

    invoke-static {v4, v5}, Lcom/amap/api/col/cj;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/b/c/b;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/b/e/c;->a(Lcom/amap/api/b/c/b;)V

    const-string v5, "name"

    invoke-static {v4, v5}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/b/e/c;->a(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public static c(Lorg/json/JSONArray;Lcom/amap/api/b/e/g;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    new-instance v2, Lcom/amap/api/b/e/a;

    invoke-direct {v2}, Lcom/amap/api/b/e/a;-><init>()V

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v4, "id"

    invoke-static {v3, v4}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/b/e/a;->a(Ljava/lang/String;)V

    const-string v4, "name"

    invoke-static {v3, v4}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/b/e/a;->b(Ljava/lang/String;)V

    const-string v4, "adcode"

    invoke-static {v3, v4}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/b/e/a;->c(Ljava/lang/String;)V

    const-string v4, "location"

    invoke-static {v3, v4}, Lcom/amap/api/col/cj;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/b/c/b;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/b/e/a;->a(Lcom/amap/api/b/c/b;)V

    const-string v4, "area"

    invoke-static {v3, v4}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/col/cj;->e(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/b/e/a;->a(Ljava/lang/Float;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Lcom/amap/api/b/e/g;->e(Ljava/util/List;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "[]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "JSONHelper"

    const-string v3, "str2int"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/ci;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static d(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/b/i/e;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v1, ""

    const-string v0, ""

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v0, "open_time"

    invoke-static {v2, v0}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "rating"

    invoke-static {v2, v0}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Lcom/amap/api/b/i/e;

    invoke-direct {v2, v1, v0}, Lcom/amap/api/b/i/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static d(Lorg/json/JSONObject;)Lcom/amap/api/b/i/i;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p0, v0}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "location"

    invoke-static {p0, v1}, Lcom/amap/api/col/cj;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/b/c/b;

    move-result-object v1

    const-string v2, "name"

    invoke-static {p0, v2}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "address"

    invoke-static {p0, v3}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/amap/api/b/i/i;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/amap/api/b/i/i;-><init>(Ljava/lang/String;Lcom/amap/api/b/c/b;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sname"

    invoke-static {p0, v0}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/b/i/i;->a(Ljava/lang/String;)V

    const-string v0, "subtype"

    invoke-static {p0, v0}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/b/i/i;->b(Ljava/lang/String;)V

    const-string v0, "distance"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "distance"

    invoke-static {p0, v0}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/cj;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Lcom/amap/api/b/i/i;->a(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    const-string v1, "JSONHelper"

    const-string v2, "parseSubPoiItem"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ci;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "JSONHelper"

    const-string v2, "parseSubPoiItem"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ci;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)F
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "[]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "JSONHelper"

    const-string v3, "str2float"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/ci;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static e(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/b/i/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "photos"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "photos"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/amap/api/b/i/c;

    invoke-direct {v4}, Lcom/amap/api/b/i/c;-><init>()V

    const-string v5, "title"

    invoke-static {v3, v5}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/b/i/c;->a(Ljava/lang/String;)V

    const-string v5, "url"

    invoke-static {v3, v5}, Lcom/amap/api/col/cj;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/amap/api/b/i/c;->b(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
