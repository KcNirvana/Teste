.class final Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource$load$3;
.super Ljava/lang/Object;
.source "ShortVideoChannelDataSource.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;->load(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)Lio/reactivex/Observable;
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
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
.field final synthetic this$0:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource$load$3;->this$0:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/miui/video/base/common/net/model/ModelData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/common/net/model/ModelData<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource$load$3;->this$0:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;->access$getListener$p(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;)Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$ISearchKeyResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelData;->getDefault_search_term()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$ISearchKeyResultListener;->result(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource$load$3;->this$0:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelData;->getNext()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;->access$setNext$p(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource$load$3;->this$0:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;->access$getNext$p(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource$load$3;->this$0:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;->access$getPage$p(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;->access$setPage$p(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;I)V

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource$load$3;->this$0:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;->access$setFirst$p(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/video/base/common/net/model/ModelData;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource$load$3;->accept(Lcom/miui/video/base/common/net/model/ModelData;)V

    return-void
.end method
