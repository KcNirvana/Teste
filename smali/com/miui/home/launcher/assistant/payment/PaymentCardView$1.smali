.class Lcom/miui/home/launcher/assistant/payment/PaymentCardView$1;
.super Landroid/database/ContentObserver;
.source "PaymentCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/payment/PaymentCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/payment/PaymentCardView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/payment/PaymentCardView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView$1;->this$0:Lcom/miui/home/launcher/assistant/payment/PaymentCardView;

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

    sget-object v1, Lcom/miui/home/launcher/assistant/payment/PaymentUtil;->PAYMENT_UPDATE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PaymentCardView"

    const-string/jumbo v1, "Payment has changed, update paymentview"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView$1;->this$0:Lcom/miui/home/launcher/assistant/payment/PaymentCardView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->loadCardData(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "PaymentCardView"

    const-string/jumbo v1, "Not in Minus Screen, Do not update paymentview"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
