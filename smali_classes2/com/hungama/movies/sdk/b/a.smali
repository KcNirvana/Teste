.class public Lcom/hungama/movies/sdk/b/a;
.super Ljava/lang/Object;
.source "SettingStore.java"


# static fields
.field public static a:Lcom/hungama/movies/sdk/b/a;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private m:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "selected_bitrate"

    iput-object v0, p0, Lcom/hungama/movies/sdk/b/a;->b:Ljava/lang/String;

    const-string v0, "player_brightness"

    iput-object v0, p0, Lcom/hungama/movies/sdk/b/a;->c:Ljava/lang/String;

    const-string v0, "player_volume"

    iput-object v0, p0, Lcom/hungama/movies/sdk/b/a;->d:Ljava/lang/String;

    const-string v0, "user_id"

    iput-object v0, p0, Lcom/hungama/movies/sdk/b/a;->e:Ljava/lang/String;

    const-string v0, "session_id"

    iput-object v0, p0, Lcom/hungama/movies/sdk/b/a;->f:Ljava/lang/String;

    const-string v0, "ping_media_event"

    iput-object v0, p0, Lcom/hungama/movies/sdk/b/a;->g:Ljava/lang/String;

    const-string v0, "next_video_auto_play"

    iput-object v0, p0, Lcom/hungama/movies/sdk/b/a;->h:Ljava/lang/String;

    const-string v0, "download_notification_show"

    iput-object v0, p0, Lcom/hungama/movies/sdk/b/a;->i:Ljava/lang/String;

    const-string v0, "ad_id"

    iput-object v0, p0, Lcom/hungama/movies/sdk/b/a;->j:Ljava/lang/String;

    const-string v0, "network_type"

    iput-object v0, p0, Lcom/hungama/movies/sdk/b/a;->k:Ljava/lang/String;

    const-string v0, "temp_set"

    iput-object v0, p0, Lcom/hungama/movies/sdk/b/a;->l:Ljava/lang/String;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/hungama/movies/sdk/b/a;->m:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/hungama/movies/sdk/b/a;
    .locals 1

    sget-object v0, Lcom/hungama/movies/sdk/b/a;->a:Lcom/hungama/movies/sdk/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hungama/movies/sdk/b/a;

    invoke-direct {v0, p0}, Lcom/hungama/movies/sdk/b/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/hungama/movies/sdk/b/a;->a:Lcom/hungama/movies/sdk/b/a;

    :cond_0
    sget-object p0, Lcom/hungama/movies/sdk/b/a;->a:Lcom/hungama/movies/sdk/b/a;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/hungama/movies/sdk/b/a;->m:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hungama/movies/sdk/Utils/MoviesApplication;->getMovieApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/hungama/movies/sdk/b/a;->m:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/b/a;->m:Landroid/content/SharedPreferences;

    const-string v1, "ad_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/b/a;->m:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ad_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/hungama/movies/sdk/b/a;->m:Landroid/content/SharedPreferences;

    const-string v1, "ping_media_event"

    const-string v2, "{}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/hungama/movies/sdk/b/a;->m:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "ping_media_event"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/hungama/movies/sdk/a/d;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/hungama/movies/sdk/b/a;->m:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hungama/movies/sdk/Utils/MoviesApplication;->getMovieApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/hungama/movies/sdk/b/a;->m:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/b/a;->m:Landroid/content/SharedPreferences;

    const-string v1, "user_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/b/a;->m:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/hungama/movies/sdk/b/a;->m:Landroid/content/SharedPreferences;

    const-string v1, "selected_bitrate"

    const-string v2, "Auto"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/b/a;->m:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "selected_bitrate"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/hungama/movies/sdk/b/a;->m:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hungama/movies/sdk/Utils/MoviesApplication;->getMovieApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/hungama/movies/sdk/b/a;->m:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/b/a;->m:Landroid/content/SharedPreferences;

    const-string v1, "ping_media_event"

    const-string v2, "{}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/hungama/movies/sdk/b/a;->m:Landroid/content/SharedPreferences;

    const-string v1, "ping_media_event"

    const-string v2, "{}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/hungama/movies/sdk/b/a;->m:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "ping_media_event"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/hungama/movies/sdk/a/d;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
