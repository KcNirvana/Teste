.class Lcom/miui/payment/ui/preference/PaymentPreferenceActivity$3;
.super Ljava/lang/Object;
.source "PaymentPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    iput-object p1, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity$3;->this$0:Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity$3;->this$0:Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;

    invoke-static {v0}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->access$200(Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method
