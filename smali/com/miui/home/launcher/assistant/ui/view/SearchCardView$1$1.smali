.class Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$1$1;
.super Ljava/lang/Object;
.source "SearchCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$1;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$1;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$1$1;->this$1:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$1$1;->this$1:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$1;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->access$200(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$1$1;->this$1:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$1;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->access$300(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$1$1;->this$1:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$1;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$1$1;->this$1:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$1;

    iget-object v1, v1, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->access$400(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->access$500(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;Z)V

    goto :goto_0
.end method
