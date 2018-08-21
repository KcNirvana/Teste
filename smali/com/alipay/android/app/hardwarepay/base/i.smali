.class Lcom/alipay/android/app/hardwarepay/base/i;
.super Ljava/lang/Object;
.source "HardwarePayValidateDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/alipay/android/app/hardwarepay/base/d;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/base/d;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/base/i;->c:Lcom/alipay/android/app/hardwarepay/base/d;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/base/i;->a:Ljava/lang/String;

    iput p3, p0, Lcom/alipay/android/app/hardwarepay/base/i;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/i;->c:Lcom/alipay/android/app/hardwarepay/base/d;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/base/d;->g(Lcom/alipay/android/app/hardwarepay/base/d;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/base/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/i;->c:Lcom/alipay/android/app/hardwarepay/base/d;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/base/d;->g(Lcom/alipay/android/app/hardwarepay/base/d;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/hardwarepay/base/i;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
