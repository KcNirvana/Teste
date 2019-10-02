.class public Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentRowData;
.super Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;
.source "UICardMomentRowData.java"


# static fields
.field public static final ACTION_SETTING_PADDING:Ljava/lang/String; = "action_setting_padding"


# instance fields
.field private mEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;

.field private mListener:Lcom/miui/video/framework/impl/IActionListener;

.field private mPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/miui/video/framework/impl/IActionListener;)V
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->ui_moment_row_view:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    iput-object p4, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentRowData;->mListener:Lcom/miui/video/framework/impl/IActionListener;

    return-void
.end method

.method private initView(Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;I)V
    .locals 7

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentRowData;->vView:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getColumnCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenWidthPixels()I

    move-result v2

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getColumnCount()I

    move-result v3

    div-int/2addr v2, v3

    new-instance v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentRowData;->mListener:Lcom/miui/video/framework/impl/IActionListener;

    const-string v4, "action_setting_padding"

    invoke-interface {v3, v4, v1, p0}, Lcom/miui/video/framework/impl/IActionListener;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getColumnCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    new-instance v4, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;

    iget-object v5, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentRowData;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentRowData;->mListener:Lcom/miui/video/framework/impl/IActionListener;

    invoke-direct {v4, v5, v6}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;-><init>(Landroid/content/Context;Lcom/miui/video/framework/impl/IActionListener;)V

    if-nez p2, :cond_1

    iget v5, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentRowData;->mPadding:I

    invoke-virtual {v4, v1, v1, v5, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->setPadding(IIII)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getColumnCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_2

    iget v5, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentRowData;->mPadding:I

    invoke-virtual {v4, v1, v5, v1, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->setPadding(IIII)V

    goto :goto_1

    :cond_2
    iget v5, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentRowData;->mPadding:I

    iget v6, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentRowData;->mPadding:I

    invoke-virtual {v4, v1, v5, v6, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->setPadding(IIII)V

    :goto_1
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v4, v5}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentRowData;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/miui/video/biz/videoplus/R$color;->c_white:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->setBackgroundColor(I)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updateView()V
    .locals 6

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentRowData;->vView:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentRowData;->mEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    const-string v4, "ACTION_SET_VALUE"

    iget-object v5, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentRowData;->mEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;

    invoke-virtual {v5}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->ACTION_SET_NULL:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 0

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-string v0, "ACTION_SET_VALUE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    instance-of p1, p3, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;

    if-eqz p1, :cond_1

    check-cast p3, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;

    iput-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentRowData;->mEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentRowData;->mEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentRowData;->initView(Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;I)V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentRowData;->updateView()V

    :cond_1
    return-void
.end method

.method public runAction(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    const-string p2, "action_setting_padding"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentRowData;->mPadding:I

    :cond_0
    return-void
.end method
