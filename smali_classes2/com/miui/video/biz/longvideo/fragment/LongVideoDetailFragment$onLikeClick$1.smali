.class public final Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$onLikeClick$1;
.super Lcom/miui/video/common/library/base/BaseObserver;
.source "LongVideoDetailFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->onLikeClick(ILcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/BaseObserver<",
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
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00052\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$onLikeClick$1",
        "Lcom/miui/video/common/library/base/BaseObserver;",
        "Lcom/miui/video/base/common/net/model/ModelData;",
        "Lcom/miui/video/base/common/net/model/CardListEntity;",
        "onFail",
        "",
        "failMsg",
        "",
        "onSuccess",
        "t",
        "biz_group_longvideo_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

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

.method public onSuccess(Lcom/miui/video/base/common/net/model/ModelData;)V
    .locals 0
    .param p1    # Lcom/miui/video/base/common/net/model/ModelData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/common/net/model/ModelData<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/video/base/common/net/model/ModelData;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$onLikeClick$1;->onSuccess(Lcom/miui/video/base/common/net/model/ModelData;)V

    return-void
.end method
