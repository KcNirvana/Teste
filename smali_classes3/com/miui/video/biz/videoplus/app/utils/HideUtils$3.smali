.class final Lcom/miui/video/biz/videoplus/app/utils/HideUtils$3;
.super Ljava/lang/Object;
.source "HideUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/utils/HideUtils;->showHideVideoDialog(Landroid/content/Context;Ljava/util/List;Lcom/miui/video/base/common/impl/IUIListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/miui/video/base/common/impl/IUIListener;

.field final synthetic val$mContext:Landroid/content/Context;

.field final synthetic val$mData:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/miui/video/base/common/impl/IUIListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$3;->val$mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$3;->val$mData:Ljava/util/List;

    iput-object p3, p0, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$3;->val$listener:Lcom/miui/video/base/common/impl/IUIListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordHideItemSuccessLocal(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$3;->val$mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->dismiss(Landroid/content/Context;)Z

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$3;->val$mData:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$3;->val$listener:Lcom/miui/video/base/common/impl/IUIListener;

    invoke-static {p1, v0}, Lcom/miui/video/biz/videoplus/app/utils/HideUtils;->access$100(Ljava/util/List;Lcom/miui/video/base/common/impl/IUIListener;)V

    return-void
.end method
