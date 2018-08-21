.class public Lcom/alipay/android/app/flybird/ui/window/view/SafePayPwdConfirmListener;
.super Ljava/lang/Object;
.source "SafePayPwdConfirmListener.java"

# interfaces
.implements Lcom/alipay/android/app/safepaybase/b;


# instance fields
.field mPwdPage:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/SafePayPwdConfirmListener;->mPwdPage:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/SafePayPwdConfirmListener;->mPwdPage:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/view/SafePayPwdConfirmListener;->onUserConfirm(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onUserConfirm(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/SafePayPwdConfirmListener;->mPwdPage:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->doSubmit()V

    return-void
.end method
