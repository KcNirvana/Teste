.class final Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$12;
.super Ljava/lang/Object;
.source "ShortVideoDetailDataSource.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->load(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)Lio/reactivex/Observable;
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
        "Ljava/lang/Throwable;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
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
.field final synthetic this$0:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$12;->this$0:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$12;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final accept(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$12;->this$0:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->access$getMPlayListener$p(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;)Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;->play(Lcom/miui/video/base/model/MediaData$Media;)V

    :cond_0
    return-void
.end method
