.class Lcom/ali/user/mobile/ui/widget/keyboard/b;
.super Ljava/lang/Object;
.source "APSafeEditText.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/b;->a:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/b;->a:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    iget-boolean v0, v0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->isAutoShowSafeKeyboard:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onFocusChange showKeyboard"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/b;->a:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/b;->a:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->access$200(Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/b;->a:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->showSafeKeyboard()V

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/b;->a:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->access$300(Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/b;->a:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->access$300(Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method
