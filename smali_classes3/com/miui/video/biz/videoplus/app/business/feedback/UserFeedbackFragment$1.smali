.class Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment$1;
.super Ljava/lang/Object;
.source "UserFeedbackFragment.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/ui/UITagListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->initViewsEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;ILjava/lang/Object;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->access$000(Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->access$000(Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x1

    if-lt p1, p3, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->access$000(Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->access$000(Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagItem;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagItem;->isSelected()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->access$000(Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagItem;->setSelected(Z)V

    goto :goto_0

    :cond_1
    xor-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagItem;->setSelected(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->access$100(Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;)Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter;->notifyDataSetChanged()V

    return-void

    :cond_2
    :goto_1
    return-void
.end method
