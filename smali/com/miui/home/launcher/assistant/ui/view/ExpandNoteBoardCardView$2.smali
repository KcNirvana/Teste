.class Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$2;
.super Ljava/lang/Object;
.source "ExpandNoteBoardCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$002(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;Z)Z

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$400(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->shrinkNoteBoardCardView()V

    return-void
.end method
