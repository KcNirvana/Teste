.class Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$4$1;
.super Ljava/lang/Object;
.source "ExpandNoteBoardCardView.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/util/NoteUtil$OnSavedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$4;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$4;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$4$1;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSaved(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$4$1;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$4;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$1002(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
