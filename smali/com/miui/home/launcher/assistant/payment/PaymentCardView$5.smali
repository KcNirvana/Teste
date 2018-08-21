.class Lcom/miui/home/launcher/assistant/payment/PaymentCardView$5;
.super Landroid/os/AsyncTask;
.source "PaymentCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->enablePaymentAssistant(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/payment/PaymentCardView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/payment/PaymentCardView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView$5;->this$0:Lcom/miui/home/launcher/assistant/payment/PaymentCardView;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView$5;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView$5;->val$context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/payment/PaymentUtil;->setPaymentAssistantAuth(Landroid/content/Context;Z)Z

    goto :goto_0
.end method
