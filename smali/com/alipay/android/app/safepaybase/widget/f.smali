.class Lcom/alipay/android/app/safepaybase/widget/f;
.super Ljava/lang/Object;
.source "SimplePassword.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/f;->a:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
