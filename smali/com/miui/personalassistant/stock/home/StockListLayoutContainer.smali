.class public Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;
.super Landroid/widget/LinearLayout;
.source "StockListLayoutContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "StockListLayoutContainer"


# instance fields
.field dragItemViewClickListener:Lcom/miui/personalassistant/stock/home/StockItemViewHolder$DragItemViewClickListener;

.field private mAddView:Landroid/view/View;

.field private mDragFrom:I

.field private mDragTo:I

.field private mListView:Lmiui/widget/DynamicListView;

.field private mRearrangeListener:Lmiui/widget/DynamicListView$RearrangeListener;

.field private mStocksAdapter:Lcom/miui/personalassistant/stock/home/StocksAdapter;

.field private mUserIdTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$2;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$2;-><init>(Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;)V

    iput-object v0, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->mRearrangeListener:Lmiui/widget/DynamicListView$RearrangeListener;

    new-instance v0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$3;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$3;-><init>(Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;)V

    iput-object v0, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->dragItemViewClickListener:Lcom/miui/personalassistant/stock/home/StockItemViewHolder$DragItemViewClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$2;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$2;-><init>(Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;)V

    iput-object v0, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->mRearrangeListener:Lmiui/widget/DynamicListView$RearrangeListener;

    new-instance v0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$3;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$3;-><init>(Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;)V

    iput-object v0, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->dragItemViewClickListener:Lcom/miui/personalassistant/stock/home/StockItemViewHolder$DragItemViewClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$2;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$2;-><init>(Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;)V

    iput-object v0, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->mRearrangeListener:Lmiui/widget/DynamicListView$RearrangeListener;

    new-instance v0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$3;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$3;-><init>(Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;)V

    iput-object v0, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->dragItemViewClickListener:Lcom/miui/personalassistant/stock/home/StockItemViewHolder$DragItemViewClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;)Lcom/miui/personalassistant/stock/home/StocksAdapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->mStocksAdapter:Lcom/miui/personalassistant/stock/home/StocksAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;Lcom/miui/personalassistant/stock/model/Stock;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->startBybridActivity(Lcom/miui/personalassistant/stock/model/Stock;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;)I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->mDragFrom:I

    return v0
.end method

.method static synthetic access$202(Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;I)I
    .locals 0

    iput p1, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->mDragFrom:I

    return p1
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;)I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->mDragTo:I

    return v0
.end method

.method static synthetic access$302(Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;I)I
    .locals 0

    iput p1, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->mDragTo:I

    return p1
.end method

.method static synthetic access$400(Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;)Lmiui/widget/DynamicListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->mListView:Lmiui/widget/DynamicListView;

    return-object v0
.end method

.method private startBybridActivity(Lcom/miui/personalassistant/stock/model/Stock;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/personalassistant/stock/model/Stock;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/stock/hybrid/HybridIntent;->startHybridActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->mStocksAdapter:Lcom/miui/personalassistant/stock/home/StocksAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->mStocksAdapter:Lcom/miui/personalassistant/stock/home/StocksAdapter;

    invoke-virtual {v1}, Lcom/miui/personalassistant/stock/home/StocksAdapter;->getCount()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1b0b0408

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/miui/personalassistant/stock/search/SearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1b090114
        :pswitch_0
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x1b0903a2

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/DynamicListView;

    iput-object v0, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->mListView:Lmiui/widget/DynamicListView;

    const v0, 0x1b090114

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->mAddView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->mAddView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x1b0903a4

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->mUserIdTextView:Landroid/widget/TextView;

    return-void
.end method

.method public reloadData()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->mStocksAdapter:Lcom/miui/personalassistant/stock/home/StocksAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->mStocksAdapter:Lcom/miui/personalassistant/stock/home/StocksAdapter;

    invoke-virtual {v0}, Lcom/miui/personalassistant/stock/home/StocksAdapter;->reloadData()V

    :cond_0
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->mUserIdTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0b043f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setup()V
    .locals 2

    new-instance v0, Lcom/miui/personalassistant/stock/home/StocksAdapter;

    invoke-virtual {p0}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/personalassistant/stock/home/StocksAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->mStocksAdapter:Lcom/miui/personalassistant/stock/home/StocksAdapter;

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->mStocksAdapter:Lcom/miui/personalassistant/stock/home/StocksAdapter;

    iget-object v1, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->dragItemViewClickListener:Lcom/miui/personalassistant/stock/home/StockItemViewHolder$DragItemViewClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/stock/home/StocksAdapter;->setDragListener(Lcom/miui/personalassistant/stock/home/StockItemViewHolder$DragItemViewClickListener;)V

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->mListView:Lmiui/widget/DynamicListView;

    iget-object v1, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->mStocksAdapter:Lcom/miui/personalassistant/stock/home/StocksAdapter;

    invoke-virtual {v0, v1}, Lmiui/widget/DynamicListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->mListView:Lmiui/widget/DynamicListView;

    iget-object v1, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->mRearrangeListener:Lmiui/widget/DynamicListView$RearrangeListener;

    invoke-virtual {v0, v1}, Lmiui/widget/DynamicListView;->setRearrangeListener(Lmiui/widget/DynamicListView$RearrangeListener;)V

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->mListView:Lmiui/widget/DynamicListView;

    const v1, 0x1b090351

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/widget/DynamicListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->mListView:Lmiui/widget/DynamicListView;

    new-instance v1, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$1;

    invoke-direct {v1, p0}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$1;-><init>(Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;)V

    invoke-virtual {v0, v1}, Lmiui/widget/DynamicListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
