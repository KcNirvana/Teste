.class public Lcom/miui/home/launcher/assistant/ui/view/StockCardView;
.super Lcom/miui/home/launcher/assistant/ui/view/BaseView;
.source "StockCardView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StockCardView"


# instance fields
.field private mAddClickListener:Landroid/view/View$OnClickListener;

.field private mAddStock:Landroid/widget/TextView;

.field private mCardViewIcon:Landroid/widget/ImageView;

.field private mCardViewName:Landroid/widget/TextView;

.field private mColorSchema:I

.field private mContentView:Landroid/view/View;

.field private mContentViewStub:Landroid/view/ViewStub;

.field private mGuideView:Landroid/view/View;

.field private mListView:Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;

.field private mNetUnavailView:Landroid/widget/TextView;

.field private mStockInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/assistant/module/model/StockInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStockItem:Lcom/miui/home/launcher/assistant/module/carditem/StockItem;

.field private mStockListAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;

.field private mViewUpdateListener:Lcom/miui/home/launcher/assistant/module/receiver/StockUpdate$ViewUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/view/StockCardView$1;-><init>(Lcom/miui/home/launcher/assistant/ui/view/StockCardView;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mViewUpdateListener:Lcom/miui/home/launcher/assistant/module/receiver/StockUpdate$ViewUpdateListener;

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView$3;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/view/StockCardView$3;-><init>(Lcom/miui/home/launcher/assistant/ui/view/StockCardView;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mAddClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/home/launcher/assistant/module/carditem/StockItem;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/assistant/module/carditem/StockItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mStockItem:Lcom/miui/home/launcher/assistant/module/carditem/StockItem;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mViewUpdateListener:Lcom/miui/home/launcher/assistant/module/receiver/StockUpdate$ViewUpdateListener;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/module/receiver/StockUpdate;->setUpdateListener(Lcom/miui/home/launcher/assistant/module/receiver/StockUpdate$ViewUpdateListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/ui/view/StockCardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->updateCardViewIcon()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/ui/view/StockCardView;)Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mStockListAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/assistant/ui/view/StockCardView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mAddStock:Landroid/widget/TextView;

    return-object v0
.end method

.method private showContentView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mContentViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mContentView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mContentView:Landroid/view/View;

    const v1, 0x1b0900ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mListView:Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mStockListAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mContentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mGuideView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showGuideView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mGuideView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mContentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private updateCardViewIcon()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/util/StockUtils;->getColorSchema(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mColorSchema:I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mCardViewIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mCardViewIcon:Landroid/widget/ImageView;

    iget v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mColorSchema:I

    if-nez v0, :cond_1

    const v0, 0x1b020323

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const v0, 0x1b020321

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mCardViewIcon:Landroid/widget/ImageView;

    iget v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mColorSchema:I

    if-nez v0, :cond_3

    const v0, 0x1b020322

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    const v0, 0x1b020320

    goto :goto_2
.end method

.method private updateColorSchema()V
    .locals 2

    iget v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mColorSchema:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/util/StockUtils;->getColorSchema(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->getInstance()Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/assistant/ui/view/StockCardView$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/assistant/ui/view/StockCardView$2;-><init>(Lcom/miui/home/launcher/assistant/ui/view/StockCardView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->postToMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public getItemQuantity()I
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mStockInfos:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mStockInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->onFinishInflate()V

    const v0, 0x1b090185

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mNetUnavailView:Landroid/widget/TextView;

    const v0, 0x1b090184

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mCardViewIcon:Landroid/widget/ImageView;

    const v0, 0x1b0900d6

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mCardViewName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mCardViewName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1b0b0402

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->updateCardViewIcon()V

    const v0, 0x1b0901db

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->findView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mGuideView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mGuideView:Landroid/view/View;

    const v1, 0x1b0901dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mAddStock:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mAddStock:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mAddClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x1b0901da

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mContentViewStub:Landroid/view/ViewStub;

    sget-boolean v0, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mAddStock:Landroid/widget/TextView;

    const v1, 0x1b0200e2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method protected onMenuClick()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/util/StockUtils;->startStockMainActivity(Landroid/content/Context;)V

    return-void
.end method

.method public queryItemData()Ljava/lang/Object;
    .locals 3

    const-string/jumbo v0, "StockCardView"

    const-string/jumbo v1, "queryItemData"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mStockItem:Lcom/miui/home/launcher/assistant/module/carditem/StockItem;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/assistant/module/carditem/StockItem;->queryItem(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public refreshView(Ljava/lang/Object;)V
    .locals 3

    const/16 v1, 0x8

    const-string/jumbo v0, "StockCardView"

    const-string/jumbo v2, "refreshView"

    invoke-static {v0, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mNetUnavailView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/util/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->updateColorSchema()V

    if-eqz p1, :cond_2

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mStockInfos:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mStockInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mContentViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->showContentView()V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mStockListAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mStockListAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mStockInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;->setData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mStockListAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;->notifyChange()V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mListView:Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->mStockListAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;->setAdapter(Landroid/widget/Adapter;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/StockCardView;->showGuideView()V

    goto :goto_1
.end method
