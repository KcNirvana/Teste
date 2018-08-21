.class public Lcom/alipay/android/app/safepaybase/c;
.super Ljava/lang/Object;
.source "SafeInputContext.java"


# instance fields
.field private a:Lcom/alipay/android/app/safepaybase/widget/a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/c;->a:Lcom/alipay/android/app/safepaybase/widget/a;

    invoke-static {p1}, Lcom/alipay/android/app/safepaybase/b/d;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/alipay/android/app/safepaybase/widget/a;

    invoke-direct {v0, p1, p2}, Lcom/alipay/android/app/safepaybase/widget/a;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/c;->a:Lcom/alipay/android/app/safepaybase/widget/a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/c;->a:Lcom/alipay/android/app/safepaybase/widget/a;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/widget/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/c;->a:Lcom/alipay/android/app/safepaybase/widget/a;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/safepaybase/widget/a;->a(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/c;->a:Lcom/alipay/android/app/safepaybase/widget/a;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/safepaybase/widget/a;->a(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public a(Lcom/alipay/android/app/safepaybase/b;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/c;->a:Lcom/alipay/android/app/safepaybase/widget/a;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/safepaybase/widget/a;->a(Lcom/alipay/android/app/safepaybase/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/c;->a:Lcom/alipay/android/app/safepaybase/widget/a;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/safepaybase/widget/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/c;->a:Lcom/alipay/android/app/safepaybase/widget/a;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/widget/a;->a()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/c;->a:Lcom/alipay/android/app/safepaybase/widget/a;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/widget/a;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/c;->a:Lcom/alipay/android/app/safepaybase/widget/a;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/widget/a;->d()V

    return-void
.end method
