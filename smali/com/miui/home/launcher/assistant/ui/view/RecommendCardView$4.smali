.class Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView$4;
.super Ljava/lang/Object;
.source "RecommendCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "key_recommend"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/assistant/util/CardStatusUtil;->setCardStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->refreshListView()V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;

    const-string/jumbo v1, "close"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1b0901c5
        :pswitch_0
    .end packed-switch
.end method
