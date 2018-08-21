.class public Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder;
.super Ljava/lang/Object;
.source "StockViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder$ItemViewClickListener;
    }
.end annotation


# instance fields
.field private mChange:Lcom/miui/home/launcher/assistant/ui/widget/StockChangeTextView;

.field private mChangeIcon:Landroid/widget/ImageView;

.field private mChangeRate:Lcom/miui/home/launcher/assistant/ui/widget/StockChangeTextView;

.field private mItemViewClickListener:Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder$ItemViewClickListener;

.field private mMarket:Landroid/widget/TextView;

.field private mName:Landroid/widget/TextView;

.field private mPosition:I

.field private mPrice:Landroid/widget/TextView;

.field private mRoot:Landroid/view/View;

.field private mSymbol:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder;->mRoot:Landroid/view/View;

    const v0, 0x1b0900d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder;->mName:Landroid/widget/TextView;

    const v0, 0x1b0901dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder;->mMarket:Landroid/widget/TextView;

    const v0, 0x1b0901de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder;->mSymbol:Landroid/widget/TextView;

    const v0, 0x1b0901df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder;->mPrice:Landroid/widget/TextView;

    const v0, 0x1b0901e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/assistant/ui/widget/StockChangeTextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder;->mChange:Lcom/miui/home/launcher/assistant/ui/widget/StockChangeTextView;

    const v0, 0x1b0901e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/assistant/ui/widget/StockChangeTextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder;->mChangeRate:Lcom/miui/home/launcher/assistant/ui/widget/StockChangeTextView;

    const v0, 0x1b0901e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder;->mChangeIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private changeFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string/jumbo v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const-string/jumbo v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-ne v1, v5, :cond_0

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    aget-object v2, v0, v4

    aput-object v2, v1, v4

    const-string/jumbo v2, "."

    aput-object v2, v1, v3

    aget-object v2, v0, v3

    aput-object v2, v1, v5

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/util/StringUtil;->stringConnect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private setChangeIcon(Landroid/widget/ImageView;IZ)V
    .locals 1

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const v0, 0x1b020328

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void

    :cond_0
    const v0, 0x1b02031e

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const v0, 0x1b02031f

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    const v0, 0x1b020327

    goto :goto_2
.end method


# virtual methods
.method bindView(IZLcom/miui/home/launcher/assistant/module/model/StockInfo;ILandroid/content/Context;)V
    .locals 14

    iput p1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder;->mPosition:I

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->getNameCN()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder;->mMarket:Landroid/widget/TextView;

    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->getMarket()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder;->mSymbol:Landroid/widget/TextView;

    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->getSymbol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder;->mPrice:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->getLatestPrice()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->getCurrency()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->getChange()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/home/launcher/assistant/util/StockUtils;->isStockGrow(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->getChange()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder;->mChange:Lcom/miui/home/launcher/assistant/ui/widget/StockChangeTextView;

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder;->changeFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v5, v6, v0, v4}, Lcom/miui/home/launcher/assistant/ui/widget/StockChangeTextView;->setText(Ljava/lang/String;IZ)V

    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->getChangeRate()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1b0b0403

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder;->mChangeRate:Lcom/miui/home/launcher/assistant/ui/widget/StockChangeTextView;

    move/from16 v0, p4

    invoke-virtual {v5, v3, v0, v4}, Lcom/miui/home/launcher/assistant/ui/widget/StockChangeTextView;->setText(Ljava/lang/String;IZ)V

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder;->mChangeIcon:Landroid/widget/ImageView;

    move/from16 v0, p4

    invoke-direct {p0, v5, v0, v4}, Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder;->setChangeIcon(Landroid/widget/ImageView;IZ)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder;->mRoot:Landroid/view/View;

    if-eqz p2, :cond_2

    sget-boolean v5, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v5, :cond_1

    const v5, 0x1b0200dd

    :goto_0
    invoke-virtual {v6, v5}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    :cond_1
    const v5, 0x1b020125

    goto :goto_0

    :cond_2
    const v5, 0x1b020131

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder;->mPosition:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder;->mItemViewClickListener:Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder$ItemViewClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder;->mItemViewClickListener:Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder$ItemViewClickListener;

    invoke-interface {v0, p0}, Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder$ItemViewClickListener;->onClick(Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder;)V

    :cond_0
    return-void
.end method

.method public setItemClickListener(Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder$ItemViewClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder;->mItemViewClickListener:Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder$ItemViewClickListener;

    return-void
.end method
