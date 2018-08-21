.class public Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;
.super Ljava/lang/Object;
.source "PaListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/widget/PaListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PAViewHolder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mConvertView:Landroid/view/View;

.field private mLlContainer:Landroid/widget/LinearLayout;

.field private mPosition:I

.field private mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/personalassistant/ui/widget/PaListView;


# direct methods
.method public constructor <init>(Lcom/miui/personalassistant/ui/widget/PaListView;Landroid/content/Context;Landroid/view/View;I)V
    .locals 1

    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->this$0:Lcom/miui/personalassistant/ui/widget/PaListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->mViews:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->mConvertView:Landroid/view/View;

    iput p4, p0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->mPosition:I

    return-void
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;)I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->mPosition:I

    return v0
.end method

.method private bindDataToView(Lcom/miui/personalassistant/model/FunctionLaunch;Landroid/view/View;)V
    .locals 5

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->this$0:Lcom/miui/personalassistant/ui/widget/PaListView;

    invoke-direct {v0, v1, p2}, Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;-><init>(Lcom/miui/personalassistant/ui/widget/PaListView;Landroid/view/View;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->this$0:Lcom/miui/personalassistant/ui/widget/PaListView;

    iget-object v2, v0, Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;->mTvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/ui/widget/PaListView;->access$100(Lcom/miui/personalassistant/ui/widget/PaListView;Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->this$0:Lcom/miui/personalassistant/ui/widget/PaListView;

    iget-object v2, v0, Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;->mTvAppName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/ui/widget/PaListView;->access$100(Lcom/miui/personalassistant/ui/widget/PaListView;Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;->mTvName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0f0067

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;->mTvAppName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0f0066

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;->mIvOp:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;->mIvOp:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->mContext:Landroid/content/Context;

    const v3, 0x1b0b024a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;->mIvOp:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v1, v0, Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;->mIvOp:Landroid/widget/ImageView;

    new-instance v2, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder$1;

    invoke-direct {v2, p0, p1}, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder$1;-><init>(Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;Lcom/miui/personalassistant/model/FunctionLaunch;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->this$0:Lcom/miui/personalassistant/ui/widget/PaListView;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v2, v0}, Lcom/miui/personalassistant/ui/widget/PaListView;->access$400(Lcom/miui/personalassistant/ui/widget/PaListView;Lcom/miui/personalassistant/model/FunctionLaunch;Landroid/content/Context;Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;)V

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getDrawableId()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->this$0:Lcom/miui/personalassistant/ui/widget/PaListView;

    iget-object v2, v0, Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getDrawableId()I

    move-result v3

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->isXspace()Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/miui/personalassistant/ui/widget/PaListView;->access$500(Lcom/miui/personalassistant/ui/widget/PaListView;Landroid/widget/ImageView;IZ)V

    goto/16 :goto_0
.end method

.method private getChildrenFunctionListToShow(Landroid/content/Context;Ljava/util/TreeSet;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/TreeSet",
            "<",
            "Lcom/miui/personalassistant/model/FunctionLaunch;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/model/FunctionLaunch;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/model/FunctionLaunch;

    invoke-direct {p0, p1, v0}, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->isFunctionSelected(Landroid/content/Context;Lcom/miui/personalassistant/model/FunctionLaunch;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getItem(Ljava/util/ArrayList;I)Lcom/miui/personalassistant/model/FunctionLaunch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/model/FunctionLaunch;",
            ">;I)",
            "Lcom/miui/personalassistant/model/FunctionLaunch;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/model/FunctionLaunch;

    goto :goto_0
.end method

.method private getLayoutNum(II)I
    .locals 3

    rem-int v0, p1, p2

    div-int v2, p1, p2

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getViewFromContainer(I)Landroid/view/View;
    .locals 5

    const/4 v3, 0x0

    div-int/lit8 v1, p1, 0x5

    if-ltz v1, :cond_0

    iget-object v4, p0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->mLlContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-lt v1, v4, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    iget-object v4, p0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->mLlContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    rem-int/lit8 v2, p1, 0x5

    if-ltz v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_0
.end method

.method private isFunctionSelected(Landroid/content/Context;Lcom/miui/personalassistant/model/FunctionLaunch;)Z
    .locals 6

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->this$0:Lcom/miui/personalassistant/ui/widget/PaListView;

    invoke-static {v3}, Lcom/miui/personalassistant/ui/widget/PaListView;->access$700(Lcom/miui/personalassistant/ui/widget/PaListView;)Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->this$0:Lcom/miui/personalassistant/ui/widget/PaListView;

    invoke-static {v3}, Lcom/miui/personalassistant/ui/widget/PaListView;->access$700(Lcom/miui/personalassistant/ui/widget/PaListView;)Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->getData()Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->this$0:Lcom/miui/personalassistant/ui/widget/PaListView;

    invoke-static {v3}, Lcom/miui/personalassistant/ui/widget/PaListView;->access$700(Lcom/miui/personalassistant/ui/widget/PaListView;)Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->getData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/model/FunctionLaunch;

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/FunctionLaunch;->isXspace()Z

    move-result v4

    invoke-virtual {p2}, Lcom/miui/personalassistant/model/FunctionLaunch;->isXspace()Z

    move-result v5

    if-ne v4, v5, :cond_2

    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bindEmptyView(I)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->getViewFromContainer(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    const/16 v2, 0xa

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "PaListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bindEmptyView position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->this$0:Lcom/miui/personalassistant/ui/widget/PaListView;

    invoke-direct {v0, v2, v1}, Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;-><init>(Lcom/miui/personalassistant/ui/widget/PaListView;Landroid/view/View;)V

    iget-object v2, v0, Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;->mTvName:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;->mTvAppName:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;->mIvOp:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v0, Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->this$0:Lcom/miui/personalassistant/ui/widget/PaListView;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/widget/PaListView;->access$600(Lcom/miui/personalassistant/ui/widget/PaListView;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x1b0200f9

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const v2, 0x1b0200f8

    goto :goto_1
.end method

.method public getConvertView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->mConvertView:Landroid/view/View;

    return-object v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->mConvertView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public declared-synchronized setItems(IILjava/util/TreeSet;)Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/TreeSet",
            "<",
            "Lcom/miui/personalassistant/model/FunctionLaunch;",
            ">;)",
            "Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->getView(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->mLlContainer:Landroid/widget/LinearLayout;

    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    invoke-direct {p0, v9, v0}, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->getChildrenFunctionListToShow(Landroid/content/Context;Ljava/util/TreeSet;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    iget-object v9, p0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->mLlContainer:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, p0

    :goto_0
    monitor-exit p0

    return-object v7

    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->mLlContainer:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x5

    invoke-direct {p0, v9, v10}, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->getLayoutNum(II)I

    move-result v6

    const-string/jumbo v9, "PaListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setItems layoutNum is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->mLlContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v6, v1, :cond_3

    iget-object v9, p0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->mLlContainer:Landroid/widget/LinearLayout;

    sub-int v10, v1, v6

    invoke-virtual {v9, v6, v10}, Landroid/widget/LinearLayout;->removeViews(II)V

    :cond_2
    const/4 v4, 0x0

    :goto_1
    mul-int/lit8 v9, v6, 0x5

    if-ge v4, v9, :cond_5

    invoke-direct {p0, v2, v4}, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->getItem(Ljava/util/ArrayList;I)Lcom/miui/personalassistant/model/FunctionLaunch;

    move-result-object v5

    if-nez v5, :cond_4

    invoke-virtual {p0, v4}, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->bindEmptyView(I)V

    const-string/jumbo v9, "PaListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "item null position="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_3
    sub-int v9, v6, v1

    if-ge v4, v9, :cond_2

    iget-object v9, p0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->mLlContainer:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->this$0:Lcom/miui/personalassistant/ui/widget/PaListView;

    invoke-static {v10}, Lcom/miui/personalassistant/ui/widget/PaListView;->access$000(Lcom/miui/personalassistant/ui/widget/PaListView;)Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x1b0400ae

    iget-object v12, p0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->mLlContainer:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    const-string/jumbo v9, "PaListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "item position="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\t "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/miui/personalassistant/model/FunctionLaunch;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/miui/personalassistant/model/FunctionLaunch;->getAppName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->getViewFromContainer(I)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v5, v8}, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->bindDataToView(Lcom/miui/personalassistant/model/FunctionLaunch;Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    :cond_5
    move-object v7, p0

    goto/16 :goto_0
.end method

.method public setSelected(IZ)Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setSelected(Z)V

    return-object p0
.end method

.method public setText(ILjava/lang/String;)Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method
