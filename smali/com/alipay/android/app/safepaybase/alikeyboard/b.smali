.class Lcom/alipay/android/app/safepaybase/alikeyboard/b;
.super Ljava/lang/Object;
.source "AlipayKeyboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

.field private final synthetic b:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

.field private final synthetic c:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/b;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    iput-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/b;->b:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    iput-object p3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/b;->c:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/b;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->access$1(Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;)Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->Show:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/b;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/b;->b:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/b;->c:Landroid/widget/EditText;

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->access$2(Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;Landroid/widget/EditText;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/b;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->access$1(Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;)Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->Hide:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/b;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->hideKeyboard()V

    goto :goto_0
.end method
