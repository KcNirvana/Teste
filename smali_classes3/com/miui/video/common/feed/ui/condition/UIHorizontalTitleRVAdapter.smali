.class public Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "UIHorizontalTitleRVAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$OnItemClickListener;,
        Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TitleEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private onItemClickListener:Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TitleEntity;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;->datas:Ljava/util/List;

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$7(Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;ILcom/miui/video/common/feed/entity/TitleEntity;Landroid/view/View;)V
    .locals 0

    iget-object p4, p0, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;->onItemClickListener:Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$OnItemClickListener;

    iget-object p1, p1, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p4, p1, p2, p3}, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;->datas:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;->onBindViewHolder(Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;->datas:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;->datas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/entity/TitleEntity;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TitleEntity;->getSelected()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;->access$000(Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    invoke-static {p1}, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;->access$000(Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/common/feed/R$color;->c_blue_text_0C80FF:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {p1}, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;->access$100(Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/common/feed/R$color;->c_blue_text_0C80FF:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;->access$000(Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    invoke-static {p1}, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;->access$000(Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/common/feed/R$color;->c_pw_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {p1}, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;->access$100(Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/common/feed/R$color;->c_pw_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    invoke-static {p1}, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;->access$000(Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TitleEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/miui/video/common/feed/ui/condition/-$$Lambda$UIHorizontalTitleRVAdapter$1kCszXF-Zkt173IYqiD0XQETiEs;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/miui/video/common/feed/ui/condition/-$$Lambda$UIHorizontalTitleRVAdapter$1kCszXF-Zkt173IYqiD0XQETiEs;-><init>(Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;ILcom/miui/video/common/feed/entity/TitleEntity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;
    .locals 2

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/miui/video/common/feed/R$layout;->ui_card_condition_horizontal_content:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;-><init>(Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnItemClickListener(Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;->onItemClickListener:Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$OnItemClickListener;

    return-void
.end method

.method public update(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TitleEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;->datas:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;->notifyDataSetChanged()V

    return-void
.end method
