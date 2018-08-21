.class public abstract Lcom/ali/user/mobile/ui/widget/APBasePwdInputBox;
.super Lcom/ali/user/mobile/ui/widget/APLinearLayout;
.source "APBasePwdInputBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/user/mobile/ui/widget/APBasePwdInputBox$a;
    }
.end annotation


# instance fields
.field protected isWithKeyboard:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/ui/widget/APLinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/ali/user/mobile/ui/widget/APLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_sixCharInputBox:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    sget v1, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_sixCharInputBox_alipay_withKeyboard:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/APBasePwdInputBox;->isWithKeyboard:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    throw v0

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1
.end method


# virtual methods
.method public callInputMethod()V
    .locals 1

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APBasePwdInputBox;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APEditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APEditText;->requestFocus()Z

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APBasePwdInputBox;->showInputPannel(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public abstract getEditText()Landroid/widget/EditText;
.end method

.method public abstract getInputedPwd(I)Ljava/lang/String;
.end method

.method public hideInputMethod()V
    .locals 2

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APBasePwdInputBox;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    instance-of v1, v0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->closeSafeKeyboard()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Lcom/ali/user/mobile/ui/widget/APLinearLayout;->onFinishInflate()V

    return-void
.end method

.method public abstract setPwdInputListener(Lcom/ali/user/mobile/ui/widget/APBasePwdInputBox$a;)V
.end method

.method protected showInputPannel(Landroid/view/View;)V
    .locals 4

    instance-of v0, p1, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->isPasswordType()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->showSafeKeyboard()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/ali/user/mobile/ui/widget/a;

    invoke-direct {v0, p0, p1}, Lcom/ali/user/mobile/ui/widget/a;-><init>(Lcom/ali/user/mobile/ui/widget/APBasePwdInputBox;Landroid/view/View;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
