.class Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7$1;
.super Ljava/lang/Object;
.source "FlyBirdWindowActivityAdapter.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$1:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7$1;->this$1:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7$1;->this$1:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7$1;->this$1:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;

    iget-object v1, v1, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$400(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$700(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7$1;->this$1:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7$1;->this$1:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;

    iget-object v1, v1, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;->val$flybirdView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$402(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)Landroid/view/View;

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
