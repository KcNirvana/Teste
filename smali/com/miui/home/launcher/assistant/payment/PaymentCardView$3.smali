.class Lcom/miui/home/launcher/assistant/payment/PaymentCardView$3;
.super Ljava/lang/Object;
.source "PaymentCardView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->showNoticeDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/payment/PaymentCardView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/payment/PaymentCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView$3;->this$0:Lcom/miui/home/launcher/assistant/payment/PaymentCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView$3;->this$0:Lcom/miui/home/launcher/assistant/payment/PaymentCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->access$100(Lcom/miui/home/launcher/assistant/payment/PaymentCardView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView$3;->this$0:Lcom/miui/home/launcher/assistant/payment/PaymentCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->access$100(Lcom/miui/home/launcher/assistant/payment/PaymentCardView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
