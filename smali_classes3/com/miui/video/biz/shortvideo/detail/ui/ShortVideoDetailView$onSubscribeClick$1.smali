.class public final Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onSubscribeClick$1;
.super Lcom/miui/video/common/library/base/BaseObserver;
.source "ShortVideoDetailView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->onSubscribeClick(Lcom/miui/video/common/feed/entity/TinyCardEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/BaseObserver<",
        "Lcom/miui/video/base/common/net/model/ModelBase<",
        "Ljava/lang/Object;",
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
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0018\u0010\n\u001a\u00020\u00052\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onSubscribeClick$1",
        "Lcom/miui/video/common/library/base/BaseObserver;",
        "Lcom/miui/video/base/common/net/model/ModelBase;",
        "",
        "onFail",
        "",
        "failMsg",
        "",
        "e",
        "",
        "onSuccess",
        "t",
        "biz_group_shortvideo_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $boolean:Z

.field final synthetic $entity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

.field final synthetic $itemId:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;Lcom/miui/video/common/feed/entity/TinyCardEntity;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onSubscribeClick$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;

    iput-object p2, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onSubscribeClick$1;->$entity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    iput-boolean p3, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onSubscribeClick$1;->$boolean:Z

    iput-object p4, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onSubscribeClick$1;->$itemId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/video/common/library/base/BaseObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onFail(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onSubscribeClick$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;

    invoke-virtual {p1}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/miui/video/biz/shortvideo/R$string;->t_network_error:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    return-void
.end method

.method public onSuccess(Lcom/miui/video/base/common/net/model/ModelBase;)V
    .locals 5
    .param p1    # Lcom/miui/video/base/common/net/model/ModelBase;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/common/net/model/ModelBase<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelBase;->getResult()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onSubscribeClick$1;->$entity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    iget-boolean v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onSubscribeClick$1;->$boolean:Z

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setSubscribe_status(I)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onSubscribeClick$1;->$entity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    iget-boolean v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onSubscribeClick$1;->$boolean:Z

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onSubscribeClick$1;->$entity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSubscribeCount()J

    move-result-wide v3

    add-long/2addr v3, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onSubscribeClick$1;->$entity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSubscribeCount()J

    move-result-wide v3

    sub-long/2addr v3, v1

    :goto_1
    invoke-virtual {p1, v3, v4}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setSubscribeCount(J)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onSubscribeClick$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->access$getWrapper$p(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;)Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->getView()Lcom/miui/video/common/feed/UIRecyclerListView;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->notifyDataSetChanged()V

    goto :goto_3

    :cond_3
    :goto_2
    new-instance v1, Ljava/lang/Exception;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelBase;->getMsg()Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onSubscribeClick$1;->onFail(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onSubscribeClick$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;

    invoke-virtual {p1}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-boolean v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onSubscribeClick$1;->$boolean:Z

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onSubscribeClick$1;->$itemId:Ljava/lang/String;

    const-string v2, "show_video_detail"

    invoke-static {p1, v0, v1, v2}, Lcom/miui/video/base/routers/pgc/PgcUtil;->subscribeAuthorTrack(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/video/base/common/net/model/ModelBase;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onSubscribeClick$1;->onSuccess(Lcom/miui/video/base/common/net/model/ModelBase;)V

    return-void
.end method
