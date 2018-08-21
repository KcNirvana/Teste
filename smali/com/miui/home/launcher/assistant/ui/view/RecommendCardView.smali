.class public Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;
.super Lcom/miui/home/launcher/assistant/ui/view/BaseView;
.source "RecommendCardView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecommendCardView"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContainer:Landroid/widget/LinearLayout;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mRecommedPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->mRecommedPos:I

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView$4;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView$4;-><init>(Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;Lcom/miui/home/launcher/assistant/module/model/Recommend;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->addClick(Lcom/miui/home/launcher/assistant/module/model/Recommend;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->statisItemClick(Ljava/lang/String;)V

    return-void
.end method

.method private addClick(Lcom/miui/home/launcher/assistant/module/model/Recommend;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/assistant/module/model/Recommend;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/assistant/module/model/Recommend;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/model/Recommend;->getShowKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/assistant/util/CardStatusUtil;->setCardStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->sortCardsOrder(Lcom/miui/home/launcher/assistant/module/model/Recommend;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "RecommendCardView"

    const-string/jumbo v2, "all add"

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "key_recommend"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/assistant/util/CardStatusUtil;->setCardStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    iget v1, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->mRecommedPos:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const-string/jumbo v1, "all_add"

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->statisItemClick(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->updateListView(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->saveOrderToDB(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->removeRecomApp(Lcom/miui/home/launcher/assistant/module/model/Recommend;)V

    return-void
.end method

.method private addView(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/assistant/module/model/Recommend;",
            ">;)V"
        }
    .end annotation

    const/4 v13, 0x1

    const/4 v12, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_2

    const-string/jumbo v9, "RecommendCardView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "addView size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_3

    iget-object v9, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x1b0400ea

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/assistant/module/model/Recommend;

    const-string/jumbo v9, "RecommendCardView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "view name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/miui/home/launcher/assistant/module/model/Recommend;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v9, 0x1b090114

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-boolean v9, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v9, :cond_0

    const v9, 0x1b0202f7

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    new-instance v9, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView$1;

    invoke-direct {v9, p0, v4, p1}, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView$1;-><init>(Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;Lcom/miui/home/launcher/assistant/module/model/Recommend;Ljava/util/List;)V

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v9, 0x1b09006c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v4}, Lcom/miui/home/launcher/assistant/module/model/Recommend;->getImageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/miui/home/launcher/assistant/util/ImageUtil;->getResource(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    const v9, 0x1b0900ec

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    :try_start_0
    invoke-virtual {v4}, Lcom/miui/home/launcher/assistant/module/model/Recommend;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/miui/home/launcher/assistant/util/StringUtil;->getStringIdFromRes(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setImportantForAccessibility(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x1b0b051a

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v13, [Ljava/lang/Object;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Lcom/miui/home/launcher/assistant/module/model/Recommend;->getSubtitle()Ljava/lang/String;

    move-result-object v5

    const v9, 0x1b0900ed

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v3, v12, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v9, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v9, "RecommendCardView"

    const-string/jumbo v10, "NotFoundException"

    invoke-static {v9, v10, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v4}, Lcom/miui/home/launcher/assistant/module/model/Recommend;->getSubtitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    const-string/jumbo v9, "RecommendCardView"

    const-string/jumbo v10, "RecommendCardView itemList empty"

    invoke-static {v9, v10}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "key_recommend"

    invoke-static {v9, v10, v12}, Lcom/miui/home/launcher/assistant/util/CardStatusUtil;->setCardStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->refreshListView()V

    :cond_3
    return-void
.end method

.method private removeRecomApp(Lcom/miui/home/launcher/assistant/module/model/Recommend;)V
    .locals 2

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->getInstance()Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView$3;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView$3;-><init>(Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;Lcom/miui/home/launcher/assistant/module/model/Recommend;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->runInBackgroud(Ljava/lang/Runnable;)V

    return-void
.end method

.method private saveOrderToDB(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/assistant/module/CardSource;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->getInstance()Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView$2;-><init>(Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->runInBackgroud(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private sortCardsOrder(Lcom/miui/home/launcher/assistant/module/model/Recommend;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/assistant/module/model/Recommend;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/assistant/module/CardSource;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getOpenCards()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/assistant/module/CardSource;

    const-string/jumbo v3, "key_recommend"

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/module/CardSource;->getPrefKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput v1, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->mRecommedPos:I

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/assistant/module/CardSource;->setReLoad(Z)V

    :cond_0
    const-string/jumbo v3, "RecommendCardView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mRecommedPos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->mRecommedPos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->mRecommedPos:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    const/4 v1, 0x0

    :goto_1
    invoke-static {}, Lcom/miui/home/launcher/assistant/module/CardManager;->getCardSize()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/module/CardManager;->getCardSource(I)Lcom/miui/home/launcher/assistant/module/CardSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/module/CardSource;->getPrefKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/model/Recommend;->getShowKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->mRecommedPos:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_3

    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->mRecommedPos:I

    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->mRecommedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->mRecommedPos:I

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->mRecommedPos:I

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method private statisItemClick(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "recommend_position"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/assistant/util/PrefNativeUtil;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "card_item_click_recommend"

    const-string/jumbo v2, "22"

    const-string/jumbo v3, "RecommendCardView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickItemEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getItemSequence()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "recommend_position"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/assistant/util/PrefNativeUtil;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->onFinishInflate()V

    const v0, 0x1b090180

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->mContainer:Landroid/widget/LinearLayout;

    const v0, 0x1b0901c5

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->mInflater:Landroid/view/LayoutInflater;

    sget-boolean v0, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v0, :cond_0

    const v0, 0x1b0901c3

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1b0200da

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public queryItemData()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->queryItem(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public refreshView(Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->addView(Ljava/util/List;)V

    :cond_0
    return-void
.end method
