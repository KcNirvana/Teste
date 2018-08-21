.class Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$5;
.super Ljava/lang/Object;
.source "SearchCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->showSelectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$5;->this$0:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$5;->this$0:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->access$1000(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$5;->this$0:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "card_button_click_top_picture_change"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    move v3, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackScreenCards(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$5;->this$0:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->access$1100(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$5;->this$0:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->dismissPickDialog()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$5;->this$0:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "card_button_click_top_picture_add"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    move v3, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackScreenCards(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
