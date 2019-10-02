.class public Lcom/xiaomi/miglobaladsdk/a/d;
.super Ljava/lang/Object;
.source "ConfigResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/miglobaladsdk/a/d$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/miglobaladsdk/a/d$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/d;->a:Ljava/util/Map;

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p0, v1, :cond_1

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "ct"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "app"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method static b(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "poslist"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method static c(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/a/d;
    .locals 13

    const-string v0, "ConfigRequestLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createFromConfigJson->json= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Lcom/xiaomi/miglobaladsdk/a/d;

    invoke-direct {v0}, Lcom/xiaomi/miglobaladsdk/a/d;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "poslist"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    new-instance v4, Lcom/xiaomi/miglobaladsdk/a/d$a;

    invoke-direct {v4}, Lcom/xiaomi/miglobaladsdk/a/d$a;-><init>()V

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "dcid"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/xiaomi/miglobaladsdk/a/d$a;->a:Ljava/lang/String;

    const-string v6, "adtype"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Lcom/xiaomi/miglobaladsdk/a/d$a;->d:I

    const-string v6, "placeid"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/xiaomi/miglobaladsdk/a/d$a;->b:Ljava/lang/String;

    const-string v6, "extra"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/xiaomi/miglobaladsdk/a/d$a;->c:Ljava/lang/String;

    const-string v6, "timeout"

    const/16 v7, 0x1f40

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v4, Lcom/xiaomi/miglobaladsdk/a/d$a;->e:I

    iget v6, v4, Lcom/xiaomi/miglobaladsdk/a/d$a;->e:I

    const/16 v7, 0x3e8

    const v8, 0x493e0

    invoke-static {v6, v7, v8}, Lcom/xiaomi/utils/f;->a(III)I

    move-result v6

    iput v6, v4, Lcom/xiaomi/miglobaladsdk/a/d$a;->e:I

    const-string v6, "dspParallelismD"

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v4, Lcom/xiaomi/miglobaladsdk/a/d$a;->f:I

    const-string v6, "xoutTime"

    const/16 v7, 0x5a0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v4, Lcom/xiaomi/miglobaladsdk/a/d$a;->h:I

    const-string v6, "isBid"

    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v4, Lcom/xiaomi/miglobaladsdk/a/d$a;->i:Z

    const-string v6, "ConfigResponse"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get XoutTime: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Lcom/xiaomi/miglobaladsdk/a/d$a;->h:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/utils/DeviceUtils;->isE10()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "ConfigResponse"

    const-string v7, "High-end model protection don\'t need load ad "

    invoke-static {v6, v7}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "isClosed"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v4, Lcom/xiaomi/miglobaladsdk/a/d$a;->g:Z

    goto :goto_1

    :cond_1
    const-string v6, "isClosed"

    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v4, Lcom/xiaomi/miglobaladsdk/a/d$a;->g:Z

    :goto_1
    const-string v6, "ConfigResponse"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeout= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Lcom/xiaomi/miglobaladsdk/a/d$a;->e:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "&adPos.isClosed= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v4, Lcom/xiaomi/miglobaladsdk/a/d$a;->g:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "&adPos.dspParallelismDegree= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Lcom/xiaomi/miglobaladsdk/a/d$a;->f:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "&isBid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v4, Lcom/xiaomi/miglobaladsdk/a/d$a;->i:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "&placeid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/xiaomi/miglobaladsdk/a/d$a;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "info"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_4

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_4

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_3

    const-string v8, "weight"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_3

    const-string v9, "name"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v4, Lcom/xiaomi/miglobaladsdk/a/d$a;->j:Ljava/util/List;

    new-instance v11, Lcom/xiaomi/miglobaladsdk/a/a$a;

    invoke-direct {v11}, Lcom/xiaomi/miglobaladsdk/a/a$a;-><init>()V

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_2
    move-object v9, v1

    :goto_3
    invoke-virtual {v11, v9}, Lcom/xiaomi/miglobaladsdk/a/a$a;->d(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/a/a$a;

    move-result-object v9

    iget-object v11, v4, Lcom/xiaomi/miglobaladsdk/a/d$a;->b:Ljava/lang/String;

    invoke-virtual {v9, v11}, Lcom/xiaomi/miglobaladsdk/a/a$a;->b(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/a/a$a;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/xiaomi/miglobaladsdk/a/a$a;->a(Ljava/lang/Integer;)Lcom/xiaomi/miglobaladsdk/a/a$a;

    move-result-object v8

    iget v9, v4, Lcom/xiaomi/miglobaladsdk/a/d$a;->d:I

    invoke-virtual {v8, v9}, Lcom/xiaomi/miglobaladsdk/a/a$a;->a(I)Lcom/xiaomi/miglobaladsdk/a/a$a;

    move-result-object v8

    const-string v9, "parameter"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/xiaomi/miglobaladsdk/a/a$a;->c(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/a/a$a;

    move-result-object v7

    iget-object v8, v4, Lcom/xiaomi/miglobaladsdk/a/d$a;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/xiaomi/miglobaladsdk/a/a$a;->a(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/a/a$a;

    move-result-object v7

    iget v8, v4, Lcom/xiaomi/miglobaladsdk/a/d$a;->e:I

    invoke-virtual {v7, v8}, Lcom/xiaomi/miglobaladsdk/a/a$a;->b(I)Lcom/xiaomi/miglobaladsdk/a/a$a;

    move-result-object v7

    iget-boolean v8, v4, Lcom/xiaomi/miglobaladsdk/a/d$a;->g:Z

    invoke-virtual {v7, v8}, Lcom/xiaomi/miglobaladsdk/a/a$a;->a(Z)Lcom/xiaomi/miglobaladsdk/a/a$a;

    move-result-object v7

    iget v8, v4, Lcom/xiaomi/miglobaladsdk/a/d$a;->f:I

    invoke-virtual {v7, v8}, Lcom/xiaomi/miglobaladsdk/a/a$a;->c(I)Lcom/xiaomi/miglobaladsdk/a/a$a;

    move-result-object v7

    iget-object v8, v4, Lcom/xiaomi/miglobaladsdk/a/d$a;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/xiaomi/miglobaladsdk/a/a$a;->e(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/a/a$a;

    move-result-object v7

    iget v8, v4, Lcom/xiaomi/miglobaladsdk/a/d$a;->h:I

    invoke-virtual {v7, v8}, Lcom/xiaomi/miglobaladsdk/a/a$a;->d(I)Lcom/xiaomi/miglobaladsdk/a/a$a;

    move-result-object v7

    iget-boolean v8, v4, Lcom/xiaomi/miglobaladsdk/a/d$a;->i:Z

    invoke-virtual {v7, v8}, Lcom/xiaomi/miglobaladsdk/a/a$a;->b(Z)Lcom/xiaomi/miglobaladsdk/a/a$a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/miglobaladsdk/a/a$a;->a()Lcom/xiaomi/miglobaladsdk/a/a;

    move-result-object v7

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_4
    iget-object v5, v4, Lcom/xiaomi/miglobaladsdk/a/d$a;->j:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v5, v0, Lcom/xiaomi/miglobaladsdk/a/d;->a:Ljava/util/Map;

    iget-object v6, v4, Lcom/xiaomi/miglobaladsdk/a/d$a;->b:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    move-object v0, v1

    :goto_4
    const-string v1, "ConfigResponse"

    const-string v2, "ConfigResponse create error"

    invoke-static {v1, v2, p0}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return-object v0
.end method


# virtual methods
.method a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/miglobaladsdk/a/d$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/d;->a:Ljava/util/Map;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "{null}"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/a/d;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/miglobaladsdk/a/d$a;

    const-string v3, "pos:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/xiaomi/miglobaladsdk/a/d$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " adtype:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/xiaomi/miglobaladsdk/a/d$a;->d:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":poslist{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/xiaomi/miglobaladsdk/a/d$a;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/miglobaladsdk/a/a;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v2, "}\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
