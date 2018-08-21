.class Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6$1;
.super Ljava/lang/Object;
.source "FlyBirdWindowActivityAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6$1;->this$1:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6$1;->this$1:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$300(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6$1;->this$1:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$400(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6$1;->this$1:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;->val$layout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6$1;->this$1:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6$1;->this$1:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;

    iget-object v1, v1, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$400(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$500(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6$1;->this$1:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6$1;->this$1:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;

    iget-object v1, v1, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;->val$flybirdView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$500(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6$1;->this$1:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;->val$frame:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->isNoBack()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6$1;->this$1:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;

    iget v0, v0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;->val$animType:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6$1;->this$1:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6$1;->this$1:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;

    iget-object v1, v1, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$400(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$602(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)Landroid/view/View;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6$1;->this$1:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6$1;->this$1:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;

    iget-object v1, v1, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;->val$flybirdView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$402(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6$1;->this$1:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6$1;->this$1:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;

    iget-object v1, v1, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;->val$flybirdView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$500(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6$1;->this$1:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;->val$flybirdView:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6$1;->this$1:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;

    iget-object v1, v1, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v1, v1, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "flybird_fullscreen_bg"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6$1;->this$1:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->removeMaskView()V

    invoke-static {}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->clearWin()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6$1;->this$1:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6$1;->this$1:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;

    iget-object v1, v1, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$400(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$700(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6$1;->this$1:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$600(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6$1;->this$1:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6$1;->this$1:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;

    iget-object v1, v1, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$600(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$700(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6$1;->this$1:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$602(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6$1;->this$1:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;->val$flybirdView:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method
