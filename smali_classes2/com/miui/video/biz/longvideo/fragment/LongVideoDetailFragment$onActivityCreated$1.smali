.class final synthetic Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$onActivityCreated$1;
.super Lkotlin/jvm/internal/FunctionReference;
.source "LongVideoDetailFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReference;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/reactivex/Observable<",
        "Lcom/miui/video/base/common/net/model/ModelData<",
        "Lcom/miui/video/base/common/net/model/CardListEntity;",
        ">;>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012#\u0010\u0002\u001a\u001f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0018\u00010\u0003\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u00a2\u0006\u0002\u0008\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "p1",
        "Lio/reactivex/Observable;",
        "Lcom/miui/video/base/common/net/model/ModelData;",
        "Lcom/miui/video/base/common/net/model/CardListEntity;",
        "Lkotlin/ParameterName;",
        "name",
        "observable",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "initVideo"

    return-object v0
.end method

.method public final getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 1

    const-class v0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "initVideo(Lio/reactivex/Observable;)V"

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/reactivex/Observable;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$onActivityCreated$1;->invoke(Lio/reactivex/Observable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lio/reactivex/Observable;)V
    .locals 1
    .param p1    # Lio/reactivex/Observable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelData<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$onActivityCreated$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;

    invoke-static {v0, p1}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->access$initVideo(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;Lio/reactivex/Observable;)V

    return-void
.end method
