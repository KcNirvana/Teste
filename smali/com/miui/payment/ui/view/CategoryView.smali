.class public Lcom/miui/payment/ui/view/CategoryView;
.super Landroid/widget/LinearLayout;
.source "CategoryView.java"


# instance fields
.field private mCategoryCode:I

.field private mCategoryIcon:Landroid/widget/ImageView;

.field private mCategoryTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getCategoryCode()I
    .locals 1

    iget v0, p0, Lcom/miui/payment/ui/view/CategoryView;->mCategoryCode:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x1b090315

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/view/CategoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/payment/ui/view/CategoryView;->mCategoryIcon:Landroid/widget/ImageView;

    const v0, 0x1b090316

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/view/CategoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/payment/ui/view/CategoryView;->mCategoryTitle:Landroid/widget/TextView;

    return-void
.end method

.method public setCategoryCode(I)V
    .locals 2

    iput p1, p0, Lcom/miui/payment/ui/view/CategoryView;->mCategoryCode:I

    iget-object v0, p0, Lcom/miui/payment/ui/view/CategoryView;->mCategoryIcon:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/miui/payment/utils/CategoryHelper;->getCategoryIconResId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/payment/ui/view/CategoryView;->mCategoryTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/payment/ui/view/CategoryView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/miui/payment/utils/CategoryHelper;->getCategoryString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
