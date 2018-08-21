.class public Lcom/miui/personalassistant/stock/home/StockItemViewHolder;
.super Ljava/lang/Object;
.source "StockItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/stock/home/StockItemViewHolder$OnItemClickListener;,
        Lcom/miui/personalassistant/stock/home/StockItemViewHolder$DragItemViewClickListener;
    }
.end annotation


# instance fields
.field private mCode:Landroid/widget/TextView;

.field private mDelete:Landroid/widget/ImageView;

.field private mDeleteListener:Landroid/view/View$OnClickListener;

.field private mDragHandle:Landroid/widget/ImageView;

.field private mDragListener:Lcom/miui/personalassistant/stock/home/StockItemViewHolder$DragItemViewClickListener;

.field private mExchange:Landroid/widget/TextView;

.field private mName:Landroid/widget/TextView;

.field private mOnItemClickListener:Lcom/miui/personalassistant/stock/home/StockItemViewHolder$OnItemClickListener;

.field private mPosition:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/personalassistant/stock/home/StockItemViewHolder$1;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/stock/home/StockItemViewHolder$1;-><init>(Lcom/miui/personalassistant/stock/home/StockItemViewHolder;)V

    iput-object v0, p0, Lcom/miui/personalassistant/stock/home/StockItemViewHolder;->mDeleteListener:Landroid/view/View$OnClickListener;

    const v0, 0x1b0900d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/stock/home/StockItemViewHolder;->mName:Landroid/widget/TextView;

    const v0, 0x1b0903a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/stock/home/StockItemViewHolder;->mExchange:Landroid/widget/TextView;

    const v0, 0x1b0903a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/stock/home/StockItemViewHolder;->mCode:Landroid/widget/TextView;

    const v0, 0x1b090319

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/personalassistant/stock/home/StockItemViewHolder;->mDelete:Landroid/widget/ImageView;

    const v0, 0x1b090008

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/personalassistant/stock/home/StockItemViewHolder;->mDragHandle:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StockItemViewHolder;->mDragHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StockItemViewHolder;->mDelete:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/personalassistant/stock/home/StockItemViewHolder;->mDeleteListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/stock/home/StockItemViewHolder;)Lcom/miui/personalassistant/stock/home/StockItemViewHolder$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StockItemViewHolder;->mOnItemClickListener:Lcom/miui/personalassistant/stock/home/StockItemViewHolder$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/stock/home/StockItemViewHolder;)I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/stock/home/StockItemViewHolder;->mPosition:I

    return v0
.end method


# virtual methods
.method public bindView(ILcom/miui/personalassistant/stock/model/Stock;)V
    .locals 2

    iput p1, p0, Lcom/miui/personalassistant/stock/home/StockItemViewHolder;->mPosition:I

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StockItemViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/personalassistant/stock/model/Stock;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StockItemViewHolder;->mExchange:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/personalassistant/stock/model/Stock;->getMarket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StockItemViewHolder;->mCode:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/personalassistant/stock/model/Stock;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StockItemViewHolder;->mDragListener:Lcom/miui/personalassistant/stock/home/StockItemViewHolder$DragItemViewClickListener;

    iget v1, p0, Lcom/miui/personalassistant/stock/home/StockItemViewHolder;->mPosition:I

    invoke-interface {v0, v1}, Lcom/miui/personalassistant/stock/home/StockItemViewHolder$DragItemViewClickListener;->startDragging(I)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setDragItemClickListener(Lcom/miui/personalassistant/stock/home/StockItemViewHolder$DragItemViewClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/stock/home/StockItemViewHolder;->mDragListener:Lcom/miui/personalassistant/stock/home/StockItemViewHolder$DragItemViewClickListener;

    return-void
.end method

.method public setOnItemClickListener(Lcom/miui/personalassistant/stock/home/StockItemViewHolder$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/stock/home/StockItemViewHolder;->mOnItemClickListener:Lcom/miui/personalassistant/stock/home/StockItemViewHolder$OnItemClickListener;

    return-void
.end method
