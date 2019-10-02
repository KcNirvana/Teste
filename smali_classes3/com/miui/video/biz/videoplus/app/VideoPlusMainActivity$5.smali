.class Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5;
.super Ljava/lang/Object;
.source "VideoPlusMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->initViewsEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->access$100(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->getCurrentTab()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getCheckCount()I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->access$1102(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;I)I

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->access$1100(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)I

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->check_nothing:I

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    return-void

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->access$1200(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/miui/video/biz/videoplus/R$plurals;->plus_edit_delete_comfire_text:I

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-static {v3}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->access$1100(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-static {v6}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->access$1100(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/miui/video/biz/videoplus/R$string;->v_cancel:I

    sget v4, Lcom/miui/video/biz/videoplus/R$string;->v_ok:I

    new-instance v5, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5$1;

    invoke-direct {v5, p0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5$1;-><init>(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5;)V

    new-instance v6, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5$2;

    invoke-direct {v6, p0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5$2;-><init>(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5;)V

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->showOkCancel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V

    return-void
.end method
