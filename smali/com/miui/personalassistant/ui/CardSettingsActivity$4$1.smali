.class Lcom/miui/personalassistant/ui/CardSettingsActivity$4$1;
.super Ljava/lang/Object;
.source "CardSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/CardSettingsActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/personalassistant/ui/CardSettingsActivity$4;

.field final synthetic val$entries:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/CardSettingsActivity$4;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$4$1;->this$1:Lcom/miui/personalassistant/ui/CardSettingsActivity$4;

    iput-object p2, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$4$1;->val$entries:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$4$1;->val$entries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$4$1;->val$entries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$4$1;->this$1:Lcom/miui/personalassistant/ui/CardSettingsActivity$4;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/CardSettingsActivity$4;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$100(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$4$1;->this$1:Lcom/miui/personalassistant/ui/CardSettingsActivity$4;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/CardSettingsActivity$4;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$100(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$4$1;->val$entries:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$4$1;->this$1:Lcom/miui/personalassistant/ui/CardSettingsActivity$4;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/CardSettingsActivity$4;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$300(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$4$1;->this$1:Lcom/miui/personalassistant/ui/CardSettingsActivity$4;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/CardSettingsActivity$4;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$300(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$4$1;->val$entries:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$4$1;->this$1:Lcom/miui/personalassistant/ui/CardSettingsActivity$4;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/CardSettingsActivity$4;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$500(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$4$1;->this$1:Lcom/miui/personalassistant/ui/CardSettingsActivity$4;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/CardSettingsActivity$4;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$500(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$4$1;->val$entries:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$4$1;->this$1:Lcom/miui/personalassistant/ui/CardSettingsActivity$4;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/CardSettingsActivity$4;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$600(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->dataSetChanged()V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$4$1;->this$1:Lcom/miui/personalassistant/ui/CardSettingsActivity$4;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/CardSettingsActivity$4;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$700(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->dataSetChanged()V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$4$1;->this$1:Lcom/miui/personalassistant/ui/CardSettingsActivity$4;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/CardSettingsActivity$4;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$300(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$4$1;->this$1:Lcom/miui/personalassistant/ui/CardSettingsActivity$4;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/CardSettingsActivity$4;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$300(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$4$1;->this$1:Lcom/miui/personalassistant/ui/CardSettingsActivity$4;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/CardSettingsActivity$4;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$800(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1b0b038c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$4$1;->this$1:Lcom/miui/personalassistant/ui/CardSettingsActivity$4;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/CardSettingsActivity$4;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$800(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1b0b038d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
