.class public Lcom/miui/systemAdSolution/common/AdInfo;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final KEY_DIGEST:Ljava/lang/String; = "digest"

.field private static final KEY_END_TIME_IN_MAILLS:Ljava/lang/String; = "endTimeInMillis"

.field private static final KEY_EXTRA:Ljava/lang/String; = "extra"

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_MATERIALS:Ljava/lang/String; = "materials"

.field private static final KEY_START_TIME_IN_MAILLS:Ljava/lang/String; = "startTimeInMillis"

.field private static final KEY_TAG_ID:Ljava/lang/String; = "tagId"

.field private static final TAG:Ljava/lang/String; = "AdInfo"


# instance fields
.field private mDigest:Ljava/lang/String;

.field private mEndTimeInMillis:J

.field private mExtra:Ljava/lang/String;

.field private mId:J

.field private mMaterials:Ljava/util/List;

.field private mStartTimeInMillis:J

.field private mTagId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/systemAdSolution/common/AdInfo;->mId:J

    const-string/jumbo v0, "tagId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/systemAdSolution/common/AdInfo;->mTagId:Ljava/lang/String;

    const-string/jumbo v0, "startTimeInMillis"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/systemAdSolution/common/AdInfo;->mStartTimeInMillis:J

    const-string/jumbo v0, "endTimeInMillis"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/systemAdSolution/common/AdInfo;->mEndTimeInMillis:J

    const-string/jumbo v0, "materials"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/systemAdSolution/common/AdInfo;->parseMaterials(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/systemAdSolution/common/AdInfo;->mMaterials:Ljava/util/List;

    const-string/jumbo v0, "digest"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/systemAdSolution/common/AdInfo;->mDigest:Ljava/lang/String;

    const-string/jumbo v0, "extra"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/systemAdSolution/common/AdInfo;->mExtra:Ljava/lang/String;

    return-void
.end method

.method public static deserialize(Ljava/lang/String;)Lcom/miui/systemAdSolution/common/AdInfo;
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/systemAdSolution/common/AdInfo;->valueOf(Lorg/json/JSONObject;)Lcom/miui/systemAdSolution/common/AdInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method private parseMaterials(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/miui/systemAdSolution/common/Material;->parse(Lorg/json/JSONObject;Z)Lcom/miui/systemAdSolution/common/Material;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static valueOf(Lorg/json/JSONObject;)Lcom/miui/systemAdSolution/common/AdInfo;
    .locals 1

    new-instance v0, Lcom/miui/systemAdSolution/common/AdInfo;

    invoke-direct {v0, p0}, Lcom/miui/systemAdSolution/common/AdInfo;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/miui/systemAdSolution/common/AdInfo;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemAdSolution/common/AdInfo;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/systemAdSolution/common/AdInfo;->clone()Lcom/miui/systemAdSolution/common/AdInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDigest()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/AdInfo;->mDigest:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTimeInMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/systemAdSolution/common/AdInfo;->mEndTimeInMillis:J

    return-wide v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/AdInfo;->mExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/systemAdSolution/common/AdInfo;->mId:J

    return-wide v0
.end method

.method public getMaterialById(J)Lcom/miui/systemAdSolution/common/Material;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/AdInfo;->mMaterials:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/AdInfo;->mMaterials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-object v4

    :cond_1
    iget-object v0, p0, Lcom/miui/systemAdSolution/common/AdInfo;->mMaterials:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemAdSolution/common/Material;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/systemAdSolution/common/Material;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    return-object v0

    :cond_3
    return-object v4
.end method

.method public getMaterials()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/AdInfo;->mMaterials:Ljava/util/List;

    return-object v0
.end method

.method public getResourceById(JJ)Lcom/miui/systemAdSolution/common/Material$Resource;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/miui/systemAdSolution/common/AdInfo;->getMaterialById(J)Lcom/miui/systemAdSolution/common/Material;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/systemAdSolution/common/AdInfo;->getResourceById(JJ)Lcom/miui/systemAdSolution/common/Material$Resource;

    move-result-object v0

    return-object v0
.end method

.method public getResourceById(Lcom/miui/systemAdSolution/common/Material;J)Lcom/miui/systemAdSolution/common/Material$Resource;
    .locals 6

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {p1}, Lcom/miui/systemAdSolution/common/Material;->getResources()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return-object v4

    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemAdSolution/common/Material$Resource;

    invoke-virtual {v0}, Lcom/miui/systemAdSolution/common/Material$Resource;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-nez v2, :cond_3

    return-object v0

    :cond_4
    return-object v4
.end method

.method public getStartTimeInMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/systemAdSolution/common/AdInfo;->mStartTimeInMillis:J

    return-wide v0
.end method

.method public getTagId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/AdInfo;->mTagId:Ljava/lang/String;

    return-object v0
.end method

.method public isInvalid()Z
    .locals 6

    invoke-virtual {p0}, Lcom/miui/systemAdSolution/common/AdInfo;->getStartTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/systemAdSolution/common/AdInfo;->getEndTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    cmp-long v0, v4, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public serialize()Ljava/lang/String;
    .locals 3

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/AdInfo;->mMaterials:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/AdInfo;->mMaterials:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemAdSolution/common/Material;

    invoke-virtual {v0}, Lcom/miui/systemAdSolution/common/Material;->serialize()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/systemAdSolution/common/AdInfo;->serialize(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "id"

    iget-wide v2, p0, Lcom/miui/systemAdSolution/common/AdInfo;->mId:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "tagId"

    iget-object v2, p0, Lcom/miui/systemAdSolution/common/AdInfo;->mTagId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "startTimeInMillis"

    iget-wide v2, p0, Lcom/miui/systemAdSolution/common/AdInfo;->mStartTimeInMillis:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "endTimeInMillis"

    iget-wide v2, p0, Lcom/miui/systemAdSolution/common/AdInfo;->mEndTimeInMillis:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "materials"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "digest"

    iget-object v2, p0, Lcom/miui/systemAdSolution/common/AdInfo;->mDigest:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "extra"

    iget-object v2, p0, Lcom/miui/systemAdSolution/common/AdInfo;->mExtra:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AdInfo"

    const-string/jumbo v2, "parse failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v4
.end method
