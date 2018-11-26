.class final Lcom/miui/applicationlock/widget/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic adK:Lcom/miui/applicationlock/widget/b;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/widget/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/widget/q;->adK:Lcom/miui/applicationlock/widget/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/q;->adK:Lcom/miui/applicationlock/widget/b;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/b;->ahD(Lcom/miui/applicationlock/widget/b;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/q;->adK:Lcom/miui/applicationlock/widget/b;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/b;->ahB(Lcom/miui/applicationlock/widget/b;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/q;->adK:Lcom/miui/applicationlock/widget/b;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/b;->ahC(Lcom/miui/applicationlock/widget/b;)Lcom/miui/applicationlock/utils/n;

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
