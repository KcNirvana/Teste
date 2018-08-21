.class public Lcom/miui/personalassistant/stock/search/SearchItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SearchItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/stock/search/SearchItemViewHolder$ItemViewClickListener;
    }
.end annotation


# instance fields
.field private mAdd:Landroid/widget/ImageView;

.field private mCode:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mExchange:Landroid/widget/TextView;

.field private mItemViewClickListener:Lcom/miui/personalassistant/stock/search/SearchItemViewHolder$ItemViewClickListener;

.field private mName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/miui/personalassistant/stock/search/SearchItemViewHolder$ItemViewClickListener;)V
    .locals 1

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/personalassistant/stock/search/SearchItemViewHolder;->mContext:Landroid/content/Context;

    const v0, 0x1b0900d6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchItemViewHolder;->mName:Landroid/widget/TextView;

    const v0, 0x1b0903a8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchItemViewHolder;->mExchange:Landroid/widget/TextView;

    const v0, 0x1b0903a9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchItemViewHolder;->mCode:Landroid/widget/TextView;

    const v0, 0x1b090114

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchItemViewHolder;->mAdd:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/miui/personalassistant/stock/search/SearchItemViewHolder;->mItemViewClickListener:Lcom/miui/personalassistant/stock/search/SearchItemViewHolder$ItemViewClickListener;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public bindItemView(Lcom/miui/personalassistant/stock/model/SearchStockModel;)V
    .locals 4

    invoke-virtual {p1}, Lcom/miui/personalassistant/stock/model/SearchStockModel;->getStock()Lcom/miui/personalassistant/stock/model/Stock;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/stock/search/SearchItemViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/personalassistant/stock/model/Stock;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/personalassistant/stock/search/SearchItemViewHolder;->mExchange:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/personalassistant/stock/model/Stock;->getMarket()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/personalassistant/stock/search/SearchItemViewHolder;->mCode:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/personalassistant/stock/model/Stock;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/personalassistant/stock/search/SearchItemViewHolder;->mAdd:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/miui/personalassistant/stock/model/SearchStockModel;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x1b02031d

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/miui/personalassistant/stock/search/SearchItemViewHolder;->mAdd:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/miui/personalassistant/stock/model/SearchStockModel;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/miui/personalassistant/stock/model/SearchStockModel;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/personalassistant/stock/search/SearchItemViewHolder;->mAdd:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/personalassistant/stock/search/SearchItemViewHolder;->mContext:Landroid/content/Context;

    const v3, 0x1b0b0389

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :cond_0
    const v1, 0x1b02030b

    goto :goto_0

    :cond_1
    move-object v1, p0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/miui/personalassistant/stock/search/SearchItemViewHolder;->mAdd:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/personalassistant/stock/search/SearchItemViewHolder;->mContext:Landroid/content/Context;

    const v3, 0x1b0b024a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1b090114

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchItemViewHolder;->mItemViewClickListener:Lcom/miui/personalassistant/stock/search/SearchItemViewHolder$ItemViewClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchItemViewHolder;->mItemViewClickListener:Lcom/miui/personalassistant/stock/search/SearchItemViewHolder$ItemViewClickListener;

    invoke-interface {v0, p1, p0}, Lcom/miui/personalassistant/stock/search/SearchItemViewHolder$ItemViewClickListener;->onAddClick(Landroid/view/View;Lcom/miui/personalassistant/stock/search/SearchItemViewHolder;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchItemViewHolder;->mItemViewClickListener:Lcom/miui/personalassistant/stock/search/SearchItemViewHolder$ItemViewClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchItemViewHolder;->mItemViewClickListener:Lcom/miui/personalassistant/stock/search/SearchItemViewHolder$ItemViewClickListener;

    invoke-interface {v0, p0}, Lcom/miui/personalassistant/stock/search/SearchItemViewHolder$ItemViewClickListener;->onClick(Lcom/miui/personalassistant/stock/search/SearchItemViewHolder;)V

    goto :goto_0
.end method
