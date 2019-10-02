.class final Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource$load$3;
.super Ljava/lang/Object;
.source "PlaylistDetailDataSource.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->load(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0016\u0012\u0004\u0012\u00020\u0002 \u0003*\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u00012\u0012\u0010\u0004\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Lcom/miui/video/base/common/net/model/ModelData;",
        "Lcom/miui/video/base/common/net/model/CardListEntity;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lcom/miui/video/base/common/net/model/ModelBase;",
        "apply"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource$load$3;->this$0:Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/miui/video/base/common/net/model/ModelBase;)Lcom/miui/video/base/common/net/model/ModelData;
    .locals 3
    .param p1    # Lcom/miui/video/base/common/net/model/ModelBase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/common/net/model/ModelBase<",
            "Lcom/miui/video/base/common/net/model/ModelData<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;>;)",
            "Lcom/miui/video/base/common/net/model/ModelData<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelBase;->getResult()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xbb9

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource$load$3;->this$0:Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->access$getDataListener$p(Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;)Lcom/miui/video/biz/shortvideo/datasource/OnDataListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/shortvideo/datasource/OnDataListener;->contentOffline()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource$load$3;->this$0:Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelBase;->getData()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "it.data"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/miui/video/base/common/net/model/ModelData;

    invoke-virtual {v1}, Lcom/miui/video/base/common/net/model/ModelData;->getNext()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/biz/shortvideo/ShortVideoConfigKt;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->access$setTarget$p(Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource$load$3;->this$0:Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->access$getTarget$p(Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource$load$3;->this$0:Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->access$getPage$p(Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->access$setPage$p(Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;I)V

    :cond_2
    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelBase;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelBase;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/common/net/model/ModelData;

    return-object p1

    :cond_3
    new-instance p1, Lcom/miui/video/biz/shortvideo/datasource/ContentOfflineException;

    invoke-direct {p1}, Lcom/miui/video/biz/shortvideo/datasource/ContentOfflineException;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/miui/video/base/common/net/model/ModelBase;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource$load$3;->apply(Lcom/miui/video/base/common/net/model/ModelBase;)Lcom/miui/video/base/common/net/model/ModelData;

    move-result-object p1

    return-object p1
.end method
