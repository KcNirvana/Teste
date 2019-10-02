.class Lcom/miui/video/biz/pgc/activity/SubscribeActivity$1;
.super Ljava/lang/Object;
.source "SubscribeActivity.java"

# interfaces
.implements Lcom/miui/video/base/account/VideoMiAccountManager$LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/pgc/activity/SubscribeActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/pgc/activity/SubscribeActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/pgc/activity/SubscribeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/pgc/activity/SubscribeActivity$1;->this$0:Lcom/miui/video/biz/pgc/activity/SubscribeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/pgc/activity/SubscribeActivity$1;->this$0:Lcom/miui/video/biz/pgc/activity/SubscribeActivity;

    invoke-virtual {p1}, Lcom/miui/video/biz/pgc/activity/SubscribeActivity;->finish()V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/pgc/activity/SubscribeActivity$1;->this$0:Lcom/miui/video/biz/pgc/activity/SubscribeActivity;

    invoke-virtual {v0}, Lcom/miui/video/biz/pgc/activity/SubscribeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/pgc/activity/SubscribeActivity$1;->this$0:Lcom/miui/video/biz/pgc/activity/SubscribeActivity;

    iget-object v1, p0, Lcom/miui/video/biz/pgc/activity/SubscribeActivity$1;->this$0:Lcom/miui/video/biz/pgc/activity/SubscribeActivity;

    invoke-static {v1}, Lcom/miui/video/biz/pgc/activity/SubscribeActivity;->access$000(Lcom/miui/video/biz/pgc/activity/SubscribeActivity;)Lcom/miui/video/common/library/base/BaseFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/biz/pgc/activity/SubscribeActivity;->access$100(Lcom/miui/video/biz/pgc/activity/SubscribeActivity;Lcom/miui/video/common/library/base/BaseFragment;)V

    :cond_0
    return-void
.end method
