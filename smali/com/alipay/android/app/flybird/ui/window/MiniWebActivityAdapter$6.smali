.class Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$6;
.super Ljava/lang/Object;
.source "MiniWebActivityAdapter.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

.field final synthetic val$finalNewJsWebViewWindow:Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;

.field final synthetic val$titleStr:Ljava/lang/String;

.field final synthetic val$urlStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$6;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$6;->val$finalNewJsWebViewWindow:Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;

    iput-object p3, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$6;->val$urlStr:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$6;->val$titleStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$6;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$1600(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$6;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$1500(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$6;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$6;->val$finalNewJsWebViewWindow:Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$1502(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;)Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$6;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$1700(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$6;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$100(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$6;->val$urlStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$6;->val$titleStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$6;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$800(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$6;->val$titleStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
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
