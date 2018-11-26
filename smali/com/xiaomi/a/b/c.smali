.class public abstract Lcom/xiaomi/a/b/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bpZ:[Ljava/util/regex/Pattern;

.field protected bqa:[Ljava/lang/String;

.field private bqb:[Ljava/util/regex/Pattern;

.field private bqc:[Ljava/util/regex/Pattern;

.field protected bqd:[Ljava/lang/String;

.field protected bqe:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xiaomi/a/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/a/b/c;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string/jumbo v1, "pattern"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    const-string/jumbo v1, "neg_pattern"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_1
    const-string/jumbo v1, "or_pattern"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v1, "pattern"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaomi/a/b/c;->bqd:[Ljava/lang/String;

    new-array v1, v3, [Ljava/util/regex/Pattern;

    iput-object v1, p0, Lcom/xiaomi/a/b/c;->bpZ:[Ljava/util/regex/Pattern;

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    iget-object v4, p0, Lcom/xiaomi/a/b/c;->bqd:[Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v4, p0, Lcom/xiaomi/a/b/c;->bpZ:[Ljava/util/regex/Pattern;

    iget-object v5, p0, Lcom/xiaomi/a/b/c;->bqd:[Ljava/lang/String;

    aget-object v5, v5, v1

    const/4 v6, 0x2

    invoke-static {v5, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "neg_pattern"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaomi/a/b/c;->bqa:[Ljava/lang/String;

    new-array v1, v3, [Ljava/util/regex/Pattern;

    iput-object v1, p0, Lcom/xiaomi/a/b/c;->bqb:[Ljava/util/regex/Pattern;

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_1

    iget-object v4, p0, Lcom/xiaomi/a/b/c;->bqa:[Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v4, p0, Lcom/xiaomi/a/b/c;->bqb:[Ljava/util/regex/Pattern;

    iget-object v5, p0, Lcom/xiaomi/a/b/c;->bqa:[Ljava/lang/String;

    aget-object v5, v5, v1

    const/4 v6, 0x2

    invoke-static {v5, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    const-string/jumbo v1, "or_pattern"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/xiaomi/a/b/c;->bqe:[Ljava/lang/String;

    new-array v3, v2, [Ljava/util/regex/Pattern;

    iput-object v3, p0, Lcom/xiaomi/a/b/c;->bqc:[Ljava/util/regex/Pattern;

    :goto_3
    if-ge v0, v2, :cond_2

    iget-object v3, p0, Lcom/xiaomi/a/b/c;->bqe:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/xiaomi/a/b/c;->bqc:[Ljava/util/regex/Pattern;

    iget-object v4, p0, Lcom/xiaomi/a/b/c;->bqe:[Ljava/lang/String;

    aget-object v4, v4, v0

    const/4 v5, 0x2

    invoke-static {v4, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    aput-object v4, v3, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    sget-object v0, Lcom/xiaomi/a/b/c;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "JSONException when decode KEY_PATTERN features."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method protected bNR(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/a/b/c;->bpZ:[Ljava/util/regex/Pattern;

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/a/b/c;->bqb:[Ljava/util/regex/Pattern;

    if-nez v0, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/a/b/c;->bqc:[Ljava/util/regex/Pattern;

    if-nez v0, :cond_7

    :cond_2
    return v5

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/a/b/c;->bpZ:[Ljava/util/regex/Pattern;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/xiaomi/a/b/c;->bpZ:[Ljava/util/regex/Pattern;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/a/b/c;->bqb:[Ljava/util/regex/Pattern;

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v2, p0, Lcom/xiaomi/a/b/c;->bqb:[Ljava/util/regex/Pattern;

    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return v1

    :cond_7
    iget-object v0, p0, Lcom/xiaomi/a/b/c;->bqc:[Ljava/util/regex/Pattern;

    array-length v0, v0

    if-lez v0, :cond_2

    iget-object v2, p0, Lcom/xiaomi/a/b/c;->bqc:[Ljava/util/regex/Pattern;

    array-length v3, v2

    move v0, v1

    :goto_2
    if-ge v0, v3, :cond_9

    aget-object v4, v2, v0

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    return v5

    :cond_9
    return v1
.end method
