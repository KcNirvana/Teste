.class Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "UIHorizontalTitleRVAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FilterViewHolder"
.end annotation


# instance fields
.field private desc_tv:Landroid/widget/TextView;

.field private ll:Landroid/widget/LinearLayout;

.field private mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;->this$0:Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget p1, Lcom/miui/video/common/feed/R$id;->title_tv:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;->mTitle:Landroid/widget/TextView;

    sget p1, Lcom/miui/video/common/feed/R$id;->desc_tv:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;->desc_tv:Landroid/widget/TextView;

    sget p1, Lcom/miui/video/common/feed/R$id;->ll:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;->ll:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;->mTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;->desc_tv:Landroid/widget/TextView;

    return-object p0
.end method
