.class Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView$2;
.super Ljava/lang/Object;
.source "FavoriteCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->resetHeight(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;

.field final synthetic val$dateView:Landroid/widget/TextView;

.field final synthetic val$iconView:Landroid/widget/ImageView;

.field final synthetic val$titleView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView$2;->val$titleView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView$2;->val$iconView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView$2;->val$dateView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView$2;->val$titleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView$2;->val$iconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->access$1000(Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->access$1200(Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView$2;->val$titleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView$2;->val$dateView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->access$1100(Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method
