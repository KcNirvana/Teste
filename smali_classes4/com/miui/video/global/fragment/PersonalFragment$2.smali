.class Lcom/miui/video/global/fragment/PersonalFragment$2;
.super Ljava/lang/Object;
.source "PersonalFragment.java"

# interfaces
.implements Lcom/miui/video/base/account/VideoMiAccountManager$UserInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/global/fragment/PersonalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/global/fragment/PersonalFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/global/fragment/PersonalFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/global/fragment/PersonalFragment$2;->this$0:Lcom/miui/video/global/fragment/PersonalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/xiaomi/accountsdk/account/data/XiaomiUserInfo;)V
    .locals 2

    const-string v0, "VideoMiAccountManager"

    const-string v1, "start set userInfo to PersonalFragment"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment$2;->this$0:Lcom/miui/video/global/fragment/PersonalFragment;

    invoke-static {v0}, Lcom/miui/video/global/fragment/PersonalFragment;->access$100(Lcom/miui/video/global/fragment/PersonalFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f080247

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment$2;->this$0:Lcom/miui/video/global/fragment/PersonalFragment;

    invoke-static {v0}, Lcom/miui/video/global/fragment/PersonalFragment;->access$200(Lcom/miui/video/global/fragment/PersonalFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserInfo;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment$2;->this$0:Lcom/miui/video/global/fragment/PersonalFragment;

    invoke-virtual {v0}, Lcom/miui/video/global/fragment/PersonalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserInfo;->getAvatarAddress()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/miui/video/global/fragment/PersonalFragment$2$1;

    invoke-direct {v1, p0}, Lcom/miui/video/global/fragment/PersonalFragment$2$1;-><init>(Lcom/miui/video/global/fragment/PersonalFragment$2;)V

    invoke-static {v0, p1, v1}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->getBitmapFromUrl(Landroid/content/Context;Ljava/lang/String;Lcom/miui/video/common/library/widget/glide/ImgUtils$GlideLoadBitmapCallback;)V

    :cond_0
    return-void
.end method
