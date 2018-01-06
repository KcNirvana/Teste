.class final Lcom/xiaomi/metoknlp/c/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:D

.field private final f:D

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:J

.field private final j:J

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/util/List;


# direct methods
.method private constructor <init>(Lcom/xiaomi/metoknlp/c/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/metoknlp/c/d;->a(Lcom/xiaomi/metoknlp/c/d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/metoknlp/c/f;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/metoknlp/c/d;->b(Lcom/xiaomi/metoknlp/c/d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/metoknlp/c/f;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/metoknlp/c/d;->c(Lcom/xiaomi/metoknlp/c/d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/metoknlp/c/f;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/metoknlp/c/d;->d(Lcom/xiaomi/metoknlp/c/d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/metoknlp/c/f;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/metoknlp/c/d;->e(Lcom/xiaomi/metoknlp/c/d;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/metoknlp/c/f;->e:D

    invoke-static {p1}, Lcom/xiaomi/metoknlp/c/d;->f(Lcom/xiaomi/metoknlp/c/d;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/metoknlp/c/f;->f:D

    invoke-static {p1}, Lcom/xiaomi/metoknlp/c/d;->g(Lcom/xiaomi/metoknlp/c/d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/metoknlp/c/f;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/metoknlp/c/d;->h(Lcom/xiaomi/metoknlp/c/d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/metoknlp/c/f;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/metoknlp/c/d;->i(Lcom/xiaomi/metoknlp/c/d;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/metoknlp/c/f;->i:J

    invoke-static {p1}, Lcom/xiaomi/metoknlp/c/d;->j(Lcom/xiaomi/metoknlp/c/d;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/metoknlp/c/f;->j:J

    invoke-static {p1}, Lcom/xiaomi/metoknlp/c/d;->k(Lcom/xiaomi/metoknlp/c/d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/metoknlp/c/f;->k:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/metoknlp/c/d;->l(Lcom/xiaomi/metoknlp/c/d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/metoknlp/c/f;->l:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/metoknlp/c/d;->m(Lcom/xiaomi/metoknlp/c/d;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/metoknlp/c/f;->m:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/metoknlp/c/d;Lcom/xiaomi/metoknlp/c/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/metoknlp/c/f;-><init>(Lcom/xiaomi/metoknlp/c/d;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "m"

    iget-object v2, p0, Lcom/xiaomi/metoknlp/c/f;->a:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/xiaomi/metoknlp/c/f;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "i"

    iget-object v2, p0, Lcom/xiaomi/metoknlp/c/f;->b:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/xiaomi/metoknlp/c/f;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "a"

    iget-object v2, p0, Lcom/xiaomi/metoknlp/c/f;->c:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/xiaomi/metoknlp/c/f;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "o"

    iget-object v2, p0, Lcom/xiaomi/metoknlp/c/f;->d:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/xiaomi/metoknlp/c/f;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "lg"

    iget-wide v2, p0, Lcom/xiaomi/metoknlp/c/f;->e:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/xiaomi/metoknlp/c/f;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "lt"

    iget-wide v2, p0, Lcom/xiaomi/metoknlp/c/f;->f:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/xiaomi/metoknlp/c/f;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "am"

    iget-object v2, p0, Lcom/xiaomi/metoknlp/c/f;->g:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/xiaomi/metoknlp/c/f;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "as"

    iget-object v2, p0, Lcom/xiaomi/metoknlp/c/f;->h:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/xiaomi/metoknlp/c/f;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ast"

    iget-wide v2, p0, Lcom/xiaomi/metoknlp/c/f;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/xiaomi/metoknlp/c/f;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ad"

    iget-wide v2, p0, Lcom/xiaomi/metoknlp/c/f;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/xiaomi/metoknlp/c/f;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ds"

    iget-object v2, p0, Lcom/xiaomi/metoknlp/c/f;->k:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/xiaomi/metoknlp/c/f;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "dm"

    iget-object v2, p0, Lcom/xiaomi/metoknlp/c/f;->l:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/xiaomi/metoknlp/c/f;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/f;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v0, "devices"

    invoke-direct {p0, v1, v0, v2}, Lcom/xiaomi/metoknlp/c/f;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method
