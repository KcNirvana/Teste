.class Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$1;
.super Landroid/os/Handler;
.source "CityPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;
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

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$200(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Lcom/miui/personalassistant/ui/widget/AnimatedImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/ui/widget/AnimatedImageView;->setVisibility(I)V

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$300(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1b0b02c6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$400(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$500(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$600(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Lcom/miui/personalassistant/ui/CityPickerLocatedCityItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/ui/CityPickerLocatedCityItem;->setSelectable(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$500(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x1b0b02ca

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
