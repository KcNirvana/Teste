.class final Lcom/miui/video/biz/search/datasources/OnlineSearchWordsDataSource$load$1;
.super Ljava/lang/Object;
.source "OnlineSearchWordsDataSource.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/search/datasources/OnlineSearchWordsDataSource;->load(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)Lio/reactivex/Observable;
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
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Lcom/miui/video/base/common/net/model/ModelData;",
        "Lcom/miui/video/base/common/net/model/CardListEntity;",
        "it",
        "Lcom/miui/video/base/common/net/model/ModelBase;",
        "Lcom/miui/video/biz/search/entities/SearchWordsEntity;",
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
.field final synthetic this$0:Lcom/miui/video/biz/search/datasources/OnlineSearchWordsDataSource;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/search/datasources/OnlineSearchWordsDataSource;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/search/datasources/OnlineSearchWordsDataSource$load$1;->this$0:Lcom/miui/video/biz/search/datasources/OnlineSearchWordsDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/miui/video/base/common/net/model/ModelBase;)Lcom/miui/video/base/common/net/model/ModelData;
    .locals 1
    .param p1    # Lcom/miui/video/base/common/net/model/ModelBase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/common/net/model/ModelBase<",
            "Lcom/miui/video/biz/search/entities/SearchWordsEntity;",
            ">;)",
            "Lcom/miui/video/base/common/net/model/ModelData<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/search/datasources/OnlineSearchWordsDataSource$load$1;->this$0:Lcom/miui/video/biz/search/datasources/OnlineSearchWordsDataSource;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelBase;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/search/entities/SearchWordsEntity;

    invoke-static {v0, p1}, Lcom/miui/video/biz/search/datasources/OnlineSearchWordsDataSource;->access$convertToModelData(Lcom/miui/video/biz/search/datasources/OnlineSearchWordsDataSource;Lcom/miui/video/biz/search/entities/SearchWordsEntity;)Lcom/miui/video/base/common/net/model/ModelData;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/miui/video/base/common/net/model/ModelBase;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/search/datasources/OnlineSearchWordsDataSource$load$1;->apply(Lcom/miui/video/base/common/net/model/ModelBase;)Lcom/miui/video/base/common/net/model/ModelData;

    move-result-object p1

    return-object p1
.end method
