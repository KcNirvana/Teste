.class Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FeedbackSubmitActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TopicViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;

.field final view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicViewHolder;->this$0:Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget p1, Lcom/miui/video/feedback/R$id;->v_item:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicViewHolder;->view:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method update(Z)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicViewHolder;->view:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicViewHolder;->this$0:Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;

    invoke-virtual {v1}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/feedback/R$color;->c_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicViewHolder;->this$0:Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;

    invoke-virtual {v1}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/feedback/R$color;->c_black:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicViewHolder;->view:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    sget p1, Lcom/miui/video/feedback/R$drawable;->ui_btn_subscribe_shape_bg_corners_blue:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/miui/video/feedback/R$drawable;->ui_btn_subscribe_shape_bg_corners_white:I

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method
