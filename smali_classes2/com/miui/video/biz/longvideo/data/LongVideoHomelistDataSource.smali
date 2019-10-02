.class public final Lcom/miui/video/biz/longvideo/data/LongVideoHomelistDataSource;
.super Ljava/lang/Object;
.source "LongVideoHomelistDataSource.kt"

# interfaces
.implements Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource<",
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
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0013\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u001c\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u001e\u0010\u0015\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u0012\u0018\u00010\u00112\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0016\u001a\u00020\u000fH\u0016R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R \u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u0006\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/miui/video/biz/longvideo/data/LongVideoHomelistDataSource;",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;",
        "Lcom/miui/video/base/common/net/model/CardListEntity;",
        "param",
        "Lio/reactivex/functions/Consumer;",
        "",
        "(Lio/reactivex/functions/Consumer;)V",
        "default_search_term",
        "next",
        "page",
        "",
        "getParam",
        "()Lio/reactivex/functions/Consumer;",
        "setParam",
        "destory",
        "",
        "load",
        "Lio/reactivex/Observable;",
        "Lcom/miui/video/base/common/net/model/ModelData;",
        "refreshType",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;",
        "loadMore",
        "updatePage",
        "biz_group_longvideo_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private default_search_term:Ljava/lang/String;

.field private next:Ljava/lang/String;

.field private page:I

.field private param:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/functions/Consumer;)V
    .locals 1
    .param p1    # Lio/reactivex/functions/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/longvideo/data/LongVideoHomelistDataSource;->param:Lio/reactivex/functions/Consumer;

    const/4 p1, 0x1

    iput p1, p0, Lcom/miui/video/biz/longvideo/data/LongVideoHomelistDataSource;->page:I

    return-void
.end method

.method public static final synthetic access$getDefault_search_term$p(Lcom/miui/video/biz/longvideo/data/LongVideoHomelistDataSource;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/longvideo/data/LongVideoHomelistDataSource;->default_search_term:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getNext$p(Lcom/miui/video/biz/longvideo/data/LongVideoHomelistDataSource;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/longvideo/data/LongVideoHomelistDataSource;->next:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getPage$p(Lcom/miui/video/biz/longvideo/data/LongVideoHomelistDataSource;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/longvideo/data/LongVideoHomelistDataSource;->page:I

    return p0
.end method

.method public static final synthetic access$setDefault_search_term$p(Lcom/miui/video/biz/longvideo/data/LongVideoHomelistDataSource;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/longvideo/data/LongVideoHomelistDataSource;->default_search_term:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setNext$p(Lcom/miui/video/biz/longvideo/data/LongVideoHomelistDataSource;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/longvideo/data/LongVideoHomelistDataSource;->next:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setPage$p(Lcom/miui/video/biz/longvideo/data/LongVideoHomelistDataSource;I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/longvideo/data/LongVideoHomelistDataSource;->page:I

    return-void
.end method


# virtual methods
.method public destory()V
    .locals 0

    return-void
.end method

.method public final getParam()Lio/reactivex/functions/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/data/LongVideoHomelistDataSource;->param:Lio/reactivex/functions/Consumer;

    return-object v0
.end method

.method public load(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)Lio/reactivex/Observable;
    .locals 1
    .param p1    # Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelData<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "refreshType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/miui/video/biz/longvideo/data/LongVideoHomelistDataSource;->page:I

    const-class p1, Lcom/miui/video/biz/longvideo/data/RetroLongVideoApi;

    invoke-static {p1}, Lcom/miui/video/base/common/net/api/RetroApiService;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/longvideo/data/RetroLongVideoApi;

    iget v0, p0, Lcom/miui/video/biz/longvideo/data/LongVideoHomelistDataSource;->page:I

    invoke-interface {p1, v0}, Lcom/miui/video/biz/longvideo/data/RetroLongVideoApi;->getLongVideoHomeList(I)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/miui/video/biz/longvideo/data/LongVideoHomelistDataSource$load$1;->INSTANCE:Lcom/miui/video/biz/longvideo/data/LongVideoHomelistDataSource$load$1;

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/longvideo/data/LongVideoHomelistDataSource$load$2;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/longvideo/data/LongVideoHomelistDataSource$load$2;-><init>(Lcom/miui/video/biz/longvideo/data/LongVideoHomelistDataSource;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "RetroApiService.create(R\u2026scribeOn(Schedulers.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public loadMore(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)Lio/reactivex/Observable;
    .locals 1
    .param p1    # Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelData<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "refreshType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/longvideo/data/LongVideoHomelistDataSource;->next:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_0
    const-class p1, Lcom/miui/video/biz/longvideo/data/RetroLongVideoApi;

    invoke-static {p1}, Lcom/miui/video/base/common/net/api/RetroApiService;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/longvideo/data/RetroLongVideoApi;

    iget v0, p0, Lcom/miui/video/biz/longvideo/data/LongVideoHomelistDataSource;->page:I

    invoke-interface {p1, v0}, Lcom/miui/video/biz/longvideo/data/RetroLongVideoApi;->getLongVideoHomeList(I)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/miui/video/biz/longvideo/data/LongVideoHomelistDataSource$loadMore$1;->INSTANCE:Lcom/miui/video/biz/longvideo/data/LongVideoHomelistDataSource$loadMore$1;

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/longvideo/data/LongVideoHomelistDataSource$loadMore$2;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/longvideo/data/LongVideoHomelistDataSource$loadMore$2;-><init>(Lcom/miui/video/biz/longvideo/data/LongVideoHomelistDataSource;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final setParam(Lio/reactivex/functions/Consumer;)V
    .locals 1
    .param p1    # Lio/reactivex/functions/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/longvideo/data/LongVideoHomelistDataSource;->param:Lio/reactivex/functions/Consumer;

    return-void
.end method

.method public updatePage()V
    .locals 0

    return-void
.end method
