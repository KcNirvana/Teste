.class public final Lcom/miui/video/biz/player/online/common/EntityBuildHelperKt;
.super Ljava/lang/Object;
.source "EntityBuildHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEntityBuildHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EntityBuildHelper.kt\ncom/miui/video/biz/player/online/common/EntityBuildHelperKt\n*L\n1#1,74:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\u001a2\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u001a\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r\u00a8\u0006\u000e"
    }
    d2 = {
        "buildOVHistroyEntity",
        "Lcom/miui/video/base/database/OVHistoryEntity;",
        "entity",
        "video",
        "Lcom/miui/video/player/service/model/VideoObject;",
        "videoContext",
        "Lcom/miui/video/onlineplayer/core/VideoContext;",
        "player",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/miui/video/player/service/media/MediaPlayerControl;",
        "stampToMonthWithYear",
        "",
        "s",
        "",
        "biz_player_online_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public static final buildOVHistroyEntity(Lcom/miui/video/base/database/OVHistoryEntity;Lcom/miui/video/player/service/model/VideoObject;Lcom/miui/video/onlineplayer/core/VideoContext;Ljava/lang/ref/WeakReference;)Lcom/miui/video/base/database/OVHistoryEntity;
    .locals 8
    .param p0    # Lcom/miui/video/base/database/OVHistoryEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/miui/video/player/service/model/VideoObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/miui/video/onlineplayer/core/VideoContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/ref/WeakReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/database/OVHistoryEntity;",
            "Lcom/miui/video/player/service/model/VideoObject;",
            "Lcom/miui/video/onlineplayer/core/VideoContext;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/video/player/service/media/MediaPlayerControl;",
            ">;)",
            "Lcom/miui/video/base/database/OVHistoryEntity;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "videoContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "player"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getMainMediaId()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/miui/video/onlineplayer/core/VideoContext;->isVideoHasPlayed()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p2}, Lcom/miui/video/onlineplayer/core/VideoContext;->getMedia()Lcom/miui/video/base/model/MediaData$Media;

    move-result-object v0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/miui/video/base/database/OVHistoryEntity;

    invoke-direct {p0}, Lcom/miui/video/base/database/OVHistoryEntity;-><init>()V

    :goto_0
    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getMainMediaId()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const-string v1, "@"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getMainMediaId()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/miui/video/base/database/OVHistoryEntity;->setEid(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getMainMediaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/video/base/database/OVHistoryEntity;->setVid(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getTarget()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/video/base/database/OVHistoryEntity;->setVideo_uri(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    goto :goto_2

    :cond_5
    const-string v1, ""

    :cond_6
    :goto_2
    invoke-virtual {p0, v1}, Lcom/miui/video/base/database/OVHistoryEntity;->setTitle(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/miui/video/base/database/OVHistoryEntity;->setSub_title(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getCiIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/video/base/database/OVHistoryEntity;->setSub_value(I)V

    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getPlayInfoList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/video/base/database/OVHistoryEntity;->setUpdate_num(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/video/base/database/OVHistoryEntity;->setTotal_num(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/video/biz/player/online/common/EntityBuildHelperKt;->stampToMonthWithYear(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/video/base/database/OVHistoryEntity;->setUpdate_date(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/miui/video/base/database/OVHistoryEntity;->setCategory(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/miui/video/base/database/OVHistoryEntity;->setResolution(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/video/onlineplayer/core/VideoContext;->getTargetCP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/video/base/database/OVHistoryEntity;->setCp(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/video/onlineplayer/core/VideoContext;->getAuthorInfo()Lcom/miui/video/base/model/MediaData$AuthorInfo;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p2}, Lcom/miui/video/onlineplayer/core/VideoContext;->getAuthorInfo()Lcom/miui/video/base/model/MediaData$AuthorInfo;

    move-result-object p2

    if-nez p2, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    iget-object p2, p2, Lcom/miui/video/base/model/MediaData$AuthorInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/miui/video/base/database/OVHistoryEntity;->setAuthor_name(Ljava/lang/String;)V

    :cond_8
    const-string p2, ""

    invoke-virtual {p0, p2}, Lcom/miui/video/base/database/OVHistoryEntity;->setRef(Ljava/lang/String;)V

    if-eqz v0, :cond_9

    iget-object p2, v0, Lcom/miui/video/base/model/MediaData$Media;->poster:Ljava/lang/String;

    if-eqz p2, :cond_9

    goto :goto_3

    :cond_9
    const-string p2, ""

    :goto_3
    invoke-virtual {p0, p2}, Lcom/miui/video/base/database/OVHistoryEntity;->setLandscape_poster(Ljava/lang/String;)V

    if-eqz v0, :cond_a

    iget-object p2, v0, Lcom/miui/video/base/model/MediaData$Media;->poster:Ljava/lang/String;

    if-eqz p2, :cond_a

    goto :goto_4

    :cond_a
    const-string p2, ""

    :goto_4
    invoke-virtual {p0, p2}, Lcom/miui/video/base/database/OVHistoryEntity;->setPortrait_poster(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/miui/video/base/database/OVHistoryEntity;->setLast_play_time(J)V

    invoke-virtual {p0, v1}, Lcom/miui/video/base/database/OVHistoryEntity;->setOffset(I)V

    invoke-virtual {p0, v1}, Lcom/miui/video/base/database/OVHistoryEntity;->setDuration(I)V

    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getPlaylistId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/miui/video/base/database/OVHistoryEntity;->setPlaylist_id(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_f

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/miui/video/player/service/media/IAsyncVideoView;

    if-nez p2, :cond_d

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    const-string p2, "player.get()!!"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/miui/video/player/service/media/MediaPlayerControl;

    invoke-interface {p1}, Lcom/miui/video/player/service/media/MediaPlayerControl;->getCurrentPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/video/base/database/OVHistoryEntity;->setOffset(I)V

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_c
    const-string p2, "player.get()!!"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/miui/video/player/service/media/MediaPlayerControl;

    invoke-interface {p1}, Lcom/miui/video/player/service/media/MediaPlayerControl;->getDuration()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/video/base/database/OVHistoryEntity;->setDuration(I)V

    goto :goto_5

    :cond_d
    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getCachePosition()I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_e

    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getCachePosition()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/miui/video/base/database/OVHistoryEntity;->setOffset(I)V

    :cond_e
    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getCurEpisodeDuration()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/video/base/database/OVHistoryEntity;->setDuration(I)V

    :cond_f
    :goto_5
    return-object p0

    :cond_10
    return-object v0
.end method

.method public static final stampToMonthWithYear(J)Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy.MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "simpleDateFormat.format(date)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
