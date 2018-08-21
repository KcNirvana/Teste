.class Lcom/miui/home/launcher/assistant/express/ExpressCardView$1;
.super Ljava/lang/Object;
.source "ExpressCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/express/ExpressCardView;->showListView(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/express/ExpressCardView;

.field final synthetic val$express:Lcom/miui/personalassistant/express/bean/ExpressEntry;

.field final synthetic val$finalI:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/express/ExpressCardView;Lcom/miui/personalassistant/express/bean/ExpressEntry;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView$1;->this$0:Lcom/miui/home/launcher/assistant/express/ExpressCardView;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView$1;->val$express:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    iput p3, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView$1;->val$finalI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView$1;->this$0:Lcom/miui/home/launcher/assistant/express/ExpressCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->access$000(Lcom/miui/home/launcher/assistant/express/ExpressCardView;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "express_detail_view"

    const-string/jumbo v2, "2"

    const-string/jumbo v3, "expressView"

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView$1;->val$express:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-virtual {v4}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getCompanyName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView$1;->val$finalI:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "card"

    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickItemEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "yellowpage://inquiry_history"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v0, "express"

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView$1;->val$express:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView$1;->this$0:Lcom/miui/home/launcher/assistant/express/ExpressCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->access$000(Lcom/miui/home/launcher/assistant/express/ExpressCardView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
