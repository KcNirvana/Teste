.class final Lcom/miui/powercenter/autotask/A;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic aLN:Lcom/miui/powercenter/autotask/TextEditPreference;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/autotask/TextEditPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/A;->aLN:Lcom/miui/powercenter/autotask/TextEditPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/A;->aLN:Lcom/miui/powercenter/autotask/TextEditPreference;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/TextEditPreference;->aUS(Lcom/miui/powercenter/autotask/TextEditPreference;)Lcom/miui/powercenter/autotask/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/A;->aLN:Lcom/miui/powercenter/autotask/TextEditPreference;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/TextEditPreference;->aUS(Lcom/miui/powercenter/autotask/TextEditPreference;)Lcom/miui/powercenter/autotask/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/powercenter/autotask/a;->aUU(Landroid/text/Editable;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/autotask/A;->aLN:Lcom/miui/powercenter/autotask/TextEditPreference;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/powercenter/autotask/TextEditPreference;->aUT(Lcom/miui/powercenter/autotask/TextEditPreference;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
