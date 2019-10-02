.class final Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$8;
.super Ljava/lang/Object;
.source "InfoStreamPresenter.kt"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->loadMore(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
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

    iput-object p1, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$8;->this$0:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$8;->this$0:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->setRefreshing(Z)V

    return-void
.end method
