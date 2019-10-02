.class Lcom/miui/video/service/widget/ui/UIVideoGroup$2;
.super Ljava/lang/Object;
.source "UIVideoGroup.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    iput-object p1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup$2;->this$0:Lcom/miui/video/service/widget/ui/UIVideoGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup$2;->this$0:Lcom/miui/video/service/widget/ui/UIVideoGroup;

    invoke-static {v0}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->access$400(Lcom/miui/video/service/widget/ui/UIVideoGroup;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup$2;->this$0:Lcom/miui/video/service/widget/ui/UIVideoGroup;

    invoke-static {v0}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->access$500(Lcom/miui/video/service/widget/ui/UIVideoGroup;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result p1

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup$2;->this$0:Lcom/miui/video/service/widget/ui/UIVideoGroup;

    invoke-static {v0}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->access$600(Lcom/miui/video/service/widget/ui/UIVideoGroup;)V

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
