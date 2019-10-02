.class final Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource$loadMore$2;
.super Ljava/lang/Object;
.source "LongVideoFilterlistDataSource.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;->loadMore(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)Lio/reactivex/Observable;
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012*\u0010\u0002\u001a&\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u0004 \u0005*\u0012\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/miui/video/base/common/net/model/ModelData;",
        "Lcom/miui/video/base/common/net/model/CardListEntity;",
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
.field final synthetic this$0:Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource$loadMore$2;->this$0:Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/miui/video/base/common/net/model/ModelData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/common/net/model/ModelData<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource$loadMore$2;->this$0:Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;

    invoke-static {p1}, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;->access$getPage$p(Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;->access$setPage$p(Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/video/base/common/net/model/ModelData;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource$loadMore$2;->accept(Lcom/miui/video/base/common/net/model/ModelData;)V

    return-void
.end method
