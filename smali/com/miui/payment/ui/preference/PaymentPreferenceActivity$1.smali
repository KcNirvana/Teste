.class Lcom/miui/payment/ui/preference/PaymentPreferenceActivity$1;
.super Ljava/lang/Object;
.source "PaymentPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->onAssistantEnabledPrefClicked(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity$1;->this$0:Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity$1;->this$0:Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;

    invoke-static {v0}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->access$000(Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/miui/payment/PaymentPrefs;->setPaymentCardEnabled(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity$1;->this$0:Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;

    invoke-static {v0, v1}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->access$100(Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;Z)V

    return-void
.end method
