.class final Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource$load$1;
.super Ljava/lang/Object;
.source "PlaylistDetailDataSource.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->load(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)Lio/reactivex/Observable;
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
        "Lcom/miui/video/base/common/net/model/ModelBase<",
        "Lcom/miui/video/base/common/net/model/ModelData<",
        "Lcom/miui/video/base/common/net/model/CardListEntity;",
        ">;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012&\u0010\u0002\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004 \u0006*\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/miui/video/base/common/net/model/ModelBase;",
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


# static fields
.field public static final INSTANCE:Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource$load$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource$load$1;

    invoke-direct {v0}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource$load$1;-><init>()V

    sput-object v0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource$load$1;->INSTANCE:Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource$load$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/miui/video/base/common/net/model/ModelBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/common/net/model/ModelBase<",
            "Lcom/miui/video/base/common/net/model/ModelData<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;>;)V"
        }
    .end annotation

    sget-object p1, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->endStep(I)V

    sget-object p1, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->startStep(I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/video/base/common/net/model/ModelBase;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource$load$1;->accept(Lcom/miui/video/base/common/net/model/ModelBase;)V

    return-void
.end method
