.class public final synthetic Lcom/miui/video/biz/pgc/data/-$$Lambda$SubscribeAuthorDataSource$_Cuo1smEJAGb5V2z1RJulMqrhz0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/video/biz/pgc/data/SubscribeAuthorDataSource;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/video/biz/pgc/data/SubscribeAuthorDataSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/pgc/data/-$$Lambda$SubscribeAuthorDataSource$_Cuo1smEJAGb5V2z1RJulMqrhz0;->f$0:Lcom/miui/video/biz/pgc/data/SubscribeAuthorDataSource;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/pgc/data/-$$Lambda$SubscribeAuthorDataSource$_Cuo1smEJAGb5V2z1RJulMqrhz0;->f$0:Lcom/miui/video/biz/pgc/data/SubscribeAuthorDataSource;

    check-cast p1, Lcom/miui/video/base/common/net/model/ModelData;

    invoke-static {v0, p1}, Lcom/miui/video/biz/pgc/data/SubscribeAuthorDataSource;->lambda$loadAuthor$11(Lcom/miui/video/biz/pgc/data/SubscribeAuthorDataSource;Lcom/miui/video/base/common/net/model/ModelData;)V

    return-void
.end method
