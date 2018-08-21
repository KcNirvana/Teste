.class Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView$1;
.super Ljava/lang/Object;
.source "NoteboardCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->writeItemData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView$1;->val$str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/module/carditem/NoteboardItem;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/carditem/NoteboardItem;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView$1;->val$str:Ljava/lang/String;

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/assistant/module/carditem/NoteboardItem;->writeItem(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
