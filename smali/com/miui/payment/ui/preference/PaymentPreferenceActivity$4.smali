.class Lcom/miui/payment/ui/preference/PaymentPreferenceActivity$4;
.super Ljava/lang/Object;
.source "PaymentPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->onClearRecordsPrefClicked()V
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

    iput-object p1, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity$4;->this$0:Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string/jumbo v0, "settings_set_payment_clean_click"

    invoke-static {v0}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/payment/data/source/TransactionRepository;->getInstance()Lcom/miui/payment/data/source/TransactionRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/payment/data/source/TransactionRepository;->deleteAllTransactionsWithRx()Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lcom/miui/payment/rx/RxUtil;->subscribeOnIoObserveOnMain()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity$4$1;

    invoke-direct {v1, p0}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity$4$1;-><init>(Lcom/miui/payment/ui/preference/PaymentPreferenceActivity$4;)V

    new-instance v2, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity$4$2;

    invoke-direct {v2, p0}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity$4$2;-><init>(Lcom/miui/payment/ui/preference/PaymentPreferenceActivity$4;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
