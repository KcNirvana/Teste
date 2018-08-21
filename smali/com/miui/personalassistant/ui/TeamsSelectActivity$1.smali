.class Lcom/miui/personalassistant/ui/TeamsSelectActivity$1;
.super Ljava/lang/Object;
.source "TeamsSelectActivity.java"

# interfaces
.implements Lcom/miui/personalassistant/request/core/IDataStatusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/TeamsSelectActivity;->updateData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$1;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheGot(Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0x8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$1;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$000(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$1;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v0, p1}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$100(Lcom/miui/personalassistant/ui/TeamsSelectActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$1;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$200(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$1;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$300(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$1;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$400(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$1;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$200(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$1;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$000(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDataStatusChanged(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$1;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$000(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$1;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$300(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$1;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$300(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$1;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v0, p1}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$100(Lcom/miui/personalassistant/ui/TeamsSelectActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$1;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$200(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$1;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$000(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$1;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$400(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$1;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$000(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
