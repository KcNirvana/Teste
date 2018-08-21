.class Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;
.super Ljava/lang/Object;
.source "FlyBirdWindowActivityAdapter.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

.field final synthetic val$animType:I

.field final synthetic val$flybirdView:Landroid/view/View;

.field final synthetic val$frame:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

.field final synthetic val$layout:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/widget/RelativeLayout;Landroid/view/View;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;->val$layout:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;->val$flybirdView:Landroid/view/View;

    iput-object p4, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;->val$frame:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    iput p5, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;->val$animType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6$1;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

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
