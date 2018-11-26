.class public Lcom/xiaomi/a/b/b;
.super Lcom/xiaomi/a/b/c;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bpY:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xiaomi/a/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/a/b/b;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/xiaomi/a/b/c;-><init>(Lorg/json/JSONObject;)V

    :try_start_0
    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/xiaomi/a/b/b;->bpY:[I

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/a/b/b;->bpY:[I

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    aput v3, v2, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v0, Lcom/xiaomi/a/b/b;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "JSONException when decode KEY_TYPE features."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public bNQ(Lcom/xiaomi/a/j;)Z
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/xiaomi/a/j;->bOT()I

    move-result v2

    iget-object v0, p0, Lcom/xiaomi/a/b/b;->bpY:[I

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/a/j;->bOU()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/xiaomi/a/b/c;->bNR(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/a/b/b;->bpY:[I

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v3, p0, Lcom/xiaomi/a/b/b;->bpY:[I

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_3

    aget v5, v3, v0

    if-eq v5, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_0

    return v1

    :cond_3
    move v0, v1

    goto :goto_1
.end method
