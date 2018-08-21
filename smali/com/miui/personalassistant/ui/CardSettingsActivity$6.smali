.class Lcom/miui/personalassistant/ui/CardSettingsActivity$6;
.super Ljava/lang/Object;
.source "CardSettingsActivity.java"

# interfaces
.implements Lmiui/widget/DynamicListView$RearrangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/CardSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/CardSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$6;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnd()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "CardSettingsActivity"

    const-string/jumbo v1, "onDragEnd"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$6;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$1100(Lcom/miui/personalassistant/ui/CardSettingsActivity;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$6;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v0, v2}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$002(Lcom/miui/personalassistant/ui/CardSettingsActivity;Z)Z

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$6;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$6;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$900(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Lmiui/widget/DynamicListView;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$1000(Lcom/miui/personalassistant/ui/CardSettingsActivity;Lmiui/widget/DynamicListView;Z)V

    return-void
.end method

.method public onDragStart()V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "CardSettingsActivity"

    const-string/jumbo v1, "onDragStart"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$6;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v0, v2}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$002(Lcom/miui/personalassistant/ui/CardSettingsActivity;Z)Z

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$6;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$6;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$900(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Lmiui/widget/DynamicListView;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$1000(Lcom/miui/personalassistant/ui/CardSettingsActivity;Lmiui/widget/DynamicListView;Z)V

    return-void
.end method

.method public onOrderChanged(II)V
    .locals 4

    const-string/jumbo v1, "CardSettingsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onOrderChanged from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$6;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$100(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$6;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$100(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$6;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$100(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/model/SettingItem;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$6;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$100(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$6;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$100(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$6;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$100(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
