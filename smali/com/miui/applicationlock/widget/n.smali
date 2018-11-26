.class final Lcom/miui/applicationlock/widget/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic adH:Lcom/miui/applicationlock/widget/a;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/widget/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/widget/n;->adH:Lcom/miui/applicationlock/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/n;->adH:Lcom/miui/applicationlock/widget/a;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/a;->ahl(Lcom/miui/applicationlock/widget/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/n;->adH:Lcom/miui/applicationlock/widget/a;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/a;->ahi(Lcom/miui/applicationlock/widget/a;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/n;->adH:Lcom/miui/applicationlock/widget/a;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/a;->ahj(Lcom/miui/applicationlock/widget/a;)Lcom/miui/applicationlock/utils/n;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/applicationlock/utils/n;->agL(Landroid/text/Editable;)V

    :cond_0
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
