.class Lcom/ali/user/mobile/ui/widget/n;
.super Ljava/lang/Object;
.source "APSixNumberPwdInputBox.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/n;->a:Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/n;->a:Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->access$000(Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;)Lcom/ali/user/mobile/ui/widget/APEditText;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->setOnShowEnableOk(Z)V

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/n;->a:Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v1}, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->requestFocus()Z

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->showSafeKeyboard()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->showSafeKeyboard()V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/n;->a:Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;

    invoke-static {v1}, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->access$000(Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;)Lcom/ali/user/mobile/ui/widget/APEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/ui/widget/APEditText;->requestFocus()Z

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->isAutoShowSafeKeyboard()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->showSafeKeyboard()V

    goto :goto_1
.end method
