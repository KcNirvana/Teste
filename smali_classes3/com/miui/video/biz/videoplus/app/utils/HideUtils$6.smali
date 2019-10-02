.class final Lcom/miui/video/biz/videoplus/app/utils/HideUtils$6;
.super Ljava/lang/Object;
.source "HideUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/utils/HideUtils;->showUnHideVideoDialog(Landroid/content/Context;Ljava/util/List;Lcom/miui/video/base/common/impl/IUIListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$6;->val$mContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$6;->val$mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->dismiss(Landroid/content/Context;)Z

    return-void
.end method
