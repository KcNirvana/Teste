.class Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$6;
.super Ljava/lang/Object;
.source "CityPickerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->getListViewItemOnClickListener()Landroid/widget/AdapterView$OnItemClickListener;
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

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$6;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$6;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v3}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$3100(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->getmPositionAddOne()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 p3, p3, 0x1

    :cond_0
    if-lez p3, :cond_1

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$6;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v3}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$3200(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->getCount()I

    move-result v3

    if-le p3, v3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$6;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-virtual {v3, p3}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->getItem(I)Lcom/miui/personalassistant/ui/model/YellowPagePickerDataEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/personalassistant/ui/model/YellowPagePickerDataEntry;->getData()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v0, v3, v4

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$6;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v3, v0}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$3300(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$6;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v3, v2}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$900(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;Ljava/lang/String;)V

    goto :goto_0
.end method
