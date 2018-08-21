.class Lcom/miui/home/launcher/assistant/ui/view/StockCardView$2;
.super Ljava/lang/Object;
.source "StockCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->updateColorSchema()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/StockCardView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/StockCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/StockCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/StockCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->access$000(Lcom/miui/home/launcher/assistant/ui/view/StockCardView;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/StockCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/StockCardView;)Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/StockCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/StockCardView;)Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;->notifyChange()V

    :cond_0
    return-void
.end method
