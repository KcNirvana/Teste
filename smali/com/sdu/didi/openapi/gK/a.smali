.class public abstract Lcom/sdu/didi/openapi/gK/a;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sdu/didi/openapi/gK/a;->a:I

    const-string/jumbo v0, "data error"

    iput-object v0, p0, Lcom/sdu/didi/openapi/gK/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/sdu/didi/openapi/gK/a;->a:I

    return v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "errno"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sdu/didi/openapi/gK/a;->a:I

    const-string/jumbo v1, "errmsg"

    const-string/jumbo v2, "data error"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sdu/didi/openapi/gK/a;->b:Ljava/lang/String;

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/sdu/didi/openapi/gK/a;->c:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/sdu/didi/openapi/gK/a;->c:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/sdu/didi/openapi/gK/a;->c:Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/sdu/didi/openapi/gK/a;->c:Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lcom/sdu/didi/openapi/gK/a;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method protected abstract a(Lorg/json/JSONObject;)V
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sdu/didi/openapi/gK/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget v0, p0, Lcom/sdu/didi/openapi/gK/a;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
