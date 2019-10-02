.class public Lcom/facebook/ads/internal/adapters/b/q;
.super Lcom/facebook/ads/internal/adapters/b/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/facebook/ads/internal/adapters/b/m;

.field private final c:Lcom/facebook/ads/internal/adapters/b/e;

.field private final d:Lcom/facebook/ads/internal/adapters/b/i;

.field private final e:Lcom/facebook/ads/internal/adapters/b/b;

.field private final f:Lcom/facebook/ads/internal/adapters/b/d;

.field private final g:Lcom/facebook/ads/internal/adapters/b/j;

.field private final h:Ljava/lang/String;

.field private i:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/facebook/ads/internal/adapters/b/m;Lcom/facebook/ads/internal/adapters/b/e;Lcom/facebook/ads/internal/adapters/b/i;Lcom/facebook/ads/internal/adapters/b/b;Lcom/facebook/ads/internal/adapters/b/d;Lcom/facebook/ads/internal/adapters/b/j;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/b/a;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/b/q;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/b/q;->b:Lcom/facebook/ads/internal/adapters/b/m;

    iput-object p3, p0, Lcom/facebook/ads/internal/adapters/b/q;->c:Lcom/facebook/ads/internal/adapters/b/e;

    iput-object p4, p0, Lcom/facebook/ads/internal/adapters/b/q;->d:Lcom/facebook/ads/internal/adapters/b/i;

    iput-object p5, p0, Lcom/facebook/ads/internal/adapters/b/q;->e:Lcom/facebook/ads/internal/adapters/b/b;

    iput-object p6, p0, Lcom/facebook/ads/internal/adapters/b/q;->f:Lcom/facebook/ads/internal/adapters/b/d;

    iput-object p7, p0, Lcom/facebook/ads/internal/adapters/b/q;->g:Lcom/facebook/ads/internal/adapters/b/j;

    iput-object p8, p0, Lcom/facebook/ads/internal/adapters/b/q;->h:Ljava/lang/String;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/adapters/b/q;
    .locals 10

    new-instance v0, Lcom/facebook/ads/internal/adapters/b/m$a;

    invoke-direct {v0}, Lcom/facebook/ads/internal/adapters/b/m$a;-><init>()V

    const-string v1, "advertiser_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/b/m$a;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/adapters/b/m$a;

    move-result-object v0

    const-string v1, "icon"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "icon"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/b/m$a;->b(Ljava/lang/String;)Lcom/facebook/ads/internal/adapters/b/m$a;

    move-result-object v0

    const-string v1, "ad_choices_link_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/b/m$a;->c(Ljava/lang/String;)Lcom/facebook/ads/internal/adapters/b/m$a;

    move-result-object v0

    const-string v1, "generic_text"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Sponsored"

    goto :goto_1

    :cond_1
    const-string v2, "sponsored"

    const-string v3, "Sponsored"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/b/m$a;->d(Ljava/lang/String;)Lcom/facebook/ads/internal/adapters/b/m$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/m$a;->a()Lcom/facebook/ads/internal/adapters/b/m;

    move-result-object v3

    new-instance v0, Lcom/facebook/ads/internal/adapters/b/e$b;

    invoke-direct {v0}, Lcom/facebook/ads/internal/adapters/b/e$b;-><init>()V

    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/b/e$b;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/adapters/b/e$b;

    move-result-object v0

    const-string v1, "subtitle"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/b/e$b;->b(Ljava/lang/String;)Lcom/facebook/ads/internal/adapters/b/e$b;

    move-result-object v0

    const-string v1, "body"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/b/e$b;->c(Ljava/lang/String;)Lcom/facebook/ads/internal/adapters/b/e$b;

    move-result-object v0

    const-string v1, "rating_value"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/b/e$b;->d(Ljava/lang/String;)Lcom/facebook/ads/internal/adapters/b/e$b;

    move-result-object v0

    const-string v1, "category"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/b/e$b;->e(Ljava/lang/String;)Lcom/facebook/ads/internal/adapters/b/e$b;

    move-result-object v0

    const-string v1, "destination_title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/b/e$b;->f(Ljava/lang/String;)Lcom/facebook/ads/internal/adapters/b/e$b;

    move-result-object v0

    const-string v1, "ad_creative_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/b/e$b;->g(Ljava/lang/String;)Lcom/facebook/ads/internal/adapters/b/e$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/e$b;->a()Lcom/facebook/ads/internal/adapters/b/e;

    move-result-object v4

    new-instance v5, Lcom/facebook/ads/internal/adapters/b/i;

    const-string v0, "fbad_command"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "call_to_action"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Lcom/facebook/ads/internal/adapters/b/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "layout"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v6, Lcom/facebook/ads/internal/adapters/b/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "portrait"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    invoke-static {v2}, Lcom/facebook/ads/internal/adapters/b/h;->a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/adapters/b/h;

    move-result-object v2

    if-eqz v0, :cond_3

    const-string v1, "landscape"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    :cond_3
    invoke-static {v1}, Lcom/facebook/ads/internal/adapters/b/h;->a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/adapters/b/h;

    move-result-object v0

    invoke-direct {v6, v2, v0}, Lcom/facebook/ads/internal/adapters/b/b;-><init>(Lcom/facebook/ads/internal/adapters/b/h;Lcom/facebook/ads/internal/adapters/b/h;)V

    new-instance v0, Lcom/facebook/ads/internal/adapters/b/d$a;

    invoke-direct {v0}, Lcom/facebook/ads/internal/adapters/b/d$a;-><init>()V

    const-string v1, "video_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/b/d$a;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/adapters/b/d$a;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "image"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    const-string v1, ""

    :goto_3
    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/b/d$a;->b(Ljava/lang/String;)Lcom/facebook/ads/internal/adapters/b/d$a;

    move-result-object v0

    const-string v1, "skippable_seconds"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/b/d$a;->a(I)Lcom/facebook/ads/internal/adapters/b/d$a;

    move-result-object v0

    const-string v1, "video_duration_sec"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/b/d$a;->b(I)Lcom/facebook/ads/internal/adapters/b/d$a;

    move-result-object v0

    invoke-static {p0}, Lcom/facebook/ads/internal/adapters/b/n;->a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/adapters/b/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/b/d$a;->a(Lcom/facebook/ads/internal/adapters/b/n;)Lcom/facebook/ads/internal/adapters/b/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/d$a;->a()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object v7

    new-instance v8, Lcom/facebook/ads/internal/adapters/b/j;

    const-string v0, "end_card_markup"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/o/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "activation_command"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "end_card_images"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/adapters/b/q;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v8, v0, v1, v2}, Lcom/facebook/ads/internal/adapters/b/j;-><init>([BLjava/lang/String;Ljava/util/List;)V

    new-instance v0, Lcom/facebook/ads/internal/adapters/b/q;

    const-string v1, "request_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "ct"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/facebook/ads/internal/adapters/b/q;-><init>(Ljava/lang/String;Lcom/facebook/ads/internal/adapters/b/m;Lcom/facebook/ads/internal/adapters/b/e;Lcom/facebook/ads/internal/adapters/b/i;Lcom/facebook/ads/internal/adapters/b/b;Lcom/facebook/ads/internal/adapters/b/d;Lcom/facebook/ads/internal/adapters/b/j;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/q;->h:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/adapters/b/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/q;->g:Lcom/facebook/ads/internal/adapters/b/j;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/adapters/b/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/adapters/b/q;->i:Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/q;->f:Lcom/facebook/ads/internal/adapters/b/d;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/adapters/b/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/q;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/facebook/ads/internal/adapters/b/m;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/q;->b:Lcom/facebook/ads/internal/adapters/b/m;

    return-object v0
.end method

.method public g()Lcom/facebook/ads/internal/adapters/b/e;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/q;->c:Lcom/facebook/ads/internal/adapters/b/e;

    return-object v0
.end method

.method public h()Lcom/facebook/ads/internal/adapters/b/i;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/q;->d:Lcom/facebook/ads/internal/adapters/b/i;

    return-object v0
.end method

.method public i()Lcom/facebook/ads/internal/adapters/b/b;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/q;->e:Lcom/facebook/ads/internal/adapters/b/b;

    return-object v0
.end method

.method public j()Lcom/facebook/ads/internal/adapters/b/d;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/q;->f:Lcom/facebook/ads/internal/adapters/b/d;

    return-object v0
.end method

.method public k()Lcom/facebook/ads/internal/adapters/b/j;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/q;->g:Lcom/facebook/ads/internal/adapters/b/j;

    return-object v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/b/q;->i:Z

    return v0
.end method
