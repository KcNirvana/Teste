.class Lcom/miui/home/launcher/assistant/payment/PaymentReceiver$1;
.super Landroid/database/ContentObserver;
.source "PaymentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/payment/PaymentReceiver$1;->this$0:Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->isInMinusScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;->access$000()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PaymentReceiver"

    const-string/jumbo v1, "Payment has changed, update paymentview"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentReceiver$1;->this$0:Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;->access$100(Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;)Lcom/miui/home/launcher/assistant/payment/PaymentReceiver$LoadCardData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentReceiver$1;->this$0:Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;->access$100(Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;)Lcom/miui/home/launcher/assistant/payment/PaymentReceiver$LoadCardData;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/home/launcher/assistant/payment/PaymentReceiver$LoadCardData;->onPaymentLoad()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "PaymentReceiver"

    const-string/jumbo v1, "Not in Minus Screen, Do not update paymentview"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
