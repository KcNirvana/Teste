.class final Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$9;
.super Ljava/lang/Object;
.source "ShortVideoDetailDataSource.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->load(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
        "kotlin.jvm.PlatformType",
        "accept"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $createMediaData:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$9;->this$0:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;

    iput-object p2, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$9;->$createMediaData:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/miui/video/common/feed/entity/TinyCardEntity;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$9;->$createMediaData:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$9;->this$0:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$9;->this$0:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;

    const-string v2, "it"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->access$convertToMedia(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;Lcom/miui/video/common/feed/entity/TinyCardEntity;)Lcom/miui/video/base/model/MediaData$Media;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->access$setMMedia$p(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;Lcom/miui/video/base/model/MediaData$Media;)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$9;->this$0:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->access$getMMedia$p(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;)Lcom/miui/video/base/model/MediaData$Media;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/miui/video/base/model/MediaData$Media;->play_list:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$9;->this$0:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;

    invoke-static {v1, p1}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->access$convertToEpisode(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;Lcom/miui/video/common/feed/entity/TinyCardEntity;)Lcom/miui/video/base/model/MediaData$Episode;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$9;->this$0:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->access$getMMedia$p(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;)Lcom/miui/video/base/model/MediaData$Media;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/miui/video/base/model/MediaData$Media;->recommend_list:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$9;->this$0:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;

    const-string v2, "it"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->access$convertToEpisode(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;Lcom/miui/video/common/feed/entity/TinyCardEntity;)Lcom/miui/video/base/model/MediaData$Episode;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$9;->accept(Lcom/miui/video/common/feed/entity/TinyCardEntity;)V

    return-void
.end method
