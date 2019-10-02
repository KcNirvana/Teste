.class public final synthetic Lcom/miui/video/biz/pgc/data/-$$Lambda$SubscribeDataSource$9jjV-g0Ovsb61bGzCoDuEBuULCU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/video/biz/pgc/data/SubscribeDataSource;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/video/biz/pgc/data/SubscribeDataSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/pgc/data/-$$Lambda$SubscribeDataSource$9jjV-g0Ovsb61bGzCoDuEBuULCU;->f$0:Lcom/miui/video/biz/pgc/data/SubscribeDataSource;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/pgc/data/-$$Lambda$SubscribeDataSource$9jjV-g0Ovsb61bGzCoDuEBuULCU;->f$0:Lcom/miui/video/biz/pgc/data/SubscribeDataSource;

    check-cast p1, Lcom/miui/video/base/common/net/model/ModelData;

    invoke-static {v0, p1}, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->lambda$load$13(Lcom/miui/video/biz/pgc/data/SubscribeDataSource;Lcom/miui/video/base/common/net/model/ModelData;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
