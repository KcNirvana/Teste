.class final Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$4;
.super Ljava/lang/Object;
.source "InfoStreamPresenter.kt"

# interfaces
.implements Lio/reactivex/functions/Predicate;


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
        "Lio/reactivex/functions/Predicate<",
        "Lcom/miui/video/base/common/net/model/CardListEntity;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/miui/video/base/common/net/model/CardListEntity;",
        "test"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$4;

    invoke-direct {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$4;-><init>()V

    sput-object v0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$4;->INSTANCE:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$4;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Lcom/miui/video/base/common/net/model/CardListEntity;)Z
    .locals 1
    .param p1    # Lcom/miui/video/base/common/net/model/CardListEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/CardListEntity;->getRow_list()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/miui/video/base/common/net/model/CardListEntity;

    invoke-virtual {p0, p1}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter$loadMore$4;->test(Lcom/miui/video/base/common/net/model/CardListEntity;)Z

    move-result p1

    return p1
.end method
