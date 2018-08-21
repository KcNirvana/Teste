.class Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;
.super Ljava/lang/Object;
.source "FlyBirdWindowActivityAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

.field final synthetic val$animType:I

.field final synthetic val$finalAnimOut:I

.field final synthetic val$flybirdView:Landroid/view/View;

.field final synthetic val$frame:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

.field final synthetic val$layout:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;IILandroid/widget/RelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->val$flybirdView:Landroid/view/View;

    iput-object p3, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->val$frame:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    iput p4, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->val$animType:I

    iput p5, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->val$finalAnimOut:I

    iput-object p6, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->val$layout:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->val$flybirdView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->val$flybirdView:Landroid/view/View;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->val$frame:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->val$animType:I

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$800(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;I)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->dismissLoading()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->val$flybirdView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$400(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$400(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$500(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->val$flybirdView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$500(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->val$frame:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->isNoBack()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->val$animType:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$900(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->val$flybirdView:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$1000(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "flybird_title_layout"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->removeMaskView()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->getShowerActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->val$finalAnimOut:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->val$flybirdView:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$500(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v2}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$400(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$500(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->val$animType:I

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->val$flybirdView:Landroid/view/View;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v2}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$1000(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_2
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$1100(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$400(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7$1;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$1200(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->val$layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$1000(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->removeMaskView()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->val$flybirdView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$402(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$1202(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Z)Z

    goto/16 :goto_1
.end method
