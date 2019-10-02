.class Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$1;
.super Ljava/lang/Object;
.source "FeedbackSubmitActivity.java"

# interfaces
.implements Lcom/miui/video/base/account/VideoMiAccountManager$LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$1;->this$0:Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(I)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$1;->this$0:Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;

    invoke-static {v0}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->access$000(Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$1;->this$0:Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;

    invoke-static {v0}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->access$100(Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;)V

    return-void
.end method
