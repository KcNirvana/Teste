.class Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$3;
.super Ljava/lang/Object;
.source "CityPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$3;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$3;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$3;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$400(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$900(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;Ljava/lang/String;)V

    return-void
.end method
