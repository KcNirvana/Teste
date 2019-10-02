.class public Lcom/facebook/ads/internal/u/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/facebook/ads/internal/u/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/ads/internal/u/d;

    invoke-direct {v0}, Lcom/facebook/ads/internal/u/d;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/u/d;->a:Lcom/facebook/ads/internal/u/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/facebook/ads/internal/u/d;
    .locals 2

    const-class v0, Lcom/facebook/ads/internal/u/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/facebook/ads/internal/u/d;->a:Lcom/facebook/ads/internal/u/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/u/f;
    .locals 8

    const-string v0, "placements"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "definition"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/m/d;->a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/m/d;

    move-result-object v2

    const-string v3, "feature_config"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ad_reporting_config"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/facebook/ads/internal/m/c;

    invoke-direct {v5, v2, v3, v4}, Lcom/facebook/ads/internal/m/c;-><init>(Lcom/facebook/ads/internal/m/d;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ads"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ads"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "adapter"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "data_model_type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "data"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "trackers"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v7, Lcom/facebook/ads/internal/m/a;

    invoke-direct {v7, v3, v4, v6, v2}, Lcom/facebook/ads/internal/m/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)V

    invoke-virtual {v5, v7}, Lcom/facebook/ads/internal/m/c;->a(Lcom/facebook/ads/internal/m/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "server_request_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "server_response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "an_validation_uuid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/facebook/ads/internal/u/f;

    invoke-direct {v2, v5, v0, v1, p1}, Lcom/facebook/ads/internal/u/f;-><init>(Lcom/facebook/ads/internal/m/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private b(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/u/g;
    .locals 7

    :try_start_0
    const-string v0, "placements"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "definition"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/m/d;->a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/m/d;

    move-result-object v2

    const-string v3, "feature_config"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ad_reporting_config"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/facebook/ads/internal/u/g;

    const-string v5, "message"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "code"

    invoke-virtual {p1, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v6, Lcom/facebook/ads/internal/m/c;

    invoke-direct {v6, v2, v3, v0}, Lcom/facebook/ads/internal/m/c;-><init>(Lcom/facebook/ads/internal/m/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5, v1, v6}, Lcom/facebook/ads/internal/u/g;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/m/c;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/u/d;->c(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/u/g;

    move-result-object p1

    return-object p1
.end method

.method private c(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/u/g;
    .locals 4

    new-instance v0, Lcom/facebook/ads/internal/u/g;

    const-string v1, "message"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "code"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/facebook/ads/internal/u/g;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/m/c;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/facebook/ads/internal/u/e;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "type"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x178b0

    if-eq v2, v3, :cond_1

    const v3, 0x5c4d208

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "error"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "ads"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :cond_2
    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string p1, "error"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/u/d;->c(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/u/g;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/u/d;->b(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/u/g;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/u/d;->a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/u/f;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Lcom/facebook/ads/internal/u/e;

    sget-object v0, Lcom/facebook/ads/internal/u/e$a;->a:Lcom/facebook/ads/internal/u/e$a;

    invoke-direct {p1, v0}, Lcom/facebook/ads/internal/u/e;-><init>(Lcom/facebook/ads/internal/u/e$a;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
