.class public Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter;
.super Landroid/widget/BaseAdapter;
.source "UserFeedbackTagAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final COLOR_SELECTED:I

.field private static final COLOR_UN_SELECTED:I


# instance fields
.field private mListData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#FF333333"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter;->COLOR_UN_SELECTED:I

    const-string v0, "#FFFFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter;->COLOR_SELECTED:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter;->mListData:Ljava/util/List;

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter;->COLOR_SELECTED:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter;->COLOR_UN_SELECTED:I

    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter;->mListData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter;->mListData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter;->mListData:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter;->mListData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter;->mListData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter;->mListData:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter;->mListData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter;->mListData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter;->mListData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagItem;

    if-nez p2, :cond_1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->ui_videoplus_negative_feedback_tag_item:I

    const/4 v2, 0x0

    invoke-virtual {p2, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter$ViewHolder;

    invoke-direct {p3, p0, v1}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter$ViewHolder;-><init>(Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter;Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter$1;)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->layout_content:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter$ViewHolder;->access$102(Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter$ViewHolder;Landroid/view/View;)Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->tv_tag:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter$ViewHolder;->mTvTag:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter$ViewHolder;

    :goto_0
    invoke-virtual {p3, p1}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter$ViewHolder;->refreshView(Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagItem;)V

    return-object p2

    :cond_2
    :goto_1
    return-object v1
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter;->mListData:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter;->notifyDataSetChanged()V

    return-void
.end method
