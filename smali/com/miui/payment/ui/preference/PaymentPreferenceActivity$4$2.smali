.class Lcom/miui/payment/ui/preference/PaymentPreferenceActivity$4$2;
.super Ljava/lang/Object;
.source "PaymentPreferenceActivity.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/payment/ui/preference/PaymentPreferenceActivity$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/payment/ui/preference/PaymentPreferenceActivity$4;


# direct methods
.method constructor <init>(Lcom/miui/payment/ui/preference/PaymentPreferenceActivity$4;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity$4$2;->this$1:Lcom/miui/payment/ui/preference/PaymentPreferenceActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity$4$2;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public accept(Ljava/lang/Throwable;)V
    .locals 3
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity$4$2;->this$1:Lcom/miui/payment/ui/preference/PaymentPreferenceActivity$4;

    iget-object v0, v0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity$4;->this$0:Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;

    invoke-static {v0}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->access$000(Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x1b0b02f7

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
