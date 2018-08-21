.class Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$5;
.super Ljava/lang/Object;
.source "CityPickerFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$5;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    const/16 v3, 0x8

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$5;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    iget-object v1, v1, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mCityListResult:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListResult;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$5;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$1100(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$5;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$1200(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$5;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$1300(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$5;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$600(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Lcom/miui/personalassistant/ui/CityPickerLocatedCityItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    :cond_1
    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$5;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$1400(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Lmiui/widget/AlphabetFastIndexer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lmiui/widget/AlphabetFastIndexer;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$5;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$1500(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->setmPositionAddOne(Ljava/lang/Boolean;)V

    :goto_2
    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$5;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$2000(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$5;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$2100(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->setPresentationList(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$5;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$2200(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$5;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$1600(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-ge v1, v5, :cond_4

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$5;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$1700(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$5;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v3}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$600(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Lcom/miui/personalassistant/ui/CityPickerLocatedCityItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    :cond_4
    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$5;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$1800(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Lmiui/widget/AlphabetFastIndexer;

    move-result-object v1

    invoke-virtual {v1, v2}, Lmiui/widget/AlphabetFastIndexer;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$5;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$1900(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->setmPositionAddOne(Ljava/lang/Boolean;)V

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
