.class final Lcom/miui/applicationlock/ao;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/applicationlock/utils/n;


# instance fields
.field final synthetic akb:Lcom/miui/applicationlock/ChooseAccessControl;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ChooseAccessControl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ao;->akb:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private apB(Landroid/text/Editable;)V
    .locals 5

    const v4, 0x7f0707e4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "pattern"

    iget-object v3, p0, Lcom/miui/applicationlock/ao;->akb:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {v3}, Lcom/miui/applicationlock/ChooseAccessControl;->aoB(Lcom/miui/applicationlock/ChooseAccessControl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ao;->akb:Lcom/miui/applicationlock/ChooseAccessControl;

    iget-object v0, v0, Lcom/miui/applicationlock/ChooseAccessControl;->ahO:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ao;->akb:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAccessControl;->aoz(Lcom/miui/applicationlock/ChooseAccessControl;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/ao;->akb:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAccessControl;->aoA(Lcom/miui/applicationlock/ChooseAccessControl;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/ao;->akb:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAccessControl;->aox(Lcom/miui/applicationlock/ChooseAccessControl;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/ao;->akb:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-virtual {v1}, Lcom/miui/applicationlock/ChooseAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/applicationlock/utils/m;->agi(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/miui/applicationlock/ao;->akb:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {v2}, Lcom/miui/applicationlock/ChooseAccessControl;->aoC(Lcom/miui/applicationlock/ChooseAccessControl;)Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    move-result-object v2

    sget-object v3, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aip:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/miui/applicationlock/ao;->akb:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/applicationlock/ChooseAccessControl;->aoD(Lcom/miui/applicationlock/ChooseAccessControl;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/applicationlock/ao;->akb:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {v2}, Lcom/miui/applicationlock/ChooseAccessControl;->aoA(Lcom/miui/applicationlock/ChooseAccessControl;)Landroid/widget/TextView;

    move-result-object v2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    sget v4, Lcom/miui/applicationlock/ChooseAccessControl;->ahE:I

    if-lt v3, v4, :cond_3

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/miui/applicationlock/ao;->akb:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {v2}, Lcom/miui/applicationlock/ChooseAccessControl;->aoC(Lcom/miui/applicationlock/ChooseAccessControl;)Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    move-result-object v2

    sget-object v3, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aiq:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/miui/applicationlock/ao;->akb:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {v2}, Lcom/miui/applicationlock/ChooseAccessControl;->aoC(Lcom/miui/applicationlock/ChooseAccessControl;)Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    move-result-object v2

    sget-object v3, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->ain:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    if-ne v2, v3, :cond_0

    :cond_5
    iget-object v2, p0, Lcom/miui/applicationlock/ao;->akb:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {v2, p1}, Lcom/miui/applicationlock/ChooseAccessControl;->aoE(Lcom/miui/applicationlock/ChooseAccessControl;Landroid/text/Editable;)Landroid/text/Editable;

    iget-object v2, p0, Lcom/miui/applicationlock/ao;->akb:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {v2}, Lcom/miui/applicationlock/ChooseAccessControl;->aoA(Lcom/miui/applicationlock/ChooseAccessControl;)Landroid/widget/TextView;

    move-result-object v2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    sget v4, Lcom/miui/applicationlock/ChooseAccessControl;->ahE:I

    if-lt v3, v4, :cond_6

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/ao;->akb:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAccessControl;->aoC(Lcom/miui/applicationlock/ChooseAccessControl;)Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    move-result-object v0

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->ain:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ao;->akb:Lcom/miui/applicationlock/ChooseAccessControl;

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aiq:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    invoke-static {v0, v1}, Lcom/miui/applicationlock/ChooseAccessControl;->aoF(Lcom/miui/applicationlock/ChooseAccessControl;Lcom/miui/applicationlock/ChooseAccessControl$Stage;)Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    iget-object v0, p0, Lcom/miui/applicationlock/ao;->akb:Lcom/miui/applicationlock/ChooseAccessControl;

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aiq:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/ChooseAccessControl;->aov(Lcom/miui/applicationlock/ChooseAccessControl$Stage;)V

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public agL(Landroid/text/Editable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ao;->apB(Landroid/text/Editable;)V

    return-void
.end method

.method public agM(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/ao;->akb:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAccessControl;->aoC(Lcom/miui/applicationlock/ChooseAccessControl;)Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    move-result-object v0

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aiq:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ao;->akb:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAccessControl;->aoC(Lcom/miui/applicationlock/ChooseAccessControl;)Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    move-result-object v0

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->ain:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    if-ne v0, v1, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/ao;->akb:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAccessControl;->aoy(Lcom/miui/applicationlock/ChooseAccessControl;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "ChooseAccessControl"

    const-string/jumbo v1, "null choose pattern in stage \'need to confirm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/ao;->akb:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAccessControl;->aoy(Lcom/miui/applicationlock/ChooseAccessControl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/applicationlock/ao;->akb:Lcom/miui/applicationlock/ChooseAccessControl;

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->ail:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/ChooseAccessControl;->aov(Lcom/miui/applicationlock/ChooseAccessControl$Stage;)V

    const-string/jumbo v0, "pattern"

    iget-object v1, p0, Lcom/miui/applicationlock/ao;->akb:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {v1}, Lcom/miui/applicationlock/ChooseAccessControl;->aoB(Lcom/miui/applicationlock/ChooseAccessControl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/applicationlock/ao;->akb:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAccessControl;->aoG(Lcom/miui/applicationlock/ChooseAccessControl;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/applicationlock/ao;->akb:Lcom/miui/applicationlock/ChooseAccessControl;

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->ain:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/ChooseAccessControl;->aov(Lcom/miui/applicationlock/ChooseAccessControl$Stage;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/applicationlock/ao;->akb:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAccessControl;->aoC(Lcom/miui/applicationlock/ChooseAccessControl;)Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    move-result-object v0

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aip:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/miui/applicationlock/ao;->akb:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAccessControl;->aoC(Lcom/miui/applicationlock/ChooseAccessControl;)Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    move-result-object v0

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aim:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    if-ne v0, v1, :cond_2

    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/miui/applicationlock/ChooseAccessControl;->ahE:I

    if-ge v0, v1, :cond_6

    iget-object v0, p0, Lcom/miui/applicationlock/ao;->akb:Lcom/miui/applicationlock/ChooseAccessControl;

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aim:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/ChooseAccessControl;->aov(Lcom/miui/applicationlock/ChooseAccessControl$Stage;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/miui/applicationlock/ao;->akb:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {v0, p1}, Lcom/miui/applicationlock/ChooseAccessControl;->aoD(Lcom/miui/applicationlock/ChooseAccessControl;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/applicationlock/ao;->akb:Lcom/miui/applicationlock/ChooseAccessControl;

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aio:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/ChooseAccessControl;->aov(Lcom/miui/applicationlock/ChooseAccessControl$Stage;)V

    goto :goto_0
.end method

.method public agN()V
    .locals 0

    return-void
.end method

.method public agO()V
    .locals 0

    return-void
.end method
