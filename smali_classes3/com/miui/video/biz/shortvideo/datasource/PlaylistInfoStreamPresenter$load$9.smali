.class final Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$load$9;
.super Ljava/lang/Object;
.source "PlaylistInfoStreamPresenter.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;->load(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V
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
        "Ljava/util/List<",
        "Lcom/miui/video/common/feed/entity/FeedRowEntity;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "Lcom/miui/video/common/feed/entity/FeedRowEntity;",
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
.field final synthetic this$0:Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$load$9;->this$0:Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$load$9;->accept(Ljava/util/List;)V

    return-void
.end method

.method public final accept(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/FeedRowEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$load$9;->this$0:Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;->access$setLoading$p(Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;Z)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$load$9;->this$0:Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;->access$onLoadData(Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$load$9;->this$0:Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;

    invoke-virtual {p1}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;->getRepository()Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;

    invoke-virtual {p1}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->refreshDone()V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.miui.video.biz.shortvideo.datasource.PlaylistDetailDataSource"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
