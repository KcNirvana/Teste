.class final Lcom/miui/applicationlock/widget/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;


# instance fields
.field final synthetic adL:Lcom/miui/applicationlock/widget/b;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/widget/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/widget/r;->adL:Lcom/miui/applicationlock/widget/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyBoardDelete()V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/widget/r;->adL:Lcom/miui/applicationlock/widget/b;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/b;->ahD(Lcom/miui/applicationlock/widget/b;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_0
    return-void
.end method

.method public onKeyBoardOK()V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/r;->adL:Lcom/miui/applicationlock/widget/b;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/b;->ahI(Lcom/miui/applicationlock/widget/b;)V

    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/r;->adL:Lcom/miui/applicationlock/widget/b;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/b;->ahD(Lcom/miui/applicationlock/widget/b;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    return-void
.end method
