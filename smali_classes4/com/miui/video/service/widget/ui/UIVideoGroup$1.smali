.class Lcom/miui/video/service/widget/ui/UIVideoGroup$1;
.super Ljava/lang/Object;
.source "UIVideoGroup.java"

# interfaces
.implements Lcom/miui/video/service/utils/VideoDurationHelper$LoadDurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/widget/ui/UIVideoGroup;->setViews(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/service/widget/ui/UIVideoGroup;


# direct methods
.method constructor <init>(Lcom/miui/video/service/widget/ui/UIVideoGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup$1;->this$0:Lcom/miui/video/service/widget/ui/UIVideoGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFinished(J)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup$1;->this$0:Lcom/miui/video/service/widget/ui/UIVideoGroup;

    invoke-static {v0}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->access$000(Lcom/miui/video/service/widget/ui/UIVideoGroup;)Lcom/miui/video/base/database/VideoEntity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/base/database/VideoEntity;->setDuration(J)V

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup$1;->this$0:Lcom/miui/video/service/widget/ui/UIVideoGroup;

    invoke-static {p1}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->access$000(Lcom/miui/video/service/widget/ui/UIVideoGroup;)Lcom/miui/video/base/database/VideoEntity;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup$1;->this$0:Lcom/miui/video/service/widget/ui/UIVideoGroup;

    invoke-static {p2}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->access$100(Lcom/miui/video/service/widget/ui/UIVideoGroup;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup$1;->this$0:Lcom/miui/video/service/widget/ui/UIVideoGroup;

    invoke-static {v0}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->access$200(Lcom/miui/video/service/widget/ui/UIVideoGroup;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->access$300(Lcom/miui/video/base/database/VideoEntity;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V

    return-void
.end method
