.class Lcom/miui/home/launcher/assistant/payment/PaymentCardView$2;
.super Ljava/lang/Object;
.source "PaymentCardView.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/ui/widget/CTADialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->onClick(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView$2;->this$0:Lcom/miui/home/launcher/assistant/payment/PaymentCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveBtnClick()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView$2;->this$0:Lcom/miui/home/launcher/assistant/payment/PaymentCardView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView$2;->this$0:Lcom/miui/home/launcher/assistant/payment/PaymentCardView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->access$000(Lcom/miui/home/launcher/assistant/payment/PaymentCardView;Landroid/content/Context;)V

    return-void
.end method
