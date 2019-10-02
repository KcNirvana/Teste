.class public Lcom/facebook/ads/internal/adapters/b/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:Lcom/facebook/ads/internal/view/c/f;

.field private static final b:Lcom/facebook/ads/internal/adapters/b/p;

.field private static final serialVersionUID:J = -0x4a480ae214649e53L


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:Z

.field private final j:Z

.field private final k:Lcom/facebook/ads/internal/view/c/f;

.field private final l:Lcom/facebook/ads/internal/adapters/b/p;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/view/c/f;->b:Lcom/facebook/ads/internal/view/c/f;

    sput-object v0, Lcom/facebook/ads/internal/adapters/b/n;->a:Lcom/facebook/ads/internal/view/c/f;

    sget-object v0, Lcom/facebook/ads/internal/adapters/b/p;->c:Lcom/facebook/ads/internal/adapters/b/p;

    sput-object v0, Lcom/facebook/ads/internal/adapters/b/n;->b:Lcom/facebook/ads/internal/adapters/b/p;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/view/c/f;IZZLcom/facebook/ads/internal/adapters/b/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/b/n;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/b/n;->d:Ljava/lang/String;

    iput p3, p0, Lcom/facebook/ads/internal/adapters/b/n;->e:I

    iput-object p4, p0, Lcom/facebook/ads/internal/adapters/b/n;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/facebook/ads/internal/adapters/b/n;->g:Ljava/lang/String;

    iput-object p6, p0, Lcom/facebook/ads/internal/adapters/b/n;->k:Lcom/facebook/ads/internal/view/c/f;

    iput p7, p0, Lcom/facebook/ads/internal/adapters/b/n;->h:I

    iput-boolean p8, p0, Lcom/facebook/ads/internal/adapters/b/n;->i:Z

    iput-boolean p9, p0, Lcom/facebook/ads/internal/adapters/b/n;->j:Z

    iput-object p10, p0, Lcom/facebook/ads/internal/adapters/b/n;->l:Lcom/facebook/ads/internal/adapters/b/p;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/adapters/b/n;
    .locals 13
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "playable_data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, "precaching_method"

    sget-object v2, Lcom/facebook/ads/internal/adapters/b/n;->b:Lcom/facebook/ads/internal/adapters/b/p;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/p;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/adapters/b/p;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/adapters/b/p;

    move-result-object v12

    new-instance v1, Lcom/facebook/ads/internal/adapters/b/n;

    const-string v2, "uri"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "intro_card_icon_url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "skippable_seconds"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "skippable_seconds"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    :goto_0
    move v5, p0

    goto :goto_1

    :cond_1
    const-string v2, "unskippable_seconds"

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    :goto_1
    const-string p0, "generic_text"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "Rewarded Play"

    :goto_2
    move-object v6, p0

    goto :goto_3

    :cond_2
    const-string v2, "rewarded_play_text"

    const-string v6, "Rewarded Play"

    invoke-virtual {p0, v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :goto_3
    const-string p0, "generic_text"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_3

    const-string p0, "Play Store will automatically open in [secs]s"

    :goto_4
    move-object v7, p0

    goto :goto_5

    :cond_3
    const-string v2, "delay_click_text"

    const-string v7, "Play Store will automatically open in [secs]s"

    invoke-virtual {p0, v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :goto_5
    const-string p0, "orientation"

    sget-object v2, Lcom/facebook/ads/internal/adapters/b/n;->a:Lcom/facebook/ads/internal/view/c/f;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/c/f;->a()I

    move-result v2

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lcom/facebook/ads/internal/view/c/f;->a(I)Lcom/facebook/ads/internal/view/c/f;

    move-result-object v8

    const-string p0, "web_view_timeout_in_milliseconds"

    const/16 v2, 0x1388

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string p0, "enable_intro_card"

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const-string p0, "enable_end_card"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    move-object v2, v1

    invoke-direct/range {v2 .. v12}, Lcom/facebook/ads/internal/adapters/b/n;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/view/c/f;IZZLcom/facebook/ads/internal/adapters/b/p;)V

    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/n;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/b/n;->m:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/n;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/adapters/b/n;->e:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/n;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/n;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/facebook/ads/internal/view/c/f;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/n;->k:Lcom/facebook/ads/internal/view/c/f;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/adapters/b/n;->h:I

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/b/n;->i:Z

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/b/n;->j:Z

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/n;->m:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lcom/facebook/ads/internal/adapters/b/p;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/n;->l:Lcom/facebook/ads/internal/adapters/b/p;

    return-object v0
.end method
