.class Lcom/miui/video/biz/favor/FavorActivity$1;
.super Ljava/lang/Object;
.source "FavorActivity.java"

# interfaces
.implements Lcom/miui/video/base/account/VideoMiAccountManager$LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/favor/FavorActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/favor/FavorActivity;

.field final synthetic val$videoMiAccountManager:Lcom/miui/video/base/account/VideoMiAccountManager;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/favor/FavorActivity;Lcom/miui/video/base/account/VideoMiAccountManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity$1;->this$0:Lcom/miui/video/biz/favor/FavorActivity;

    iput-object p2, p0, Lcom/miui/video/biz/favor/FavorActivity$1;->val$videoMiAccountManager:Lcom/miui/video/base/account/VideoMiAccountManager;

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

    iget-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity$1;->val$videoMiAccountManager:Lcom/miui/video/base/account/VideoMiAccountManager;

    invoke-virtual {v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/video/biz/favor/FavorActivity$1;->this$0:Lcom/miui/video/biz/favor/FavorActivity;

    invoke-static {v1}, Lcom/miui/video/biz/favor/FavorActivity;->access$000(Lcom/miui/video/biz/favor/FavorActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/video/biz/favor/FavorActivity$1;->this$0:Lcom/miui/video/biz/favor/FavorActivity;

    invoke-static {v1}, Lcom/miui/video/biz/favor/FavorActivity;->access$100(Lcom/miui/video/biz/favor/FavorActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/video/biz/favor/FavorActivity$1;->this$0:Lcom/miui/video/biz/favor/FavorActivity;

    invoke-static {v1}, Lcom/miui/video/biz/favor/FavorActivity;->access$200(Lcom/miui/video/biz/favor/FavorActivity;)Lcom/miui/video/biz/favor/presenter/FavorPresenter;

    move-result-object v1

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->getFavorVideo(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/biz/favor/FavorActivity$1;->this$0:Lcom/miui/video/biz/favor/FavorActivity;

    invoke-static {v1}, Lcom/miui/video/biz/favor/FavorActivity;->access$200(Lcom/miui/video/biz/favor/FavorActivity;)Lcom/miui/video/biz/favor/presenter/FavorPresenter;

    move-result-object v1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->getFavorPlayList(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity$1;->this$0:Lcom/miui/video/biz/favor/FavorActivity;

    invoke-static {v0}, Lcom/miui/video/biz/favor/FavorActivity;->access$200(Lcom/miui/video/biz/favor/FavorActivity;)Lcom/miui/video/biz/favor/presenter/FavorPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->getUnSyncFavorVideo()V

    iget-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity$1;->this$0:Lcom/miui/video/biz/favor/FavorActivity;

    invoke-static {v0}, Lcom/miui/video/biz/favor/FavorActivity;->access$200(Lcom/miui/video/biz/favor/FavorActivity;)Lcom/miui/video/biz/favor/presenter/FavorPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->getUnSyncFavorPlayList()V

    :cond_0
    return-void
.end method
