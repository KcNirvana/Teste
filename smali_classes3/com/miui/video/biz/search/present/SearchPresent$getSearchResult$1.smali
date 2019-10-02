.class public final Lcom/miui/video/biz/search/present/SearchPresent$getSearchResult$1;
.super Lcom/miui/video/common/library/base/BaseObserver;
.source "SearchPresent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/search/present/SearchPresent;->getSearchResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/BaseObserver<",
        "Lcom/miui/video/biz/search/entities/SearchData;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchPresent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchPresent.kt\ncom/miui/video/biz/search/present/SearchPresent$getSearchResult$1\n*L\n1#1,71:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/miui/video/biz/search/present/SearchPresent$getSearchResult$1",
        "Lcom/miui/video/common/library/base/BaseObserver;",
        "Lcom/miui/video/biz/search/entities/SearchData;",
        "onFail",
        "",
        "failMsg",
        "",
        "onSuccess",
        "t",
        "biz_group_search_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $key:Ljava/lang/String;

.field final synthetic $position:I

.field final synthetic $searchType:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/video/biz/search/present/SearchPresent;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/search/present/SearchPresent;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/search/present/SearchPresent$getSearchResult$1;->this$0:Lcom/miui/video/biz/search/present/SearchPresent;

    iput-object p2, p0, Lcom/miui/video/biz/search/present/SearchPresent$getSearchResult$1;->$searchType:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/video/biz/search/present/SearchPresent$getSearchResult$1;->$key:Ljava/lang/String;

    iput p4, p0, Lcom/miui/video/biz/search/present/SearchPresent$getSearchResult$1;->$position:I

    invoke-direct {p0}, Lcom/miui/video/common/library/base/BaseObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/biz/search/present/SearchPresent$getSearchResult$1;->this$0:Lcom/miui/video/biz/search/present/SearchPresent;

    invoke-virtual {v0}, Lcom/miui/video/biz/search/present/SearchPresent;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/search/view/SearchView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/video/biz/search/view/SearchView;->hideLoading()V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/search/present/SearchPresent$getSearchResult$1;->this$0:Lcom/miui/video/biz/search/present/SearchPresent;

    invoke-virtual {v0}, Lcom/miui/video/biz/search/present/SearchPresent;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/search/view/SearchView;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/miui/video/biz/search/view/SearchView;->showError(Ljava/lang/String;)V

    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    const-string v0, "module"

    const-string v1, "search_page"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "event"

    const-string v1, "search_fail"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "source"

    iget-object v1, p0, Lcom/miui/video/biz/search/present/SearchPresent$getSearchResult$1;->$searchType:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const-string v1, "item_id"

    iget-object v2, p0, Lcom/miui/video/biz/search/present/SearchPresent$getSearchResult$1;->$key:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/miui/video/biz/search/present/SearchPresent$getSearchResult$1;->$position:I

    if-ltz v1, :cond_2

    const-string v1, "position"

    iget v2, p0, Lcom/miui/video/biz/search/present/SearchPresent$getSearchResult$1;->$position:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v1, Lcom/miui/video/biz/search/track/SearchTrackerConst;->Companion:Lcom/miui/video/biz/search/track/SearchTrackerConst$Companion;

    invoke-virtual {v1, p1, v0}, Lcom/miui/video/biz/search/track/SearchTrackerConst$Companion;->track(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public onSuccess(Lcom/miui/video/biz/search/entities/SearchData;)V
    .locals 3
    .param p1    # Lcom/miui/video/biz/search/entities/SearchData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/biz/search/present/SearchPresent$getSearchResult$1;->this$0:Lcom/miui/video/biz/search/present/SearchPresent;

    invoke-virtual {v0}, Lcom/miui/video/biz/search/present/SearchPresent;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/search/view/SearchView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/video/biz/search/view/SearchView;->hideLoading()V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/search/present/SearchPresent$getSearchResult$1;->this$0:Lcom/miui/video/biz/search/present/SearchPresent;

    invoke-virtual {v0}, Lcom/miui/video/biz/search/present/SearchPresent;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/search/view/SearchView;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/miui/video/biz/search/view/SearchView;->showUI(Lcom/miui/video/biz/search/entities/SearchData;)V

    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    const-string v0, "module"

    const-string v1, "search_page"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "event"

    const-string v1, "search_success"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "source"

    iget-object v1, p0, Lcom/miui/video/biz/search/present/SearchPresent$getSearchResult$1;->$searchType:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const-string v1, "item_id"

    iget-object v2, p0, Lcom/miui/video/biz/search/present/SearchPresent$getSearchResult$1;->$key:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/miui/video/biz/search/present/SearchPresent$getSearchResult$1;->$position:I

    if-ltz v1, :cond_2

    const-string v1, "position"

    iget v2, p0, Lcom/miui/video/biz/search/present/SearchPresent$getSearchResult$1;->$position:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v1, Lcom/miui/video/biz/search/track/SearchTrackerConst;->Companion:Lcom/miui/video/biz/search/track/SearchTrackerConst$Companion;

    invoke-virtual {v1, p1, v0}, Lcom/miui/video/biz/search/track/SearchTrackerConst$Companion;->track(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/video/biz/search/entities/SearchData;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/search/present/SearchPresent$getSearchResult$1;->onSuccess(Lcom/miui/video/biz/search/entities/SearchData;)V

    return-void
.end method
