.class Lcom/miui/personalassistant/stock/service/StockService$1;
.super Ljava/lang/Object;
.source "StockService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/stock/service/StockService;->requestServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/stock/service/StockService;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/stock/service/StockService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/stock/service/StockService$1;->this$0:Lcom/miui/personalassistant/stock/service/StockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    :try_start_0
    const-string/jumbo v5, ""

    iget-object v9, p0, Lcom/miui/personalassistant/stock/service/StockService$1;->this$0:Lcom/miui/personalassistant/stock/service/StockService;

    invoke-virtual {v9}, Lcom/miui/personalassistant/stock/service/StockService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/miui/personalassistant/stock/utils/StockUtils;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/stock/utils/StockUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/miui/personalassistant/stock/utils/StockUtils;->getData()Ljava/lang/String;

    move-result-object v1

    iget-object v9, p0, Lcom/miui/personalassistant/stock/service/StockService$1;->this$0:Lcom/miui/personalassistant/stock/service/StockService;

    invoke-virtual {v9}, Lcom/miui/personalassistant/stock/service/StockService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/miui/personalassistant/stock/utils/StockUtils;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/stock/utils/StockUtils;

    invoke-static {v1}, Lcom/miui/personalassistant/stock/utils/StockUtils;->getStockInfos(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v9, p0, Lcom/miui/personalassistant/stock/service/StockService$1;->this$0:Lcom/miui/personalassistant/stock/service/StockService;

    invoke-static {v9}, Lcom/miui/personalassistant/stock/service/StockService;->access$000(Lcom/miui/personalassistant/stock/service/StockService;)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/miui/personalassistant/stock/service/StockService$1;->this$0:Lcom/miui/personalassistant/stock/service/StockService;

    invoke-static {v9}, Lcom/miui/personalassistant/stock/service/StockService;->access$000(Lcom/miui/personalassistant/stock/service/StockService;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_5

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_0
    iget-object v9, p0, Lcom/miui/personalassistant/stock/service/StockService$1;->this$0:Lcom/miui/personalassistant/stock/service/StockService;

    invoke-static {v9}, Lcom/miui/personalassistant/stock/service/StockService;->access$000(Lcom/miui/personalassistant/stock/service/StockService;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v4, v9, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_2

    iget-object v10, p0, Lcom/miui/personalassistant/stock/service/StockService$1;->this$0:Lcom/miui/personalassistant/stock/service/StockService;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/personalassistant/stock/model/StockInfo;

    invoke-virtual {v9}, Lcom/miui/personalassistant/stock/model/StockInfo;->getSymbol()Ljava/lang/String;

    move-result-object v9

    iget-object v11, p0, Lcom/miui/personalassistant/stock/service/StockService$1;->this$0:Lcom/miui/personalassistant/stock/service/StockService;

    invoke-static {v11}, Lcom/miui/personalassistant/stock/service/StockService;->access$000(Lcom/miui/personalassistant/stock/service/StockService;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-static {v10, v9, v11}, Lcom/miui/personalassistant/stock/service/StockService;->access$100(Lcom/miui/personalassistant/stock/service/StockService;Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/miui/personalassistant/stock/service/StockService$1;->this$0:Lcom/miui/personalassistant/stock/service/StockService;

    invoke-static {v9}, Lcom/miui/personalassistant/stock/service/StockService;->access$000(Lcom/miui/personalassistant/stock/service/StockService;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_3

    iget-object v9, p0, Lcom/miui/personalassistant/stock/service/StockService$1;->this$0:Lcom/miui/personalassistant/stock/service/StockService;

    invoke-static {v9}, Lcom/miui/personalassistant/stock/service/StockService;->access$000(Lcom/miui/personalassistant/stock/service/StockService;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/personalassistant/stock/service/StockService$1;->this$0:Lcom/miui/personalassistant/stock/service/StockService;

    invoke-static {v10}, Lcom/miui/personalassistant/stock/service/StockService;->access$000(Lcom/miui/personalassistant/stock/service/StockService;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v4, v10}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v8

    new-instance v7, Lcom/miui/personalassistant/request/StockRequest;

    iget-object v9, p0, Lcom/miui/personalassistant/stock/service/StockService$1;->this$0:Lcom/miui/personalassistant/stock/service/StockService;

    invoke-virtual {v9}, Lcom/miui/personalassistant/stock/service/StockService;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "url_batch_type"

    const-string/jumbo v12, "ids"

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-direct {v7, v10, v11, v12, v9}, Lcom/miui/personalassistant/request/StockRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/miui/personalassistant/request/StockRequest;->getData()Ljava/lang/String;

    move-result-object v5

    iget-object v9, p0, Lcom/miui/personalassistant/stock/service/StockService$1;->this$0:Lcom/miui/personalassistant/stock/service/StockService;

    invoke-virtual {v9}, Lcom/miui/personalassistant/stock/service/StockService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/miui/personalassistant/stock/utils/StockUtils;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/stock/utils/StockUtils;

    invoke-static {v5}, Lcom/miui/personalassistant/stock/utils/StockUtils;->getStockInfos(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v6, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_4

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_2
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_6

    iget-object v9, p0, Lcom/miui/personalassistant/stock/service/StockService$1;->this$0:Lcom/miui/personalassistant/stock/service/StockService;

    invoke-virtual {v9}, Lcom/miui/personalassistant/stock/service/StockService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/miui/personalassistant/stock/utils/StockUtils;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/stock/utils/StockUtils;

    move-result-object v9

    invoke-static {v6}, Lcom/miui/personalassistant/stock/utils/StockUtils;->getStockInfosJsonString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/personalassistant/stock/utils/StockUtils;->saveStockListToDb(Ljava/lang/String;)V

    :goto_3
    iget-object v9, p0, Lcom/miui/personalassistant/stock/service/StockService$1;->this$0:Lcom/miui/personalassistant/stock/service/StockService;

    invoke-virtual {v9}, Lcom/miui/personalassistant/stock/service/StockService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/miui/personalassistant/stock/service/StockService$1;->this$0:Lcom/miui/personalassistant/stock/service/StockService;

    invoke-virtual {v9}, Lcom/miui/personalassistant/stock/service/StockService;->stopSelf()V

    :goto_4
    return-void

    :cond_4
    move-object v6, v0

    goto :goto_2

    :cond_5
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_6
    :try_start_1
    iget-object v9, p0, Lcom/miui/personalassistant/stock/service/StockService$1;->this$0:Lcom/miui/personalassistant/stock/service/StockService;

    invoke-virtual {v9}, Lcom/miui/personalassistant/stock/service/StockService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/miui/personalassistant/stock/utils/StockUtils;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/stock/utils/StockUtils;

    move-result-object v9

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Lcom/miui/personalassistant/stock/utils/StockUtils;->saveStockListToDb(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
