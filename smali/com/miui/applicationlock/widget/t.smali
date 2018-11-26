.class final Lcom/miui/applicationlock/widget/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic adN:Lcom/miui/applicationlock/widget/e;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/widget/e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/widget/t;->adN:Lcom/miui/applicationlock/widget/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/t;->adN:Lcom/miui/applicationlock/widget/e;

    iget-object v0, v0, Lcom/miui/applicationlock/widget/e;->acA:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->ahR(Lcom/miui/applicationlock/widget/MiuiNumericInputView;)Lcom/miui/applicationlock/widget/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/t;->adN:Lcom/miui/applicationlock/widget/e;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/e;->aia(Lcom/miui/applicationlock/widget/e;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/t;->adN:Lcom/miui/applicationlock/widget/e;

    iget-object v0, v0, Lcom/miui/applicationlock/widget/e;->acA:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->ahR(Lcom/miui/applicationlock/widget/MiuiNumericInputView;)Lcom/miui/applicationlock/widget/c;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/widget/t;->adN:Lcom/miui/applicationlock/widget/e;

    invoke-static {v1}, Lcom/miui/applicationlock/widget/e;->aia(Lcom/miui/applicationlock/widget/e;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/applicationlock/widget/c;->ahW(I)V

    :cond_0
    return-void
.end method
