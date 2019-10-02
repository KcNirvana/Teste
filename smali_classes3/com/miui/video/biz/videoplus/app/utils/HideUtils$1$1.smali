.class Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1$1;
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

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1$1;->this$0:Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1$1;->this$0:Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1;

    iget-object p1, p1, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1;->val$mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->dismiss(Landroid/content/Context;)Z

    return-void
.end method
