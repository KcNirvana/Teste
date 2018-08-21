.class Lcom/miui/home/launcher/assistant/module/carditem/StockItem$1;
.super Ljava/lang/Object;
.source "StockItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/module/carditem/StockItem;->queryItem(Ljava/lang/String;I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/module/carditem/StockItem;

.field final synthetic val$stockInfoList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/module/carditem/StockItem;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/carditem/StockItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/StockItem;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/module/carditem/StockItem$1;->val$stockInfoList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/StockItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/StockItem;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/StockItem$1;->val$stockInfoList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/module/carditem/StockItem;->access$000(Lcom/miui/home/launcher/assistant/module/carditem/StockItem;Ljava/util/List;)V

    return-void
.end method
