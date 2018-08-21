.class Lcom/ali/user/mobile/ui/widget/keyboard/c;
.super Ljava/lang/Object;
.source "APSafeEditText.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/c;->a:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/c;->a:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    iget-boolean v0, v0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->isAutoShowSafeKeyboard:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/c;->a:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    new-instance v1, Lcom/ali/user/mobile/ui/widget/keyboard/d;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/ui/widget/keyboard/d;-><init>(Lcom/ali/user/mobile/ui/widget/keyboard/c;)V

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/c;->a:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->access$300(Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/c;->a:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->access$300(Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/c;->a:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->hideNormalKeyboard(Landroid/widget/EditText;)V

    goto :goto_0
.end method
