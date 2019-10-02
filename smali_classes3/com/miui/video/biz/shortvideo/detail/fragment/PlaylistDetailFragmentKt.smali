.class public final Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragmentKt;
.super Ljava/lang/Object;
.source "PlaylistDetailFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlaylistDetailFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlaylistDetailFragment.kt\ncom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragmentKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,562:1\n1309#2:563\n1378#2,3:564\n*E\n*S KotlinDebug\n*F\n+ 1 PlaylistDetailFragment.kt\ncom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragmentKt\n*L\n59#1:563\n59#1,3:564\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0018\u0010\u0000\u001a\u00020\u0004*\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "createFrom",
        "Lcom/miui/video/base/model/MediaData$Episode;",
        "entity",
        "Lcom/miui/video/common/feed/entity/FeedRowEntity;",
        "Lcom/miui/video/base/model/MediaData$Media;",
        "list",
        "",
        "biz_group_shortvideo_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public static final createFrom(Lcom/miui/video/base/model/MediaData$Episode;Lcom/miui/video/common/feed/entity/FeedRowEntity;)Lcom/miui/video/base/model/MediaData$Episode;
    .locals 2
    .param p0    # Lcom/miui/video/base/model/MediaData$Episode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/miui/video/common/feed/entity/FeedRowEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$createFrom"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_id()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/miui/video/base/model/MediaData$Episode;->id:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getGmtPublishText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/miui/video/base/model/MediaData$Episode;->date:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, ""

    :goto_2
    iput-object v0, p0, Lcom/miui/video/base/model/MediaData$Episode;->name:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTarget()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const-string v0, ""

    :goto_3
    iput-object v0, p0, Lcom/miui/video/base/model/MediaData$Episode;->target:Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTargetAddition()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/miui/video/base/model/MediaData$Episode;->targetAddition:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    const-string v0, ""

    :goto_5
    iput-object v0, p0, Lcom/miui/video/base/model/MediaData$Episode;->imageUrl:Ljava/lang/String;

    if-eqz p1, :cond_6

    iget-wide v0, p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;->duration:J

    goto :goto_6

    :cond_6
    const-wide/16 v0, 0x0

    :goto_6
    iput-wide v0, p0, Lcom/miui/video/base/model/MediaData$Episode;->duration:J

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;->cp:Ljava/lang/String;

    if-eqz p1, :cond_7

    goto :goto_7

    :cond_7
    const-string p1, ""

    :goto_7
    iput-object p1, p0, Lcom/miui/video/base/model/MediaData$Episode;->cp:Ljava/lang/String;

    return-object p0
.end method

.method public static final createFrom(Lcom/miui/video/base/model/MediaData$Media;Ljava/util/List;)Lcom/miui/video/base/model/MediaData$Media;
    .locals 3
    .param p0    # Lcom/miui/video/base/model/MediaData$Media;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/model/MediaData$Media;",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/video/common/feed/entity/FeedRowEntity;",
            ">;)",
            "Lcom/miui/video/base/model/MediaData$Media;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$createFrom"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v0

    const-string v2, "list.first().get(0)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/base/model/MediaData$Media;->id:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v0

    const-string v1, "list.first().get(0)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/base/model/MediaData$Media;->title:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/video/base/model/MediaData$Media;->videoType:I

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    new-instance v2, Lcom/miui/video/base/model/MediaData$Episode;

    invoke-direct {v2}, Lcom/miui/video/base/model/MediaData$Episode;-><init>()V

    invoke-static {v2, v1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragmentKt;->createFrom(Lcom/miui/video/base/model/MediaData$Episode;Lcom/miui/video/common/feed/entity/FeedRowEntity;)Lcom/miui/video/base/model/MediaData$Episode;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/miui/video/base/model/MediaData$Media;->play_list:Ljava/util/List;

    return-object p0
.end method
