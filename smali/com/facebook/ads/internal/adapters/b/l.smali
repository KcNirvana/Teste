.class public Lcom/facebook/ads/internal/adapters/b/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x12e0ec9adefe9e7L


# instance fields
.field private final a:Lcom/facebook/ads/internal/adapters/b/e;

.field private final b:Lcom/facebook/ads/internal/adapters/b/i;

.field private final c:Lcom/facebook/ads/internal/adapters/b/d;

.field private final d:Z


# direct methods
.method private constructor <init>(Lcom/facebook/ads/internal/adapters/b/e;Lcom/facebook/ads/internal/adapters/b/i;Lcom/facebook/ads/internal/adapters/b/d;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/b/l;->a:Lcom/facebook/ads/internal/adapters/b/e;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/b/l;->b:Lcom/facebook/ads/internal/adapters/b/i;

    iput-object p3, p0, Lcom/facebook/ads/internal/adapters/b/l;->c:Lcom/facebook/ads/internal/adapters/b/d;

    iput-boolean p4, p0, Lcom/facebook/ads/internal/adapters/b/l;->d:Z

    return-void
.end method

.method static a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/adapters/b/l;
    .locals 7

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

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/e$b;->a()Lcom/facebook/ads/internal/adapters/b/e;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/internal/adapters/b/i;

    const-string v2, "fbad_command"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "call_to_action"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/ads/internal/adapters/b/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "video_autoplay_enabled"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "is_watch_and_browse"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    new-instance v4, Lcom/facebook/ads/internal/adapters/b/d$a;

    invoke-direct {v4}, Lcom/facebook/ads/internal/adapters/b/d$a;-><init>()V

    const-string v5, "video_url"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/facebook/ads/internal/adapters/b/d$a;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/adapters/b/d$a;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/facebook/ads/internal/adapters/b/d$a;->a(Z)Lcom/facebook/ads/internal/adapters/b/d$a;

    move-result-object v4

    const-string v5, "is_audio_muted"

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/facebook/ads/internal/adapters/b/d$a;->b(Z)Lcom/facebook/ads/internal/adapters/b/d$a;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    const-string v2, "unskippable_seconds"

    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    :cond_0
    invoke-virtual {v4, v5}, Lcom/facebook/ads/internal/adapters/b/d$a;->a(I)Lcom/facebook/ads/internal/adapters/b/d$a;

    move-result-object v2

    const-string v4, "image"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "url"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/facebook/ads/internal/adapters/b/d$a;->b(Ljava/lang/String;)Lcom/facebook/ads/internal/adapters/b/d$a;

    move-result-object v5

    const-string v6, "width"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/facebook/ads/internal/adapters/b/d$a;->c(I)Lcom/facebook/ads/internal/adapters/b/d$a;

    move-result-object v5

    const-string v6, "height"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/facebook/ads/internal/adapters/b/d$a;->d(I)Lcom/facebook/ads/internal/adapters/b/d$a;

    :cond_1
    invoke-static {p0}, Lcom/facebook/ads/internal/adapters/b/n;->a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/adapters/b/n;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/facebook/ads/internal/adapters/b/d$a;->a(Lcom/facebook/ads/internal/adapters/b/n;)Lcom/facebook/ads/internal/adapters/b/d$a;

    new-instance p0, Lcom/facebook/ads/internal/adapters/b/l;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/d$a;->a()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/ads/internal/adapters/b/l;-><init>(Lcom/facebook/ads/internal/adapters/b/e;Lcom/facebook/ads/internal/adapters/b/i;Lcom/facebook/ads/internal/adapters/b/d;Z)V

    return-object p0
.end method


# virtual methods
.method public a()Lcom/facebook/ads/internal/adapters/b/e;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/l;->a:Lcom/facebook/ads/internal/adapters/b/e;

    return-object v0
.end method

.method public b()Lcom/facebook/ads/internal/adapters/b/i;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/l;->b:Lcom/facebook/ads/internal/adapters/b/i;

    return-object v0
.end method

.method public c()Lcom/facebook/ads/internal/adapters/b/d;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/l;->c:Lcom/facebook/ads/internal/adapters/b/d;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/b/l;->d:Z

    return v0
.end method
