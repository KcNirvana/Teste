.class Lcom/miui/antivirus/ui/h;
.super Landroid/app/AlertDialog;
.source ""


# instance fields
.field private aqF:Landroid/widget/TextView;

.field private aqG:Landroid/widget/TextView;

.field private aqH:Landroid/view/View;

.field private aqI:Landroid/widget/CheckBox;

.field private aqJ:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/high16 v3, 0x20000

    sget v0, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/miui/antivirus/ui/h;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03015c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/ui/h;->aqH:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/antivirus/ui/h;->aqH:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/h;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/h;->aqH:Landroid/view/View;

    const v1, 0x7f0a039c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/h;->aqG:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/antivirus/ui/h;->aqH:Landroid/view/View;

    const v1, 0x7f0a039d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/h;->aqF:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/antivirus/ui/h;->aqH:Landroid/view/View;

    const v1, 0x7f0a039e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/antivirus/ui/h;->aqI:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/miui/antivirus/ui/h;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/h;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method public awC(I)V
    .locals 0

    iput p1, p0, Lcom/miui/antivirus/ui/h;->aqJ:I

    return-void
.end method

.method public awD(Z)V
    .locals 2

    iget-object v1, p0, Lcom/miui/antivirus/ui/h;->aqI:Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public awE()I
    .locals 1

    iget v0, p0, Lcom/miui/antivirus/ui/h;->aqJ:I

    return v0
.end method

.method public awF()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/h;->aqI:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/h;->aqF:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/h;->aqG:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
