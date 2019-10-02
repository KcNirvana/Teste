.class Lcom/miui/video/service/update/gpmarket/GPMarketUpdate$1;
.super Lcom/miui/video/common/library/base/BaseObserver;
.source "GPMarketUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;->startCheckVersion(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/BaseObserver<",
        "Lcom/miui/video/service/update/entity/UpdateEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;


# direct methods
.method constructor <init>(Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/update/gpmarket/GPMarketUpdate$1;->this$0:Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;

    invoke-direct {p0}, Lcom/miui/video/common/library/base/BaseObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/video/service/update/gpmarket/GPMarketUpdate$1;->this$0:Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;

    iget-object v0, p0, Lcom/miui/video/service/update/gpmarket/GPMarketUpdate$1;->this$0:Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;

    invoke-static {v0}, Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;->access$000(Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;)Lcom/xiaomi/market/sdk/XiaomiUpdateListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;->access$100(Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;Lcom/xiaomi/market/sdk/XiaomiUpdateListener;Lcom/miui/video/service/update/entity/UpdateEntity;)V

    return-void
.end method

.method public onSuccess(Lcom/miui/video/service/update/entity/UpdateEntity;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/update/gpmarket/GPMarketUpdate$1;->this$0:Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;

    iget-object v1, p0, Lcom/miui/video/service/update/gpmarket/GPMarketUpdate$1;->this$0:Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;

    invoke-static {v1}, Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;->access$000(Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;)Lcom/xiaomi/market/sdk/XiaomiUpdateListener;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;->access$100(Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;Lcom/xiaomi/market/sdk/XiaomiUpdateListener;Lcom/miui/video/service/update/entity/UpdateEntity;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/service/update/gpmarket/GPMarketUpdate$1;->this$0:Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;

    iget-object v0, p0, Lcom/miui/video/service/update/gpmarket/GPMarketUpdate$1;->this$0:Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;

    invoke-static {v0}, Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;->access$000(Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;)Lcom/xiaomi/market/sdk/XiaomiUpdateListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;->access$100(Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;Lcom/xiaomi/market/sdk/XiaomiUpdateListener;Lcom/miui/video/service/update/entity/UpdateEntity;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/video/service/update/entity/UpdateEntity;

    invoke-virtual {p0, p1}, Lcom/miui/video/service/update/gpmarket/GPMarketUpdate$1;->onSuccess(Lcom/miui/video/service/update/entity/UpdateEntity;)V

    return-void
.end method
