.class Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment$2;
.super Ljava/lang/Object;
.source "PersonalAssistantPickerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->getListViewItemOnClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment$2;->this$0:Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment$2;->this$0:Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;

    invoke-virtual {v2, p3}, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->getItem(I)Lcom/miui/personalassistant/ui/model/YellowPagePickerDataEntry;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "result_backend_data"

    invoke-virtual {v1}, Lcom/miui/personalassistant/ui/model/YellowPagePickerDataEntry;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "result_presentation"

    invoke-virtual {v1}, Lcom/miui/personalassistant/ui/model/YellowPagePickerDataEntry;->getPresentation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment$2;->this$0:Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;

    iget-object v2, v2, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->mActivity:Landroid/app/Activity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v2, p0, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment$2;->this$0:Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;

    iget-object v2, v2, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    return-void
.end method
