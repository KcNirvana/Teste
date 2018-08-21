.class Lcom/alipay/android/app/pay/f;
.super Ljava/lang/Object;
.source "MspInitAssistServiceImpl.java"

# interfaces
.implements Lcom/alipay/android/app/pay/PayTask$OnPayListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/pay/MspInitAssistServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/pay/MspInitAssistServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/pay/f;->a:Lcom/alipay/android/app/pay/MspInitAssistServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPayFailed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onPaySuccess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
