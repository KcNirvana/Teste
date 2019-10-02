.class Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5$1;
.super Ljava/lang/Object;
.source "VideoPlusMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5$1;->this$1:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5$1;->this$1:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5;

    iget-object p1, p1, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->access$1300(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->dismiss(Landroid/content/Context;)Z

    return-void
.end method
