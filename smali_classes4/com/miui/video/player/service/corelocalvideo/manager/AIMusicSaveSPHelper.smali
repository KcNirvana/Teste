.class public Lcom/miui/video/player/service/corelocalvideo/manager/AIMusicSaveSPHelper;
.super Ljava/lang/Object;
.source "AIMusicSaveSPHelper.java"


# static fields
.field private static final AI_MUSIC_MAX_COUNT:I = 0xc8

.field public static final SP_AI_MUSIC_SAVE:Ljava/lang/String; = "sp_ai_music_save"

.field private static final TAG:Ljava/lang/String; = "AIMusicSaveSPHelper"

.field public static mInstance:Lcom/miui/video/player/service/corelocalvideo/manager/AIMusicSaveSPHelper;


# instance fields
.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sp_ai_music_save"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/corelocalvideo/manager/AIMusicSaveSPHelper;->sp:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/video/player/service/corelocalvideo/manager/AIMusicSaveSPHelper;
    .locals 2

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/manager/AIMusicSaveSPHelper;->mInstance:Lcom/miui/video/player/service/corelocalvideo/manager/AIMusicSaveSPHelper;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/video/player/service/corelocalvideo/manager/AIMusicSaveSPHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/video/player/service/corelocalvideo/manager/AIMusicSaveSPHelper;->mInstance:Lcom/miui/video/player/service/corelocalvideo/manager/AIMusicSaveSPHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/video/player/service/corelocalvideo/manager/AIMusicSaveSPHelper;

    invoke-direct {v1, p0}, Lcom/miui/video/player/service/corelocalvideo/manager/AIMusicSaveSPHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/video/player/service/corelocalvideo/manager/AIMusicSaveSPHelper;->mInstance:Lcom/miui/video/player/service/corelocalvideo/manager/AIMusicSaveSPHelper;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/miui/video/player/service/corelocalvideo/manager/AIMusicSaveSPHelper;->mInstance:Lcom/miui/video/player/service/corelocalvideo/manager/AIMusicSaveSPHelper;

    return-object p0
.end method


# virtual methods
.method public isSaveDialogShow(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/manager/AIMusicSaveSPHelper;->sp:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public setSaveDialogShow(Ljava/lang/String;Z)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/manager/AIMusicSaveSPHelper;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/miui/video/player/service/corelocalvideo/manager/AIMusicSaveSPHelper;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p2

    const/16 v0, 0xc8

    if-le p2, v0, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    move-wide v1, v0

    move-object v0, p2

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/video/player/service/corelocalvideo/manager/AIMusicSaveSPHelper;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v4, v3, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v6, v4, v1

    if-gez v6, :cond_0

    move-object v0, v3

    move-wide v1, v4

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/player/service/corelocalvideo/manager/AIMusicSaveSPHelper;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    return-void
.end method
