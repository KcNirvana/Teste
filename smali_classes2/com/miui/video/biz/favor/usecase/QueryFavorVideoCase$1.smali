.class Lcom/miui/video/biz/favor/usecase/QueryFavorVideoCase$1;
.super Ljava/lang/Object;
.source "QueryFavorVideoCase.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/favor/usecase/QueryFavorVideoCase;->buildQueryObservable(Lcom/miui/video/base/common/data/QueryFavorBody;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Lcom/miui/video/base/common/net/model/ModelBase<",
        "Lcom/miui/video/base/routers/personal/favor/ChangeFavorResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/favor/usecase/QueryFavorVideoCase;

.field final synthetic val$resultModelBase:Lcom/miui/video/base/common/net/model/ModelBase;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/favor/usecase/QueryFavorVideoCase;Lcom/miui/video/base/common/net/model/ModelBase;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/favor/usecase/QueryFavorVideoCase$1;->this$0:Lcom/miui/video/biz/favor/usecase/QueryFavorVideoCase;

    iput-object p2, p0, Lcom/miui/video/biz/favor/usecase/QueryFavorVideoCase$1;->val$resultModelBase:Lcom/miui/video/base/common/net/model/ModelBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/miui/video/base/common/net/model/ModelBase<",
            "Lcom/miui/video/base/routers/personal/favor/ChangeFavorResult;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/favor/usecase/QueryFavorVideoCase$1;->val$resultModelBase:Lcom/miui/video/base/common/net/model/ModelBase;

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method
