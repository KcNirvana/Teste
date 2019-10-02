.class public Lcom/facebook/ads/internal/adapters/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/a/e$a;
.implements Lcom/facebook/ads/internal/adapters/AdAdapter;


# static fields
.field private static final a:Ljava/lang/String; = "i"


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Lcom/facebook/ads/internal/s/c;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private I:Lcom/facebook/ads/internal/t/e$c;

.field private b:Landroid/content/Context;

.field private c:Lcom/facebook/ads/internal/adapters/q;

.field private d:Landroid/net/Uri;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/facebook/ads/internal/t/g;

.field private g:Lcom/facebook/ads/internal/t/g;

.field private h:Lcom/facebook/ads/internal/t/i;

.field private i:Ljava/lang/String;

.field private j:Lcom/facebook/ads/internal/a/d;

.field private k:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Lcom/facebook/ads/internal/t/l;

.field private u:I

.field private v:Lcom/facebook/ads/internal/t/g;

.field private w:Ljava/lang/String;

.field private x:Lcom/facebook/ads/internal/t/j;

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/t/e;",
            ">;"
        }
    .end annotation
.end field

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->e:Ljava/util/HashMap;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/facebook/ads/internal/adapters/i;->u:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/internal/adapters/i;->z:I

    return-void
.end method

.method private C()V
    .locals 2

    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/i;->G:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->H:Lcom/facebook/ads/internal/s/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->H:Lcom/facebook/ads/internal/s/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/s/c;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/adapters/i;->G:Z

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/i;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/adapters/i;->B:Ljava/lang/String;

    return-object p0
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 13

    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/i;->D:Z

    if-nez v0, :cond_10

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->b:Landroid/content/Context;

    const-string v1, "Audience Network Loaded"

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/w/b/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/i;->B:Ljava/lang/String;

    const-string v0, "fbad_command"

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/w/b/k;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->d:Landroid/net/Uri;

    const-string v3, "advertiser_name"

    const-string v4, "title"

    const-string v5, "subtitle"

    const-string v6, "headline"

    const-string v7, "body"

    const-string v8, "social_context"

    const-string v9, "link_description"

    const-string v10, "sponsored_translation"

    const-string v11, "ad_translation"

    const-string v12, "promoted_translation"

    filled-new-array/range {v3 .. v12}, [Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_2

    aget-object v5, v0, v4

    iget-object v6, p0, Lcom/facebook/ads/internal/adapters/i;->e:Ljava/util/HashMap;

    invoke-static {p1, v5}, Lcom/facebook/ads/internal/w/b/k;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "call_to_action"

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/w/b/k;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->e:Ljava/util/HashMap;

    const-string v4, "call_to_action"

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/t/g;->a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/t/g;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->f:Lcom/facebook/ads/internal/t/g;

    const-string v0, "image"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/t/g;->a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/t/g;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->g:Lcom/facebook/ads/internal/t/g;

    const-string v0, "star_rating"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/t/i;->a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/t/i;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->h:Lcom/facebook/ads/internal/t/i;

    const-string v0, "used_report_url"

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/w/b/k;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->i:Ljava/lang/String;

    const-string v0, "enable_view_log"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/adapters/i;->l:Z

    const-string v0, "enable_snapshot_log"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/adapters/i;->m:Z

    const-string v0, "snapshot_log_delay_second"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/adapters/i;->n:I

    const-string v0, "snapshot_compress_quality"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/adapters/i;->o:I

    const-string v0, "viewability_check_initial_delay"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/adapters/i;->p:I

    const-string v0, "viewability_check_interval"

    const/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/adapters/i;->q:I

    const-string v0, "ad_choices_icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "native_ui_config"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_5

    :try_start_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    new-instance v4, Lcom/facebook/ads/internal/t/j;

    invoke-direct {v4, v1}, Lcom/facebook/ads/internal/t/j;-><init>(Lorg/json/JSONObject;)V

    goto :goto_3

    :cond_5
    :goto_2
    move-object v4, v2

    :goto_3
    iput-object v4, p0, Lcom/facebook/ads/internal/adapters/i;->x:Lcom/facebook/ads/internal/t/j;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    iput-object v2, p0, Lcom/facebook/ads/internal/adapters/i;->x:Lcom/facebook/ads/internal/t/j;

    :goto_4
    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/facebook/ads/internal/t/g;->a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/t/g;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->v:Lcom/facebook/ads/internal/t/g;

    :cond_6
    const-string v0, "ad_choices_link_url"

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/w/b/k;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->w:Ljava/lang/String;

    const-string v0, "invalidation_behavior"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/a/d;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->j:Lcom/facebook/ads/internal/a/d;

    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    const-string v1, "detection_strings"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v2

    :goto_5
    invoke-static {v0}, Lcom/facebook/ads/internal/a/e;->a(Lorg/json/JSONArray;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->k:Ljava/util/Collection;

    const-string v0, "video_url"

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/w/b/k;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->r:Ljava/lang/String;

    const-string v0, "video_mpd"

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/w/b/k;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->s:Ljava/lang/String;

    const-string v0, "video_autoplay_enabled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/facebook/ads/internal/t/l;->a:Lcom/facebook/ads/internal/t/l;

    :goto_6
    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->t:Lcom/facebook/ads/internal/t/l;

    goto :goto_7

    :cond_7
    const-string v0, "video_autoplay_enabled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/facebook/ads/internal/t/l;->b:Lcom/facebook/ads/internal/t/l;

    goto :goto_6

    :cond_8
    sget-object v0, Lcom/facebook/ads/internal/t/l;->c:Lcom/facebook/ads/internal/t/l;

    goto :goto_6

    :goto_7
    const/4 v0, 0x1

    :try_start_2
    const-string v1, "carousel"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_a

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v1, :cond_9

    new-instance v6, Lcom/facebook/ads/internal/adapters/i;

    invoke-direct {v6}, Lcom/facebook/ads/internal/adapters/i;-><init>()V

    iget-object v7, p0, Lcom/facebook/ads/internal/adapters/i;->b:Landroid/content/Context;

    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    iget-object v9, p0, Lcom/facebook/ads/internal/adapters/i;->H:Lcom/facebook/ads/internal/s/c;

    iput-boolean v0, v6, Lcom/facebook/ads/internal/adapters/i;->C:Z

    iput-object v7, v6, Lcom/facebook/ads/internal/adapters/i;->b:Landroid/content/Context;

    iput-object v9, v6, Lcom/facebook/ads/internal/adapters/i;->H:Lcom/facebook/ads/internal/s/c;

    iput v5, v6, Lcom/facebook/ads/internal/adapters/i;->z:I

    iput v1, v6, Lcom/facebook/ads/internal/adapters/i;->A:I

    invoke-direct {v6, v8, p2}, Lcom/facebook/ads/internal/adapters/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    new-instance v7, Lcom/facebook/ads/internal/t/e;

    iget-object v8, p0, Lcom/facebook/ads/internal/adapters/i;->b:Landroid/content/Context;

    iget-object v9, p0, Lcom/facebook/ads/internal/adapters/i;->I:Lcom/facebook/ads/internal/t/e$c;

    invoke-direct {v7, v8, v6, v2, v9}, Lcom/facebook/ads/internal/t/e;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/i;Lcom/facebook/ads/internal/m/d;Lcom/facebook/ads/internal/t/e$c;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_9
    iput-object v4, p0, Lcom/facebook/ads/internal/adapters/i;->y:Ljava/util/List;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_2
    move-exception p1

    sget-object p2, Lcom/facebook/ads/internal/adapters/i;->a:Ljava/lang/String;

    const-string v1, "Unable to parse carousel data."

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_9
    iput-boolean v0, p0, Lcom/facebook/ads/internal/adapters/i;->D:Z

    iget-boolean p1, p0, Lcom/facebook/ads/internal/adapters/i;->C:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/i;->e:Ljava/util/HashMap;

    const-string p2, "advertiser_name"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    :cond_b
    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/i;->e:Ljava/util/HashMap;

    const-string p2, "title"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e

    iget-boolean p1, p0, Lcom/facebook/ads/internal/adapters/i;->C:Z

    if-eqz p1, :cond_e

    :cond_c
    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/i;->f:Lcom/facebook/ads/internal/t/g;

    if-nez p1, :cond_d

    iget-boolean p1, p0, Lcom/facebook/ads/internal/adapters/i;->C:Z

    if-eqz p1, :cond_e

    :cond_d
    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/i;->g:Lcom/facebook/ads/internal/t/g;

    if-nez p1, :cond_f

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/i;->getPlacementType()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object p1

    sget-object p2, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE_BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    if-ne p1, p2, :cond_e

    goto :goto_a

    :cond_e
    const/4 v0, 0x0

    :cond_f
    :goto_a
    iput-boolean v0, p0, Lcom/facebook/ads/internal/adapters/i;->E:Z

    return-void

    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Adapter already loaded data"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/adapters/i;)Lcom/facebook/ads/internal/s/c;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/adapters/i;->H:Lcom/facebook/ads/internal/s/c;

    return-object p0
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/i;->D:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/i;->E:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/i;->C:Z

    return v0
.end method

.method public a()Lcom/facebook/ads/internal/a/d;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->j:Lcom/facebook/ads/internal/a/d;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/i;->A()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/i;->C()V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/q;Lcom/facebook/ads/internal/s/c;Ljava/util/Map;Lcom/facebook/ads/internal/t/e$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/internal/adapters/q;",
            "Lcom/facebook/ads/internal/s/c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/facebook/ads/internal/t/e$c;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/i;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/i;->c:Lcom/facebook/ads/internal/adapters/q;

    iput-object p3, p0, Lcom/facebook/ads/internal/adapters/i;->H:Lcom/facebook/ads/internal/s/c;

    iput-object p5, p0, Lcom/facebook/ads/internal/adapters/i;->I:Lcom/facebook/ads/internal/t/e$c;

    const-string p5, "data"

    invoke-interface {p4, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/json/JSONObject;

    const-string v0, "definition"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/facebook/ads/internal/m/d;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/facebook/ads/internal/m/d;->k()I

    move-result p4

    goto :goto_0

    :cond_0
    const/16 p4, 0xc8

    :goto_0
    iput p4, p0, Lcom/facebook/ads/internal/adapters/i;->u:I

    const-string p4, "ct"

    invoke-static {p5, p4}, Lcom/facebook/ads/internal/w/b/k;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p5, p4}, Lcom/facebook/ads/internal/adapters/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {p1, p0, p3}, Lcom/facebook/ads/internal/a/e;->a(Landroid/content/Context;Lcom/facebook/ads/internal/a/e$a;Lcom/facebook/ads/internal/s/c;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/facebook/ads/internal/protocol/a;

    sget-object p3, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const-string p4, "No Fill"

    invoke-direct {p1, p3, p4}, Lcom/facebook/ads/internal/protocol/a;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    invoke-interface {p2, p0, p1}, Lcom/facebook/ads/internal/adapters/q;->a(Lcom/facebook/ads/internal/adapters/i;Lcom/facebook/ads/internal/protocol/a;)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2, p0}, Lcom/facebook/ads/internal/adapters/q;->a(Lcom/facebook/ads/internal/adapters/i;)V

    :cond_2
    return-void
.end method

.method public a(Landroid/view/View;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/q;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/i;->c:Lcom/facebook/ads/internal/adapters/q;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/i;->A()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/i;->F:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->c:Lcom/facebook/ads/internal/adapters/q;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->c:Lcom/facebook/ads/internal/adapters/q;

    invoke-interface {v0, p0}, Lcom/facebook/ads/internal/adapters/q;->b(Lcom/facebook/ads/internal/adapters/i;)V

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_2

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2
    iget-boolean v1, p0, Lcom/facebook/ads/internal/adapters/i;->C:Z

    if-eqz v1, :cond_3

    const-string v1, "cardind"

    iget v2, p0, Lcom/facebook/ads/internal/adapters/i;->z:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cardcnt"

    iget v2, p0, Lcom/facebook/ads/internal/adapters/i;->A:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/i;->getClientToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->H:Lcom/facebook/ads/internal/s/c;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->H:Lcom/facebook/ads/internal/s/c;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/i;->getClientToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/internal/s/c;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/i;->d()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/i;->h()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_5
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "view"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "view"

    const-string v3, "view"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v2, "snapshot"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "snapshot"

    const-string v3, "snapshot"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/facebook/ads/internal/adapters/i$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/facebook/ads/internal/adapters/i$1;-><init>(Lcom/facebook/ads/internal/adapters/i;Ljava/util/Map;Ljava/util/Map;)V

    iget v0, p0, Lcom/facebook/ads/internal/adapters/i;->n:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/facebook/ads/internal/adapters/i;->F:Z

    :cond_9
    return-void
.end method

.method public b()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->k:Ljava/util/Collection;

    return-object v0
.end method

.method public b(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->H:Lcom/facebook/ads/internal/s/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->H:Lcom/facebook/ads/internal/s/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->B:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/facebook/ads/internal/s/c;->k(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->y:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/internal/t/e;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/t/e;->z()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->H:Lcom/facebook/ads/internal/s/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->H:Lcom/facebook/ads/internal/s/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->B:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/facebook/ads/internal/s/c;->j(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->H:Lcom/facebook/ads/internal/s/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->H:Lcom/facebook/ads/internal/s/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->B:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/facebook/ads/internal/s/c;->i(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/i;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/i;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/i;->A()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/facebook/ads/internal/w/b/z;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/facebook/ads/internal/adapters/i;->a:Ljava/lang/String;

    const-string v0, "Click happened on lockscreen ad"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_2

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2
    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/i;->b:Landroid/content/Context;

    const-string v1, "Click logged"

    invoke-static {p1, v1}, Lcom/facebook/ads/internal/w/b/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/i;->c:Lcom/facebook/ads/internal/adapters/q;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/i;->c:Lcom/facebook/ads/internal/adapters/q;

    invoke-interface {p1, p0}, Lcom/facebook/ads/internal/adapters/q;->c(Lcom/facebook/ads/internal/adapters/i;)V

    :cond_3
    iget-boolean p1, p0, Lcom/facebook/ads/internal/adapters/i;->C:Z

    if-eqz p1, :cond_4

    const-string p1, "cardind"

    iget v1, p0, Lcom/facebook/ads/internal/adapters/i;->z:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "cardcnt"

    iget v1, p0, Lcom/facebook/ads/internal/adapters/i;->A:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/i;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->H:Lcom/facebook/ads/internal/s/c;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/i;->B:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/i;->d:Landroid/net/Uri;

    invoke-static {p1, v1, v2, v3, v0}, Lcom/facebook/ads/internal/a/c;->a(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Lcom/facebook/ads/internal/a/b;

    move-result-object p1

    if-eqz p1, :cond_5

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/ads/internal/a/b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/facebook/ads/internal/adapters/i;->a:Ljava/lang/String;

    const-string v1, "Error executing action"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_0
    return-void
.end method

.method public e()Z
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/i;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->x:Lcom/facebook/ads/internal/t/j;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/i;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->d:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getClientToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->B:Ljava/lang/String;

    return-object v0
.end method

.method public getPlacementType()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method

.method public h()Z
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/i;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/i;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()I
    .locals 2

    iget v0, p0, Lcom/facebook/ads/internal/adapters/i;->o:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/internal/adapters/i;->o:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/facebook/ads/internal/adapters/i;->o:I

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/adapters/i;->p:I

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/adapters/i;->q:I

    return v0
.end method

.method public l()Lcom/facebook/ads/internal/t/g;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/i;->A()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->f:Lcom/facebook/ads/internal/t/g;

    return-object v0
.end method

.method public m()Lcom/facebook/ads/internal/t/g;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/i;->A()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->g:Lcom/facebook/ads/internal/t/g;

    return-object v0
.end method

.method public n()Lcom/facebook/ads/internal/t/j;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/i;->A()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->x:Lcom/facebook/ads/internal/t/j;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/i;->A()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/i;->C()V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->e:Ljava/util/HashMap;

    const-string v1, "body"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, " "

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x5a

    if-le v2, v3, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x5d

    if-gt v2, v4, :cond_1

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    if-ge v5, v3, :cond_2

    move v4, v5

    goto :goto_0

    :cond_3
    if-nez v4, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    :goto_2
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public p()Lcom/facebook/ads/internal/t/i;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/i;->A()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/i;->C()V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->h:Lcom/facebook/ads/internal/t/i;

    return-object v0
.end method

.method public q()Lcom/facebook/ads/internal/t/g;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/i;->A()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->v:Lcom/facebook/ads/internal/t/g;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/i;->A()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->w:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/i;->A()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "AdChoices"

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/i;->A()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->r:Ljava/lang/String;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/i;->A()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->s:Ljava/lang/String;

    return-object v0
.end method

.method public v()Lcom/facebook/ads/internal/t/l;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/i;->A()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/internal/t/l;->a:Lcom/facebook/ads/internal/t/l;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->t:Lcom/facebook/ads/internal/t/l;

    return-object v0
.end method

.method public w()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/adapters/i;->u:I

    return v0
.end method

.method public x()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/t/e;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/i;->A()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->y:Ljava/util/List;

    return-object v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/adapters/i;->z:I

    return v0
.end method

.method public z()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/adapters/i;->A:I

    return v0
.end method
