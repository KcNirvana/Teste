.class final Lcom/miui/video/biz/search/datasources/OnlineSearchHomeDataSource$load$1;
.super Ljava/lang/Object;
.source "OnlineSearchHomeDataSource.kt"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/search/datasources/OnlineSearchHomeDataSource;->load(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/BiFunction<",
        "Lcom/miui/video/base/common/net/model/CardListEntity;",
        "Lcom/miui/video/base/common/net/model/ModelData<",
        "Lcom/miui/video/base/common/net/model/CardListEntity;",
        ">;",
        "Lcom/miui/video/base/common/net/model/ModelData<",
        "Lcom/miui/video/base/common/net/model/CardListEntity;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lcom/miui/video/base/common/net/model/ModelData;",
        "Lcom/miui/video/base/common/net/model/CardListEntity;",
        "t1",
        "t2",
        "apply"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/video/biz/search/datasources/OnlineSearchHomeDataSource$load$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/search/datasources/OnlineSearchHomeDataSource$load$1;

    invoke-direct {v0}, Lcom/miui/video/biz/search/datasources/OnlineSearchHomeDataSource$load$1;-><init>()V

    sput-object v0, Lcom/miui/video/biz/search/datasources/OnlineSearchHomeDataSource$load$1;->INSTANCE:Lcom/miui/video/biz/search/datasources/OnlineSearchHomeDataSource$load$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/miui/video/base/common/net/model/CardListEntity;Lcom/miui/video/base/common/net/model/ModelData;)Lcom/miui/video/base/common/net/model/ModelData;
    .locals 2
    .param p1    # Lcom/miui/video/base/common/net/model/CardListEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/miui/video/base/common/net/model/ModelData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            "Lcom/miui/video/base/common/net/model/ModelData<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;)",
            "Lcom/miui/video/base/common/net/model/ModelData<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "t1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "t2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/video/base/common/net/model/ModelData;->getCard_list()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    invoke-virtual {p2, v0}, Lcom/miui/video/base/common/net/model/ModelData;->setCard_list(Ljava/util/List;)V

    :cond_0
    invoke-virtual {p2}, Lcom/miui/video/base/common/net/model/ModelData;->getCard_list()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p2
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/miui/video/base/common/net/model/CardListEntity;

    check-cast p2, Lcom/miui/video/base/common/net/model/ModelData;

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/biz/search/datasources/OnlineSearchHomeDataSource$load$1;->apply(Lcom/miui/video/base/common/net/model/CardListEntity;Lcom/miui/video/base/common/net/model/ModelData;)Lcom/miui/video/base/common/net/model/ModelData;

    move-result-object p1

    return-object p1
.end method
