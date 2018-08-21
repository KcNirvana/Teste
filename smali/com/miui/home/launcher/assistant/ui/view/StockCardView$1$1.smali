.class Lcom/miui/home/launcher/assistant/ui/view/StockCardView$1$1;
.super Ljava/lang/Object;
.source "StockCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/StockCardView$1;->update(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/assistant/ui/view/StockCardView$1;

.field final synthetic val$stockInfoList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/StockCardView$1;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView$1$1;->this$1:Lcom/miui/home/launcher/assistant/ui/view/StockCardView$1;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView$1$1;->val$stockInfoList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView$1$1;->this$1:Lcom/miui/home/launcher/assistant/ui/view/StockCardView$1;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/StockCardView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView$1$1;->val$stockInfoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->refreshView(Ljava/lang/Object;)V

    return-void
.end method
