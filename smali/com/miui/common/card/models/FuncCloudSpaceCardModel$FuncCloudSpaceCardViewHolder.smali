.class public Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;
.super Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;
.source ""


# static fields
.field public static final APPDATA:Ljava/lang/String; = "AppData"

.field public static final APPLIST:Ljava/lang/String; = "AppList"

.field public static final DUOKAN:Ljava/lang/String; = "Duokan"

.field public static final GALLERY_IMAGE:Ljava/lang/String; = "GalleryImage"

.field public static final MUSIC:Ljava/lang/String; = "Music"

.field public static final RECORDER:Ljava/lang/String; = "Recorder"


# instance fields
.field private mColorIndex:I

.field private mColorList:Ljava/util/List;

.field private mColorfulRingList:Ljava/util/List;

.field private mColorfulRingView:Lcom/miui/securityscan/ui/main/ColorfulRingView;

.field private mContainer:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mRingDefaultColor:I

.field private mStorageFullView:Landroid/widget/TextView;

.field private mStoragePercentageView:Landroid/widget/TextView;

.field private mStorageSpaceView:Landroid/widget/TextView;

.field private mSupportedCategory:Ljava/util/Map;

.field final synthetic this$0:Lcom/miui/common/card/models/FuncCloudSpaceCardModel;


# direct methods
.method public constructor <init>(Lcom/miui/common/card/models/FuncCloudSpaceCardModel;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->this$0:Lcom/miui/common/card/models/FuncCloudSpaceCardModel;

    invoke-direct {p0, p2}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mColorIndex:I

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mColorList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mColorfulRingList:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mRingDefaultColor:I

    invoke-direct {p0, p2}, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->initView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->initSupportCategory()V

    return-void
.end method

.method private initSupportCategory()V
    .locals 4

    iget-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mSupportedCategory:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mSupportedCategory:Ljava/util/Map;

    const-string/jumbo v2, "GalleryImage"

    const v3, 0x7f080063

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mSupportedCategory:Ljava/util/Map;

    const-string/jumbo v2, "Recorder"

    const v3, 0x7f080065

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mSupportedCategory:Ljava/util/Map;

    const-string/jumbo v2, "AppList"

    const v3, 0x7f08006e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mSupportedCategory:Ljava/util/Map;

    const-string/jumbo v2, "Duokan"

    const v3, 0x7f080067

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mSupportedCategory:Ljava/util/Map;

    const-string/jumbo v2, "Music"

    const v3, 0x7f08006d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mSupportedCategory:Ljava/util/Map;

    const-string/jumbo v2, "AppData"

    const v3, 0x7f080066

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a0127

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mStoragePercentageView:Landroid/widget/TextView;

    const v0, 0x7f0a0128

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mStorageFullView:Landroid/widget/TextView;

    const v0, 0x7f0a0129

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mStorageSpaceView:Landroid/widget/TextView;

    const v0, 0x7f0a0126

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/ui/main/ColorfulRingView;

    iput-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mColorfulRingView:Lcom/miui/securityscan/ui/main/ColorfulRingView;

    iget-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mColorfulRingView:Lcom/miui/securityscan/ui/main/ColorfulRingView;

    iget-object v1, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mColorfulRingList:Ljava/util/List;

    iget v2, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mRingDefaultColor:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/ui/main/ColorfulRingView;->HG(Ljava/util/List;I)V

    const v0, 0x7f0a012b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mContainer:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 15

    invoke-super/range {p0 .. p3}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    check-cast p2, Lcom/miui/common/card/models/FuncCloudSpaceCardModel;

    iget-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/cloud/sync/MiCloudStatusInfo;->fromUserData(Landroid/content/Context;)Lmiui/cloud/sync/MiCloudStatusInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lmiui/cloud/sync/MiCloudStatusInfo;->getQuotaInfo()Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getItemInfoList()Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mColorfulRingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mColorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mSupportedCategory:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mSupportedCategory:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    new-instance v3, Lcom/miui/securityscan/ui/main/g;

    invoke-direct {v3}, Lcom/miui/securityscan/ui/main/g;-><init>()V

    invoke-virtual {v0}, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->getUsed()J

    move-result-wide v4

    long-to-float v0, v4

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v0, v4

    invoke-virtual {v9}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getTotal()J

    move-result-wide v4

    long-to-float v4, v4

    div-float/2addr v0, v4

    iput v0, v3, Lcom/miui/securityscan/ui/main/g;->HR:F

    iput v1, v3, Lcom/miui/securityscan/ui/main/g;->color:I

    iget-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mColorfulRingList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mColorList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->this$0:Lcom/miui/common/card/models/FuncCloudSpaceCardModel;

    invoke-static {v1}, Lcom/miui/common/card/models/FuncCloudSpaceCardModel;->-get0(Lcom/miui/common/card/models/FuncCloudSpaceCardModel;)[I

    move-result-object v1

    iget v3, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mColorIndex:I

    aget v1, v1, v3

    iget v3, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mColorIndex:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->this$0:Lcom/miui/common/card/models/FuncCloudSpaceCardModel;

    invoke-static {v4}, Lcom/miui/common/card/models/FuncCloudSpaceCardModel;->-get0(Lcom/miui/common/card/models/FuncCloudSpaceCardModel;)[I

    move-result-object v4

    array-length v4, v4

    rem-int/2addr v3, v4

    iput v3, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mColorIndex:I

    goto :goto_1

    :cond_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    move v7, v0

    :goto_2
    const/4 v0, 0x0

    move v8, v0

    :goto_3
    if-ge v8, v7, :cond_7

    iget-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mContext:Landroid/content/Context;

    const v1, 0x7f03004f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    const v0, 0x7f0a012d

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v0, 0x7f0a012e

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const v0, 0x7f0a012c

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/ui/main/ColorfulDotView;

    const v1, 0x7f0a00c4

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a00c6

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a012c

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/securityscan/ui/main/ColorfulDotView;

    const v4, 0x7f0a00c4

    invoke-virtual {v12, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a00c6

    invoke-virtual {v12, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    add-int/lit8 v13, v7, -0x1

    if-ne v8, v13, :cond_6

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    mul-int/lit8 v14, v7, 0x2

    if-ge v13, v14, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x4

    invoke-virtual {v12, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mColorList:Ljava/util/List;

    mul-int/lit8 v4, v8, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/miui/securityscan/ui/main/ColorfulDotView;->setColor(I)V

    mul-int/lit8 v0, v8, 0x2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;

    invoke-virtual {v0}, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->getLocalizedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    mul-int/lit8 v0, v8, 0x2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;

    invoke-virtual {v0}, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->getUsed()J

    move-result-wide v0

    invoke-static {v0, v1}, Lmiui/cloud/util/SysHelper;->getQuantityStringWithUnit(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    move v7, v0

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    mul-int/lit8 v14, v7, 0x2

    if-ne v13, v14, :cond_3

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    const/4 v6, 0x0

    invoke-virtual {v12, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mColorList:Ljava/util/List;

    mul-int/lit8 v12, v8, 0x2

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/miui/securityscan/ui/main/ColorfulDotView;->setColor(I)V

    mul-int/lit8 v0, v8, 0x2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;

    invoke-virtual {v0}, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->getLocalizedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    mul-int/lit8 v0, v8, 0x2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;

    invoke-virtual {v0}, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->getUsed()J

    move-result-wide v0

    invoke-static {v0, v1}, Lmiui/cloud/util/SysHelper;->getQuantityStringWithUnit(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mColorList:Ljava/util/List;

    mul-int/lit8 v1, v8, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/miui/securityscan/ui/main/ColorfulDotView;->setColor(I)V

    mul-int/lit8 v0, v8, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;

    invoke-virtual {v0}, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->getLocalizedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    mul-int/lit8 v0, v8, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;

    invoke-virtual {v0}, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->getUsed()J

    move-result-wide v0

    invoke-static {v0, v1}, Lmiui/cloud/util/SysHelper;->getQuantityStringWithUnit(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_6
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    const/4 v6, 0x0

    invoke-virtual {v12, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mColorList:Ljava/util/List;

    mul-int/lit8 v12, v8, 0x2

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/miui/securityscan/ui/main/ColorfulDotView;->setColor(I)V

    mul-int/lit8 v0, v8, 0x2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;

    invoke-virtual {v0}, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->getLocalizedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    mul-int/lit8 v0, v8, 0x2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;

    invoke-virtual {v0}, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->getUsed()J

    move-result-wide v0

    invoke-static {v0, v1}, Lmiui/cloud/util/SysHelper;->getQuantityStringWithUnit(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mColorList:Ljava/util/List;

    mul-int/lit8 v1, v8, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/miui/securityscan/ui/main/ColorfulDotView;->setColor(I)V

    mul-int/lit8 v0, v8, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;

    invoke-virtual {v0}, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->getLocalizedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    mul-int/lit8 v0, v8, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;

    invoke-virtual {v0}, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->getUsed()J

    move-result-wide v0

    invoke-static {v0, v1}, Lmiui/cloud/util/SysHelper;->getQuantityStringWithUnit(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_7
    iget-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mColorfulRingView:Lcom/miui/securityscan/ui/main/ColorfulRingView;

    iget-object v1, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mColorfulRingList:Ljava/util/List;

    iget v2, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mRingDefaultColor:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/ui/main/ColorfulRingView;->HG(Ljava/util/List;I)V

    :cond_8
    invoke-virtual {v9}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->isSpaceFull()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mStoragePercentageView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mStorageFullView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    invoke-virtual {v9}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getUsed()J

    move-result-wide v0

    invoke-static {v0, v1}, Lmiui/cloud/util/SysHelper;->getQuantityStringWithUnit(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getTotal()J

    move-result-wide v2

    invoke-static {v2, v3}, Lmiui/cloud/util/SysHelper;->getQuantityStringWithUnit(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mStorageSpaceView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mStoragePercentageView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mStorageFullView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mStoragePercentageView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getUsed()J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    invoke-virtual {v9}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getTotal()J

    move-result-wide v4

    long-to-float v3, v4

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method
