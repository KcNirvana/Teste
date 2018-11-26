.class public Lcom/miui/applicationlock/widget/e;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field final synthetic acA:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

.field private final acz:I


# direct methods
.method public constructor <init>(Lcom/miui/applicationlock/widget/MiuiNumericInputView;Landroid/content/Context;I)V
    .locals 3

    const/4 v2, -0x1

    iput-object p1, p0, Lcom/miui/applicationlock/widget/e;->acA:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput p3, p0, Lcom/miui/applicationlock/widget/e;->acz:I

    iget v0, p0, Lcom/miui/applicationlock/widget/e;->acz:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/miui/applicationlock/widget/t;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/widget/t;-><init>(Lcom/miui/applicationlock/widget/e;)V

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/widget/e;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-direct {p0, p3}, Lcom/miui/applicationlock/widget/e;->ahZ(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/applicationlock/widget/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private ahZ(I)Landroid/view/View;
    .locals 7

    const v6, 0x7f0900be

    const v3, 0x7f08013f

    const/4 v5, -0x2

    const/16 v2, 0x11

    const/4 v4, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/miui/applicationlock/widget/e;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/applicationlock/widget/e;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0707c4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/e;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/e;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/miui/applicationlock/widget/e;->acA:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-static {v1, v0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->ahU(Lcom/miui/applicationlock/widget/MiuiNumericInputView;Landroid/view/View;)Landroid/view/View;

    return-object v0

    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/applicationlock/widget/e;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070811

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/e;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/e;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0

    :cond_2
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/applicationlock/widget/e;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v1, 0x7f020273

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/miui/applicationlock/widget/e;->acA:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    iget-object v1, v1, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->acv:[Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/miui/applicationlock/widget/e;->acA:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-static {v2}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->ahS(Lcom/miui/applicationlock/widget/MiuiNumericInputView;)I

    move-result v2

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/miui/applicationlock/widget/e;->acA:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-static {v1}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->ahS(Lcom/miui/applicationlock/widget/MiuiNumericInputView;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->ahV(Lcom/miui/applicationlock/widget/MiuiNumericInputView;I)I

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/applicationlock/widget/e;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/e;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/e;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string/jumbo v2, "miui-light"

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method static synthetic aia(Lcom/miui/applicationlock/widget/e;)I
    .locals 1

    iget v0, p0, Lcom/miui/applicationlock/widget/e;->acz:I

    return v0
.end method
