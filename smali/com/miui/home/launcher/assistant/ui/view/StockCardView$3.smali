.class Lcom/miui/home/launcher/assistant/ui/view/StockCardView$3;
.super Ljava/lang/Object;
.source "StockCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/ui/view/StockCardView;
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

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView$3;->this$0:Lcom/miui/home/launcher/assistant/ui/view/StockCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView$3;->this$0:Lcom/miui/home/launcher/assistant/ui/view/StockCardView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/util/StockUtils;->startStockAddActivity(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView$3;->this$0:Lcom/miui/home/launcher/assistant/ui/view/StockCardView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "card_button_click_stock"

    const-string/jumbo v2, "14"

    const-string/jumbo v3, "StockCardView"

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView$3;->this$0:Lcom/miui/home/launcher/assistant/ui/view/StockCardView;

    invoke-static {v4}, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->access$200(Lcom/miui/home/launcher/assistant/ui/view/StockCardView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickButtonEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
