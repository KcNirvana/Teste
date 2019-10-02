.class public final synthetic Lcom/miui/video/biz/pgc/data/-$$Lambda$SubscribeDataSource$yc8MN1_lIQJNUAl1EGep3QzuIT0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/video/base/common/net/model/CardRowListEntity;

.field private final synthetic f$1:Lcom/miui/video/base/common/net/model/ModelData;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/video/base/common/net/model/CardRowListEntity;Lcom/miui/video/base/common/net/model/ModelData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/pgc/data/-$$Lambda$SubscribeDataSource$yc8MN1_lIQJNUAl1EGep3QzuIT0;->f$0:Lcom/miui/video/base/common/net/model/CardRowListEntity;

    iput-object p2, p0, Lcom/miui/video/biz/pgc/data/-$$Lambda$SubscribeDataSource$yc8MN1_lIQJNUAl1EGep3QzuIT0;->f$1:Lcom/miui/video/base/common/net/model/ModelData;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/pgc/data/-$$Lambda$SubscribeDataSource$yc8MN1_lIQJNUAl1EGep3QzuIT0;->f$0:Lcom/miui/video/base/common/net/model/CardRowListEntity;

    iget-object v1, p0, Lcom/miui/video/biz/pgc/data/-$$Lambda$SubscribeDataSource$yc8MN1_lIQJNUAl1EGep3QzuIT0;->f$1:Lcom/miui/video/base/common/net/model/ModelData;

    check-cast p1, Lcom/miui/video/base/common/net/model/ModelData;

    invoke-static {v0, v1, p1}, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->lambda$null$12(Lcom/miui/video/base/common/net/model/CardRowListEntity;Lcom/miui/video/base/common/net/model/ModelData;Lcom/miui/video/base/common/net/model/ModelData;)Lcom/miui/video/base/common/net/model/ModelData;

    move-result-object p1

    return-object p1
.end method
