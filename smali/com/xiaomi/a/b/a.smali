.class public Lcom/xiaomi/a/b/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bpT:Ljava/util/List;

.field private bpU:Z

.field private bpV:Lcom/xiaomi/a/b/d;

.field private bpW:Ljava/util/Map;

.field private bpX:Lcom/xiaomi/a/b/b;

.field private mName:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xiaomi/a/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/a/b/a;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/a/b/a;->bpU:Z

    iput-object p1, p0, Lcom/xiaomi/a/b/a;->bpW:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public bNO(Lcom/xiaomi/a/j;)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/a/b/a;->bpX:Lcom/xiaomi/a/b/b;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/a/b/a;->bpV:Lcom/xiaomi/a/b/d;

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/a/b/a;->bpT:Ljava/util/List;

    if-nez v0, :cond_4

    return v3

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/a/b/a;->bpX:Lcom/xiaomi/a/b/b;

    invoke-virtual {v0, p1}, Lcom/xiaomi/a/b/b;->bNQ(Lcom/xiaomi/a/j;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/a/b/a;->bpV:Lcom/xiaomi/a/b/d;

    invoke-virtual {v0, p1}, Lcom/xiaomi/a/b/d;->bNS(Lcom/xiaomi/a/j;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/a/b/a;->bpT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v6, v0

    move v4, v2

    :goto_0
    if-ge v4, v6, :cond_8

    aget-object v1, v0, v4

    iget-object v7, p0, Lcom/xiaomi/a/b/a;->bpW:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/a/b/a;

    invoke-virtual {v1, p1}, Lcom/xiaomi/a/b/a;->bNO(Lcom/xiaomi/a/j;)Z

    move-result v1

    if-eqz v1, :cond_6

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :cond_6
    move v0, v2

    :goto_1
    if-eqz v0, :cond_5

    return v3

    :cond_7
    return v2

    :cond_8
    move v0, v3

    goto :goto_1
.end method

.method public bNP()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/a/b/a;->bpU:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/b/a;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/a/b/a;->mType:I

    return v0
.end method

.method public init(Lorg/json/JSONObject;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "sms_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    :try_start_0
    const-string/jumbo v0, "sms_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_0
    const-string/jumbo v0, "assist"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_1
    :goto_1
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_2
    const-string/jumbo v0, "address"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    :goto_3
    const-string/jumbo v0, "body"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_4
    const-string/jumbo v0, "combi"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/a/b/a;->bpX:Lcom/xiaomi/a/b/b;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_b

    :cond_3
    return v7

    :cond_4
    const-string/jumbo v0, "assist"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_5
    :try_start_1
    const-string/jumbo v0, "sms_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/a/b/a;->mType:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/xiaomi/a/b/a;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "JSONException when decode features."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6
    :try_start_2
    const-string/jumbo v0, "assist"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/a/b/a;->bpU:Z

    goto :goto_1

    :cond_7
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/a/b/a;->mName:Ljava/lang/String;

    goto :goto_2

    :cond_8
    new-instance v0, Lcom/xiaomi/a/b/b;

    const-string/jumbo v2, "address"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaomi/a/b/b;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/xiaomi/a/b/a;->bpX:Lcom/xiaomi/a/b/b;

    goto :goto_3

    :cond_9
    new-instance v0, Lcom/xiaomi/a/b/d;

    const-string/jumbo v2, "body"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaomi/a/b/d;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/xiaomi/a/b/a;->bpV:Lcom/xiaomi/a/b/d;

    goto :goto_4

    :cond_a
    const-string/jumbo v0, "combi"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/a/b/a;->bpT:Ljava/util/List;

    move v0, v1

    :goto_5
    if-ge v0, v3, :cond_2

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/a/b/a;->bpT:Ljava/util/List;

    const-string/jumbo v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/xiaomi/a/b/a;->bpV:Lcom/xiaomi/a/b/d;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/a/b/a;->bpT:Ljava/util/List;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v0, :cond_3

    return v1
.end method
