.class Lcom/miui/personalassistant/ui/widget/PaListView$3;
.super Ljava/lang/Object;
.source "PaListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/widget/PaListView;->showName(Landroid/widget/TextView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/widget/PaListView;

.field final synthetic val$stringName:Ljava/lang/String;

.field final synthetic val$tv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/widget/PaListView;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/PaListView$3;->this$0:Lcom/miui/personalassistant/ui/widget/PaListView;

    iput-object p2, p0, Lcom/miui/personalassistant/ui/widget/PaListView$3;->val$tv:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/miui/personalassistant/ui/widget/PaListView$3;->val$stringName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/PaListView$3;->val$tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/PaListView$3;->val$stringName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
