.class final Lcom/miui/video/feedback/fragment/FeedbackDetailFragment$initFindViews$2;
.super Ljava/lang/Object;
.source "FeedbackDetailFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->initFindViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $topicId:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment$initFindViews$2;->this$0:Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;

    iput-object p2, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment$initFindViews$2;->$topicId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment$initFindViews$2;->this$0:Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;

    invoke-static {p1}, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->access$getVInput$p(Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    sget v0, Lcom/miui/video/feedback/R$string;->content_can_not_null:I

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment$initFindViews$2;->this$0:Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;

    invoke-static {p1}, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->access$getMPresenter$p(Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;)Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;

    move-result-object p1

    new-instance v0, Lcom/miui/video/feedback/model/FeedbackContent;

    iget-object v1, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment$initFindViews$2;->this$0:Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;

    invoke-static {v1}, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->access$getItemType$p(Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment$initFindViews$2;->$topicId:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment$initFindViews$2;->this$0:Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;

    invoke-static {v3}, Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;->access$getVInput$p(Lcom/miui/video/feedback/fragment/FeedbackDetailFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/video/feedback/model/FeedbackContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;->submit(Lcom/miui/video/feedback/model/FeedbackContent;)V

    :goto_0
    return-void
.end method
