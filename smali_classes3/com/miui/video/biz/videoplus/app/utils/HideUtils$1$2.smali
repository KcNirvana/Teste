.class Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1$2;
.super Ljava/lang/Object;
.source "HideUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1;->onConfirmPassword(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1$2;->this$0:Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1$2;->this$0:Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1;

    iget-object p1, p1, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1;->val$mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->dismiss(Landroid/content/Context;)Z

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordHideItemSuccessLocal(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1$2;->this$0:Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1;

    iget-object p1, p1, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1;->val$mData:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1$2;->this$0:Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1;

    iget-object v0, v0, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1;->val$listener:Lcom/miui/video/base/common/impl/IUIListener;

    invoke-static {p1, v0}, Lcom/miui/video/biz/videoplus/app/utils/HideUtils;->access$100(Ljava/util/List;Lcom/miui/video/base/common/impl/IUIListener;)V

    return-void
.end method
