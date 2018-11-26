.class public Lcom/xiaomi/a/b/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bqi:Ljava/util/Map;

.field private bqj:Ljava/util/List;

.field private mInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xiaomi/a/b/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/a/b/e;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/a/b/e;->mInited:Z

    return-void
.end method

.method public static bNW(I)I
    .locals 5

    const/4 v1, 0x0

    const/high16 v0, 0xfff0000

    and-int/2addr v0, p0

    shr-int/lit8 v2, v0, 0x10

    const/4 v0, 0x1

    move v4, v0

    move v0, v1

    move v1, v4

    :goto_0
    if-eqz v2, :cond_1

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_0

    :goto_1
    shr-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v0, v1

    goto :goto_1

    :cond_1
    return v0
.end method

.method public static bNX(I)I
    .locals 5

    const/4 v1, 0x0

    const v0, 0xffff

    and-int/2addr v0, p0

    shr-int/lit8 v2, v0, 0x4

    const/16 v0, 0xc

    move v4, v0

    move v0, v1

    move v1, v4

    :goto_0
    if-eqz v2, :cond_1

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_0

    :goto_1
    shr-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    add-int/2addr v0, v1

    goto :goto_1

    :cond_1
    return v0
.end method


# virtual methods
.method public bNT(Lcom/xiaomi/a/j;)I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/a/b/e;->bqj:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/a/b/a;

    invoke-virtual {v0}, Lcom/xiaomi/a/b/a;->bNP()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, p1}, Lcom/xiaomi/a/b/a;->bNO(Lcom/xiaomi/a/j;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/a/b/a;->getType()I

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_1
    return v1
.end method

.method public bNU(Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/a/b/e;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Version:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "features"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    sget-object v0, Lcom/xiaomi/a/b/e;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "feature count:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/a/b/e;->bqi:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/a/b/e;->bqj:Ljava/util/List;

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    new-instance v4, Lcom/xiaomi/a/b/a;

    iget-object v5, p0, Lcom/xiaomi/a/b/e;->bqi:Ljava/util/Map;

    invoke-direct {v4, v5}, Lcom/xiaomi/a/b/a;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaomi/a/b/a;->init(Lorg/json/JSONObject;)Z

    move-result v5

    if-nez v5, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/xiaomi/a/b/e;->bqi:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/xiaomi/a/b/a;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaomi/a/b/e;->bqj:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iput-boolean v1, p0, Lcom/xiaomi/a/b/e;->mInited:Z

    sget-object v1, Lcom/xiaomi/a/b/e;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "JSONException when load features from pattern files"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/xiaomi/a/b/e;->mInited:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public bNV()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/a/b/e;->mInited:Z

    return v0
.end method
