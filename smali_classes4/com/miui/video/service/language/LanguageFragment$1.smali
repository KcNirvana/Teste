.class Lcom/miui/video/service/language/LanguageFragment$1;
.super Ljava/lang/Object;
.source "LanguageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/service/language/LanguageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/service/language/LanguageFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/service/language/LanguageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/language/LanguageFragment$1;->this$0:Lcom/miui/video/service/language/LanguageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/service/language/LanguageFragment$1;->this$0:Lcom/miui/video/service/language/LanguageFragment;

    invoke-static {p1}, Lcom/miui/video/service/language/LanguageFragment;->access$000(Lcom/miui/video/service/language/LanguageFragment;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/video/framework/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/service/language/LanguageFragment$1;->this$0:Lcom/miui/video/service/language/LanguageFragment;

    invoke-static {p1}, Lcom/miui/video/service/language/LanguageFragment;->access$100(Lcom/miui/video/service/language/LanguageFragment;)V

    iget-object p1, p0, Lcom/miui/video/service/language/LanguageFragment$1;->this$0:Lcom/miui/video/service/language/LanguageFragment;

    invoke-static {p1}, Lcom/miui/video/service/language/LanguageFragment;->access$200(Lcom/miui/video/service/language/LanguageFragment;)Lcom/miui/video/common/library/base/impl/IPresenter;

    move-result-object p1

    check-cast p1, Lcom/miui/video/service/language/LanguagePresenter;

    invoke-virtual {p1}, Lcom/miui/video/service/language/LanguagePresenter;->getLanguageList()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/service/language/LanguageFragment$1;->this$0:Lcom/miui/video/service/language/LanguageFragment;

    invoke-static {p1}, Lcom/miui/video/service/language/LanguageFragment;->access$300(Lcom/miui/video/service/language/LanguageFragment;)V

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    sget v0, Lcom/miui/video/service/R$string;->t_network_error:I

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    :goto_0
    return-void
.end method
