.class Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity$4;
.super Ljava/lang/Object;
.source "AuthorDetailsActivity.java"

# interfaces
.implements Lcom/miui/video/base/account/VideoMiAccountManager$LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->lambda$initInfoStream$23(Landroid/content/Context;ILjava/lang/Object;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;

.field final synthetic val$data:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity$4;->this$0:Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;

    iput-object p2, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity$4;->val$data:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(I)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity$4;->this$0:Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;

    invoke-static {v0}, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->access$300(Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;)Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity$4;->val$data:Ljava/lang/Object;

    check-cast v1, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    iget-object v2, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity$4;->this$0:Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;

    invoke-static {v2}, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->access$200(Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;->subscriptionAuthor(Lcom/miui/video/framework/base/ui/BaseUIEntity;Ljava/lang/String;)V

    return-void
.end method
