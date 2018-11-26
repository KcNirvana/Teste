.class Lcom/miui/applicationlock/widget/d;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field final synthetic acy:Lcom/miui/applicationlock/widget/MiuiNumericInputView;


# direct methods
.method public constructor <init>(Lcom/miui/applicationlock/widget/MiuiNumericInputView;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/miui/applicationlock/widget/d;->acy:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/widget/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/widget/d;->setLayoutDirection(I)V

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/widget/d;->setGravity(I)V

    return-void
.end method

.method private ahX(III)V
    .locals 7

    new-instance v0, Lcom/miui/applicationlock/widget/e;

    iget-object v1, p0, Lcom/miui/applicationlock/widget/d;->acy:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/miui/applicationlock/widget/e;-><init>(Lcom/miui/applicationlock/widget/MiuiNumericInputView;Landroid/content/Context;I)V

    new-instance v1, Lcom/miui/applicationlock/widget/e;

    iget-object v2, p0, Lcom/miui/applicationlock/widget/d;->acy:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/d;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3, p2}, Lcom/miui/applicationlock/widget/e;-><init>(Lcom/miui/applicationlock/widget/MiuiNumericInputView;Landroid/content/Context;I)V

    new-instance v2, Lcom/miui/applicationlock/widget/e;

    iget-object v3, p0, Lcom/miui/applicationlock/widget/d;->acy:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/d;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4, p3}, Lcom/miui/applicationlock/widget/e;-><init>(Lcom/miui/applicationlock/widget/MiuiNumericInputView;Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/miui/applicationlock/widget/d;->acy:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    iget-object v3, v3, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->aco:[Lcom/miui/applicationlock/widget/e;

    iget-object v4, p0, Lcom/miui/applicationlock/widget/d;->acy:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-static {v4}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->ahQ(Lcom/miui/applicationlock/widget/MiuiNumericInputView;)I

    move-result v4

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/miui/applicationlock/widget/d;->acy:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    iget-object v3, v3, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->aco:[Lcom/miui/applicationlock/widget/e;

    iget-object v4, p0, Lcom/miui/applicationlock/widget/d;->acy:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-static {v4}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->ahQ(Lcom/miui/applicationlock/widget/MiuiNumericInputView;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    aput-object v1, v3, v4

    iget-object v3, p0, Lcom/miui/applicationlock/widget/d;->acy:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    iget-object v3, v3, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->aco:[Lcom/miui/applicationlock/widget/e;

    iget-object v4, p0, Lcom/miui/applicationlock/widget/d;->acy:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-static {v4}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->ahQ(Lcom/miui/applicationlock/widget/MiuiNumericInputView;)I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    aput-object v2, v3, v4

    iget-object v3, p0, Lcom/miui/applicationlock/widget/d;->acy:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    iget-object v4, p0, Lcom/miui/applicationlock/widget/d;->acy:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-static {v4}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->ahQ(Lcom/miui/applicationlock/widget/MiuiNumericInputView;)I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-static {v3, v4}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->ahT(Lcom/miui/applicationlock/widget/MiuiNumericInputView;I)I

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/d;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900ba

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v4}, Lcom/miui/applicationlock/widget/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v4}, Lcom/miui/applicationlock/widget/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v4}, Lcom/miui/applicationlock/widget/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/widget/d;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/miui/applicationlock/widget/d;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/miui/applicationlock/widget/d;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic ahY(Lcom/miui/applicationlock/widget/d;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/applicationlock/widget/d;->ahX(III)V

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/d;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/widget/d;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
