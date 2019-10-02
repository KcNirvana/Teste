.class Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "FeedbackSubmitActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TopicAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TinyCardEntity$KvEntity;",
            ">;"
        }
    .end annotation
.end field

.field private select:I

.field final synthetic this$0:Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicAdapter;->this$0:Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicAdapter;->list:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicAdapter;->select:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method getSelectTopic()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicAdapter;->select:I

    iget-object v1, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicAdapter;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicAdapter;->list:Ljava/util/List;

    iget v1, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicAdapter;->select:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/entity/TinyCardEntity$KvEntity;

    iget-object v0, v0, Lcom/miui/video/common/feed/entity/TinyCardEntity$KvEntity;->key:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicAdapter;->onBindViewHolder(Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicViewHolder;I)V
    .locals 2
    .param p1    # Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p1, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicViewHolder;->view:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/common/feed/entity/TinyCardEntity$KvEntity;

    iget-object v1, v1, Lcom/miui/video/common/feed/entity/TinyCardEntity$KvEntity;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicAdapter;->select:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicViewHolder;->update(Z)V

    iget-object p1, p1, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicAdapter;->select:I

    invoke-virtual {p0}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/miui/video/feedback/R$layout;->item_feedback_topic:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicViewHolder;

    iget-object v0, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicAdapter;->this$0:Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;

    invoke-direct {p2, v0, p1}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicViewHolder;-><init>(Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;Landroid/view/View;)V

    return-object p2
.end method

.method setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TinyCardEntity$KvEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicAdapter;->notifyDataSetChanged()V

    return-void
.end method
