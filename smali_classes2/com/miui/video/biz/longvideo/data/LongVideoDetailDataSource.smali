.class public final Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;
.super Ljava/lang/Object;
.source "LongVideoDetailDataSource.kt"

# interfaces
.implements Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource<",
        "Lcom/miui/video/base/common/net/model/CardListEntity;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLongVideoDetailDataSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LongVideoDetailDataSource.kt\ncom/miui/video/biz/longvideo/data/LongVideoDetailDataSource\n*L\n1#1,160:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0018\u0010\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\n0\t0\u0008\u00a2\u0006\u0002\u0010\u000bJ\u001e\u0010\u0018\u001a\u00020\u00192\u0014\u0010\u001a\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\n\u0018\u00010\u001bH\u0002J\u001a\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0002J\u0008\u0010!\u001a\u00020\u0019H\u0016J\u001c\u0010\"\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\n0\t2\u0006\u0010#\u001a\u00020$H\u0016J\u001e\u0010%\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\n\u0018\u00010\t2\u0006\u0010#\u001a\u00020$H\u0016J\u0008\u0010&\u001a\u00020\u0019H\u0002J\u0008\u0010\'\u001a\u00020\u0019H\u0016R,\u0010\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\n0\t0\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0005\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011\"\u0004\u0008\u0015\u0010\u0013R\u001a\u0010\u0006\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0011\"\u0004\u0008\u0017\u0010\u0013\u00a8\u0006("
    }
    d2 = {
        "Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;",
        "Lcom/miui/video/base/common/net/model/CardListEntity;",
        "itemId",
        "",
        "playlistId",
        "source",
        "consumer",
        "Lio/reactivex/functions/Consumer;",
        "Lio/reactivex/Observable;",
        "Lcom/miui/video/base/common/net/model/ModelData;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/reactivex/functions/Consumer;)V",
        "getConsumer",
        "()Lio/reactivex/functions/Consumer;",
        "setConsumer",
        "(Lio/reactivex/functions/Consumer;)V",
        "getItemId",
        "()Ljava/lang/String;",
        "setItemId",
        "(Ljava/lang/String;)V",
        "getPlaylistId",
        "setPlaylistId",
        "getSource",
        "setSource",
        "addEpNum",
        "",
        "it",
        "Lcom/miui/video/base/common/net/model/ModelBase;",
        "coverTitleList",
        "",
        "Lcom/miui/video/common/feed/entity/TitleEntity;",
        "cardList",
        "Lcom/miui/video/base/common/net/model/CardRowListEntity;",
        "destory",
        "load",
        "refreshType",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;",
        "loadMore",
        "trackVideoDetailExpose",
        "updatePage",
        "biz_group_longvideo_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private consumer:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelData<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private itemId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private playlistId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private source:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/reactivex/functions/Consumer;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/functions/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/reactivex/functions/Consumer<",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelData<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;>;>;)V"
        }
    .end annotation

    const-string v0, "itemId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playlistId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumer"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;->itemId:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;->playlistId:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;->source:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;->consumer:Lio/reactivex/functions/Consumer;

    return-void
.end method

.method public static final synthetic access$addEpNum(Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;Lcom/miui/video/base/common/net/model/ModelBase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;->addEpNum(Lcom/miui/video/base/common/net/model/ModelBase;)V

    return-void
.end method

.method public static final synthetic access$coverTitleList(Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;Lcom/miui/video/base/common/net/model/CardRowListEntity;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;->coverTitleList(Lcom/miui/video/base/common/net/model/CardRowListEntity;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$trackVideoDetailExpose(Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;->trackVideoDetailExpose()V

    return-void
.end method

.method private final addEpNum(Lcom/miui/video/base/common/net/model/ModelBase;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/common/net/model/ModelBase<",
            "Lcom/miui/video/base/common/net/model/ModelData<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelBase;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelBase;->getData()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "it.data"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/miui/video/base/common/net/model/ModelData;

    invoke-virtual {v0}, Lcom/miui/video/base/common/net/model/ModelData;->getCard_list()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Lcom/miui/video/base/common/net/model/CardRowListEntity;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelBase;->getData()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "it.data"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/miui/video/base/common/net/model/ModelData;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelData;->getCard_list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/base/common/net/model/CardListEntity;

    invoke-virtual {v1}, Lcom/miui/video/base/common/net/model/CardListEntity;->getRow_list()Ljava/util/List;

    move-result-object v1

    const-string v2, "cardListEntity.row_list"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/base/common/net/model/CardRowListEntity;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getRow_type()Ljava/lang/String;

    move-result-object v3

    const-string v4, "long_video_detail"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v2

    :cond_3
    invoke-virtual {v2}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getItem_list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    iget v4, v3, Lcom/miui/video/common/feed/entity/TinyCardEntity;->position:I

    if-lez v4, :cond_4

    const-string v4, "tinyCardEntity"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EP"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/miui/video/common/feed/entity/TinyCardEntity;->position:I

    invoke-static {v5}, Lcom/miui/video/framework/utils/TxtUtils;->formatInt(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSelected()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getItem_list()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getItem_list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getItem_list()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    const-string v5, "card"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_EP"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/miui/video/common/feed/entity/TinyCardEntity;->position:I

    invoke-static {v3}, Lcom/miui/video/framework/utils/TxtUtils;->formatInt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method private final coverTitleList(Lcom/miui/video/base/common/net/model/CardRowListEntity;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/common/net/model/CardRowListEntity;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TitleEntity;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getItem_list()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getItem_list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    new-instance v2, Lcom/miui/video/common/feed/entity/TitleEntity;

    const-string v3, "entity"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSelected()I

    move-result v4

    invoke-virtual {v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getMax()I

    move-result v5

    invoke-virtual {v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getMin()I

    move-result v1

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/miui/video/common/feed/entity/TitleEntity;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    return-object v0
.end method

.method private final trackVideoDetailExpose()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const-string v1, "module"

    const-string v2, "video_detail_page"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "event"

    const-string v2, "video_detail_expose"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;->source:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "source"

    iget-object v2, p0, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;->source:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    const-string v2, "item_id"

    iget-object v3, p0, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;->itemId:Ljava/lang/String;

    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "playlist_id"

    iget-object v3, p0, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;->playlistId:Ljava/lang/String;

    if-nez v3, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "item_type"

    const-string v3, "long_video"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v0, v1, v3}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    return-void
.end method


# virtual methods
.method public destory()V
    .locals 0

    return-void
.end method

.method public final getConsumer()Lio/reactivex/functions/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Consumer<",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelData<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;->consumer:Lio/reactivex/functions/Consumer;

    return-object v0
.end method

.method public final getItemId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlaylistId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;->playlistId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSource()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;->source:Ljava/lang/String;

    return-object v0
.end method

.method public load(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)Lio/reactivex/Observable;
    .locals 2
    .param p1    # Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelData<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "refreshType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->startStep(I)V

    const-class p1, Lcom/miui/video/biz/longvideo/data/RetroLongVideoApi;

    invoke-static {p1}, Lcom/miui/video/base/common/net/api/RetroApiService;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/longvideo/data/RetroLongVideoApi;

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;->itemId:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;->playlistId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/miui/video/biz/longvideo/data/RetroLongVideoApi;->getLongVideoDetail(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource$load$observable$1;->INSTANCE:Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource$load$observable$1;

    check-cast v0, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource$load$observable$2;->INSTANCE:Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource$load$observable$2;

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource$load$observable$3;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource$load$observable$3;-><init>(Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource$load$observable$4;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource$load$observable$4;-><init>(Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource$load$observable$5;->INSTANCE:Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource$load$observable$5;

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Observable;->share()Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;->consumer:Lio/reactivex/functions/Consumer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource$load$1;->INSTANCE:Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource$load$1;

    check-cast v0, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource$load$2;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource$load$2;-><init>(Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "observable\n            .\u2026         }\n\n            }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public loadMore(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)Lio/reactivex/Observable;
    .locals 1
    .param p1    # Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelData<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "refreshType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final setConsumer(Lio/reactivex/functions/Consumer;)V
    .locals 1
    .param p1    # Lio/reactivex/functions/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelData<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;>;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;->consumer:Lio/reactivex/functions/Consumer;

    return-void
.end method

.method public final setItemId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;->itemId:Ljava/lang/String;

    return-void
.end method

.method public final setPlaylistId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;->playlistId:Ljava/lang/String;

    return-void
.end method

.method public final setSource(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;->source:Ljava/lang/String;

    return-void
.end method

.method public updatePage()V
    .locals 0

    return-void
.end method
