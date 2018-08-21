.class public Lcom/miui/payment/ui/recordlist/RecordItemVH;
.super Lcom/miui/payment/ui/recordlist/ItemVH;
.source "RecordItemVH.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/payment/ui/recordlist/ItemVH",
        "<",
        "Lcom/miui/payment/data/TransactionItem;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;"
    }
.end annotation


# instance fields
.field private mAmount:Landroid/widget/TextView;

.field private mAmountUnit:Landroid/widget/TextView;

.field private mCategory:Landroid/widget/TextView;

.field private mCategoryIcon:Landroid/widget/ImageView;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mItemViewClickListener:Lcom/miui/payment/ui/recordlist/ItemVH$ItemViewClickListener;

.field private mItemViewLongClickListener:Lcom/miui/payment/ui/recordlist/ItemVH$ItemViewLongClickListener;

.field private mMethod:Landroid/widget/TextView;

.field private mTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/miui/payment/ui/recordlist/ItemVH$ItemViewClickListener;Lcom/miui/payment/ui/recordlist/ItemVH$ItemViewLongClickListener;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/payment/ui/recordlist/ItemVH;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Lcom/miui/payment/ui/recordlist/RecordItemVH;->setViewClickListener(Lcom/miui/payment/ui/recordlist/ItemVH$ItemViewClickListener;)V

    invoke-virtual {p0, p3}, Lcom/miui/payment/ui/recordlist/RecordItemVH;->setViewLongClickListener(Lcom/miui/payment/ui/recordlist/ItemVH$ItemViewLongClickListener;)V

    const v0, 0x1b090338

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/payment/ui/recordlist/RecordItemVH;->mCategoryIcon:Landroid/widget/ImageView;

    const v0, 0x1b09033a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/payment/ui/recordlist/RecordItemVH;->mAmount:Landroid/widget/TextView;

    const v0, 0x1b09033b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/payment/ui/recordlist/RecordItemVH;->mAmountUnit:Landroid/widget/TextView;

    const v0, 0x1b090339

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/payment/ui/recordlist/RecordItemVH;->mCategory:Landroid/widget/TextView;

    const v0, 0x1b09033c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/payment/ui/recordlist/RecordItemVH;->mMethod:Landroid/widget/TextView;

    const v0, 0x1b09033d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/payment/ui/recordlist/RecordItemVH;->mTime:Landroid/widget/TextView;

    const v0, 0x1b09033e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/payment/ui/recordlist/RecordItemVH;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/miui/payment/ui/recordlist/RecordItemVH;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public bindItemView(Lcom/miui/payment/data/TransactionItem;ZZ)V
    .locals 9

    iget-object v6, p0, Lcom/miui/payment/ui/recordlist/RecordItemVH;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/payment/data/TransactionItem;->getCategoryEditCode()I

    move-result v0

    iget-object v6, p0, Lcom/miui/payment/ui/recordlist/RecordItemVH;->mCategoryIcon:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/miui/payment/utils/CategoryHelper;->getCategoryIconResId(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v6, p0, Lcom/miui/payment/ui/recordlist/RecordItemVH;->mAmount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/payment/data/TransactionItem;->getFormattedAmountEdit()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/miui/payment/ui/recordlist/RecordItemVH;->mAmountUnit:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/payment/data/TransactionItem;->getCurrencyCode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/miui/payment/utils/NumberFormatUtil;->getCurrencyUnit(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/miui/payment/data/TransactionItem;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v0}, Lcom/miui/payment/utils/CategoryHelper;->getCategoryString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/miui/payment/ui/recordlist/RecordItemVH;->mCategory:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    :goto_0
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/miui/payment/ui/recordlist/RecordItemVH;->mMethod:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/payment/data/TransactionItem;->getMethodEditCode()I

    move-result v7

    invoke-virtual {p1}, Lcom/miui/payment/data/TransactionItem;->getTransactionId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v7, v8}, Lcom/miui/payment/utils/MethodHelper;->getPresetMethodDesc(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/miui/payment/data/TransactionItem;->getTransactionTimeEdit()J

    move-result-wide v4

    iget-object v6, p0, Lcom/miui/payment/ui/recordlist/RecordItemVH;->mTime:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x2400

    invoke-static {v4, v5, v8}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xc

    invoke-static {v4, v5, v8}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    iget-object v6, p0, Lcom/miui/payment/ui/recordlist/RecordItemVH;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v6, p0, Lcom/miui/payment/ui/recordlist/RecordItemVH;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    return-void

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/miui/payment/ui/recordlist/RecordItemVH;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1
.end method

.method public bridge synthetic bindItemView(Ljava/lang/Object;ZZ)V
    .locals 0

    check-cast p1, Lcom/miui/payment/data/TransactionItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/payment/ui/recordlist/RecordItemVH;->bindItemView(Lcom/miui/payment/data/TransactionItem;ZZ)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/recordlist/RecordItemVH;->mItemViewClickListener:Lcom/miui/payment/ui/recordlist/ItemVH$ItemViewClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/recordlist/RecordItemVH;->mItemViewClickListener:Lcom/miui/payment/ui/recordlist/ItemVH$ItemViewClickListener;

    invoke-interface {v0, p1, p0}, Lcom/miui/payment/ui/recordlist/ItemVH$ItemViewClickListener;->onClick(Landroid/view/View;Lcom/miui/payment/ui/recordlist/ItemVH;)V

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/recordlist/RecordItemVH;->mItemViewLongClickListener:Lcom/miui/payment/ui/recordlist/ItemVH$ItemViewLongClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/recordlist/RecordItemVH;->mItemViewLongClickListener:Lcom/miui/payment/ui/recordlist/ItemVH$ItemViewLongClickListener;

    invoke-interface {v0, p1, p0}, Lcom/miui/payment/ui/recordlist/ItemVH$ItemViewLongClickListener;->onLongClick(Landroid/view/View;Lcom/miui/payment/ui/recordlist/ItemVH;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/recordlist/RecordItemVH;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/recordlist/RecordItemVH;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/recordlist/RecordItemVH;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setViewClickListener(Lcom/miui/payment/ui/recordlist/ItemVH$ItemViewClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/recordlist/RecordItemVH;->mItemViewClickListener:Lcom/miui/payment/ui/recordlist/ItemVH$ItemViewClickListener;

    return-void
.end method

.method public setViewLongClickListener(Lcom/miui/payment/ui/recordlist/ItemVH$ItemViewLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/recordlist/RecordItemVH;->mItemViewLongClickListener:Lcom/miui/payment/ui/recordlist/ItemVH$ItemViewLongClickListener;

    return-void
.end method
