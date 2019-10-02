.class Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl$3;
.super Ljava/lang/Object;
.source "FavorRepositoryImpl.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->createLocalResult()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Lcom/miui/video/base/common/net/model/ModelBase;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;

.field final synthetic val$resultModelBase:Lcom/miui/video/base/common/net/model/ModelBase;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;Lcom/miui/video/base/common/net/model/ModelBase;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl$3;->this$0:Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;

    iput-object p2, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl$3;->val$resultModelBase:Lcom/miui/video/base/common/net/model/ModelBase;

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
            "Lcom/miui/video/base/common/net/model/ModelBase;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl$3;->val$resultModelBase:Lcom/miui/video/base/common/net/model/ModelBase;

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method
