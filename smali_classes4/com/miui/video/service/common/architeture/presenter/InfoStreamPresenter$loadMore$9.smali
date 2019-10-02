.class final Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$9;
.super Ljava/lang/Object;
.source "InfoStreamPresenter.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->loadMore(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V
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
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\u0010\u0000\u001a\u00020\u00012*\u0010\u0002\u001a&\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u0004 \u0005*\u0012\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u0004\u0018\u00010\u00060\u0003H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "Lcom/miui/video/common/feed/entity/FeedRowEntity;",
        "kotlin.jvm.PlatformType",
        "",
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
.field final synthetic this$0:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;


# direct methods
.method constructor <init>(Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$9;->this$0:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$9;->accept(Ljava/util/List;)V

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

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$9;->this$0:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->onLoadMoreData(Ljava/util/List;)V

    return-void
.end method
