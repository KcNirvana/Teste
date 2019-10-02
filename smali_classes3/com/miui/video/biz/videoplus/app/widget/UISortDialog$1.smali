.class Lcom/miui/video/biz/videoplus/app/widget/UISortDialog$1;
.super Ljava/lang/Object;
.source "UISortDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->access$000(Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->access$100(Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordFolderSortTypeClicked(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
