.class Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable$1;
.super Ljava/lang/Object;
.source "PaListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable;

.field final synthetic val$stringName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable$1;->this$1:Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable;

    iput-object p2, p0, Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable$1;->val$stringName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable$1;->this$1:Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable;->access$900(Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable$1;->this$1:Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable;->access$1000(Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable$1;->this$1:Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable;->access$900(Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable$1;->val$stringName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
