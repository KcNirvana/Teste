.class Lcom/miui/personalassistant/ui/CardSettingsActivity$1;
.super Ljava/lang/Object;
.source "CardSettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/CardSettingsActivity;->initView()V
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

    iput-object p1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$1;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$1;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$000(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$1;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$1;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$100(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/model/SettingItem;

    invoke-static {v1, v0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$200(Lcom/miui/personalassistant/ui/CardSettingsActivity;Lcom/miui/personalassistant/model/SettingItem;)V

    :cond_0
    return-void
.end method
