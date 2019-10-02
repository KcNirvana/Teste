.class Lcom/miui/video/service/share/ShareBuilder$1;
.super Lcom/miui/video/common/library/base/BaseObserver;
.source "ShareBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/share/ShareBuilder;->share(Landroid/support/v4/app/FragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/BaseObserver<",
        "Lcom/miui/video/service/share/data/ShareUrlCallbackEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/service/share/ShareBuilder;

.field final synthetic val$context:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/service/share/ShareBuilder;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/ShareBuilder$1;->this$0:Lcom/miui/video/service/share/ShareBuilder;

    iput-object p2, p0, Lcom/miui/video/service/share/ShareBuilder$1;->val$context:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Lcom/miui/video/common/library/base/BaseObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    sget v0, Lcom/miui/video/service/R$string;->toast_share_failed:I

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    iget-object p1, p0, Lcom/miui/video/service/share/ShareBuilder$1;->val$context:Landroid/support/v4/app/FragmentActivity;

    const-string v0, "share"

    const-string v1, "lastShareTime"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/miui/video/base/utils/SharePreferenceManager;->saveLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p1, p0, Lcom/miui/video/service/share/ShareBuilder$1;->this$0:Lcom/miui/video/service/share/ShareBuilder;

    invoke-static {p1}, Lcom/miui/video/service/share/ShareBuilder;->access$200(Lcom/miui/video/service/share/ShareBuilder;)Lcom/miui/video/service/share/net/ShareUseCase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/service/share/net/ShareUseCase;->dispose()V

    return-void
.end method

.method public onSuccess(Lcom/miui/video/service/share/data/ShareUrlCallbackEntity;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/service/share/ShareBuilder$1;->val$context:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/service/R$string;->share_ugc_content:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/video/service/share/ShareBuilder$1;->this$0:Lcom/miui/video/service/share/ShareBuilder;

    invoke-static {v2}, Lcom/miui/video/service/share/ShareBuilder;->access$000(Lcom/miui/video/service/share/ShareBuilder;)Lcom/miui/video/service/share/data/ShareInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/service/share/data/ShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/miui/video/service/share/ShareBuilder$1;->val$context:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/service/R$string;->app_name:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/miui/video/service/share/data/ShareUrlCallbackEntity;->data:Lcom/miui/video/service/share/data/ShareChain;

    iget-object v3, v3, Lcom/miui/video/service/share/data/ShareChain;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/service/share/ShareBuilder$1;->this$0:Lcom/miui/video/service/share/ShareBuilder;

    invoke-static {v1}, Lcom/miui/video/service/share/ShareBuilder;->access$000(Lcom/miui/video/service/share/ShareBuilder;)Lcom/miui/video/service/share/data/ShareInfo;

    move-result-object v1

    iget-object p1, p1, Lcom/miui/video/service/share/data/ShareUrlCallbackEntity;->data:Lcom/miui/video/service/share/data/ShareChain;

    iget-object p1, p1, Lcom/miui/video/service/share/data/ShareChain;->url:Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lcom/miui/video/service/share/ShareFragment;->getInstance(Lcom/miui/video/service/share/data/ShareInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/service/share/ShareFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/service/share/ShareBuilder$1;->val$context:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/service/share/ShareBuilder$1;->this$0:Lcom/miui/video/service/share/ShareBuilder;

    invoke-static {v1}, Lcom/miui/video/service/share/ShareBuilder;->access$100(Lcom/miui/video/service/share/ShareBuilder;)Lcom/miui/video/service/share/ShareListener;

    move-result-object v1

    invoke-virtual {p1, v0, p1, v1}, Lcom/miui/video/service/share/ShareFragment;->showDialog(Landroid/support/v4/app/FragmentManager;Lcom/miui/video/service/share/ShareFragment;Lcom/miui/video/service/share/ShareListener;)V

    iget-object p1, p0, Lcom/miui/video/service/share/ShareBuilder$1;->val$context:Landroid/support/v4/app/FragmentActivity;

    const-string v0, "share"

    const-string v1, "lastShareTime"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/miui/video/base/utils/SharePreferenceManager;->saveLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p1, p0, Lcom/miui/video/service/share/ShareBuilder$1;->this$0:Lcom/miui/video/service/share/ShareBuilder;

    invoke-static {p1}, Lcom/miui/video/service/share/ShareBuilder;->access$200(Lcom/miui/video/service/share/ShareBuilder;)Lcom/miui/video/service/share/net/ShareUseCase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/service/share/net/ShareUseCase;->dispose()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/video/service/share/data/ShareUrlCallbackEntity;

    invoke-virtual {p0, p1}, Lcom/miui/video/service/share/ShareBuilder$1;->onSuccess(Lcom/miui/video/service/share/data/ShareUrlCallbackEntity;)V

    return-void
.end method
