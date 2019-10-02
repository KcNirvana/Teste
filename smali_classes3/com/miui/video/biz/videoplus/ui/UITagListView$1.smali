.class Lcom/miui/video/biz/videoplus/ui/UITagListView$1;
.super Ljava/lang/Object;
.source "UITagListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/ui/UITagListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/ui/UITagListView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/ui/UITagListView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/ui/UITagListView$1;->this$0:Lcom/miui/video/biz/videoplus/ui/UITagListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->tag_index:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$string;->tag_object:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/ui/UITagListView$1;->this$0:Lcom/miui/video/biz/videoplus/ui/UITagListView;

    invoke-static {v2}, Lcom/miui/video/biz/videoplus/ui/UITagListView;->access$000(Lcom/miui/video/biz/videoplus/ui/UITagListView;)Lcom/miui/video/biz/videoplus/ui/UITagListView$OnItemClickListener;

    move-result-object v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, p1, v0, v1}, Lcom/miui/video/biz/videoplus/ui/UITagListView$OnItemClickListener;->onItemClick(Landroid/view/View;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
